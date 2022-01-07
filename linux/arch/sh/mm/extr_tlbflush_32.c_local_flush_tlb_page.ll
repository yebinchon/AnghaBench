; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbflush_32.c_local_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbflush_32.c_local_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@MMU_NO_ASID = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %5, align 4
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @cpu_context(i32 %15, i32 %18)
  %20 = load i64, i64* @NO_CONTEXT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %14
  %23 = load i64, i64* @MMU_NO_ASID, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @cpu_asid(i32 %24, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* @PAGE_MASK, align 8
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = call i64 (...) @get_asid()
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @set_asid(i64 %43)
  br label %45

45:                                               ; preds = %41, %22
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @local_flush_tlb_one(i64 %46, i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @MMU_NO_ASID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @set_asid(i64 %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  br label %58

58:                                               ; preds = %55, %14, %2
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_context(i32, i32) #1

declare dso_local i64 @cpu_asid(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @set_asid(i64) #1

declare dso_local i32 @local_flush_tlb_one(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
