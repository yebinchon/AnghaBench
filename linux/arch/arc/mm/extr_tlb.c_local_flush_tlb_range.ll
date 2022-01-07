; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@MM_CTXT_NO_ASID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub i64 %10, %11
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = mul nsw i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = icmp uge i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @local_flush_tlb_mm(i32 %23)
  br label %61

25:                                               ; preds = %3
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @asid_mm(i32 %33, i32 %34)
  %36 = load i64, i64* @MM_CTXT_NO_ASID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @hw_pid(i32 %47, i32 %48)
  %50 = or i64 %44, %49
  %51 = call i32 @tlb_entry_erase(i64 %50)
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %39

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %25
  %58 = call i32 (...) @utlb_invalidate()
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  br label %61

61:                                               ; preds = %57, %20
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_flush_tlb_mm(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @asid_mm(i32, i32) #1

declare dso_local i32 @tlb_entry_erase(i64) #1

declare dso_local i64 @hw_pid(i32, i32) #1

declare dso_local i32 @utlb_invalidate(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
