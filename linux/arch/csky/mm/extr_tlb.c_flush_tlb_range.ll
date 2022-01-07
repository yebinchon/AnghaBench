; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@TLB_ENTRY_SIZE_MASK = common dso_local global i64 0, align 8
@TLB_ENTRY_SIZE = common dso_local global i32 0, align 4
@ASID_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @cpu_asid(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @TLB_ENTRY_SIZE_MASK, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* @TLB_ENTRY_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @TLB_ENTRY_SIZE_MASK, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = call i64 (...) @read_mmu_entryhi()
  %29 = load i64, i64* @ASID_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %51, %3
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %36, %37
  %39 = call i32 @write_mmu_entryhi(i64 %38)
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %5, align 8
  %45 = call i32 (...) @tlb_probe()
  %46 = call i32 (...) @read_mmu_index()
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = call i32 (...) @tlb_invalid_indexed()
  br label %51

51:                                               ; preds = %49, %35
  br label %31

52:                                               ; preds = %31
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @restore_asid_inv_utlb(i64 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  ret void
}

declare dso_local i64 @cpu_asid(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_mmu_entryhi(...) #1

declare dso_local i32 @write_mmu_entryhi(i64) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_mmu_index(...) #1

declare dso_local i32 @tlb_invalid_indexed(...) #1

declare dso_local i32 @restore_asid_inv_utlb(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
