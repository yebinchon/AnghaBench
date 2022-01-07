; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@MM_TSB_BASE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MM_TSB_HUGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@REAL_HPAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* @tlb_type, align 8
  %15 = load i64, i64* @hypervisor, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @pte_pfn(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @pfn_valid(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @flush_dcache(i64 %24)
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  store %struct.mm_struct* %30, %struct.mm_struct** %7, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @pte_accessible(%struct.mm_struct* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %58

36:                                               ; preds = %27
  %37 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  store i32 0, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %46 = load i32, i32* @MM_TSB_BASE, align 4
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @pte_val(i32 %49)
  %51 = call i32 @__update_mmu_tsb_insert(%struct.mm_struct* %45, i32 %46, i64 %47, i64 %48, i64 %50)
  br label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %52, %35
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i32 @flush_dcache(i64) #1

declare dso_local i32 @pte_accessible(%struct.mm_struct*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__update_mmu_tsb_insert(%struct.mm_struct*, i32, i64, i64, i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
