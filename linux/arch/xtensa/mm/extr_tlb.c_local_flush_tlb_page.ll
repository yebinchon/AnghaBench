; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_tlb.c_local_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_tlb.c_local_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@NO_CONTEXT = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %5, align 4
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %6, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NO_CONTEXT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %54

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = call i32 (...) @get_rasid_register()
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ASID_INSERT(i64 %35)
  %37 = call i32 @set_rasid_register(i32 %36)
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VM_EXEC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @invalidate_itlb_mapping(i64 %45)
  br label %47

47:                                               ; preds = %44, %24
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @invalidate_dtlb_mapping(i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @set_rasid_register(i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @local_irq_restore(i64 %52)
  br label %54

54:                                               ; preds = %47, %23
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @get_rasid_register(...) #1

declare dso_local i32 @set_rasid_register(i32) #1

declare dso_local i32 @ASID_INSERT(i64) #1

declare dso_local i32 @invalidate_itlb_mapping(i64) #1

declare dso_local i32 @invalidate_dtlb_mapping(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
