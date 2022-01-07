; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_cache.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_cache.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@PG_arch_1 = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@DCACHE_ALIAS_MASK = common dso_local global i64 0, align 8
@TLBTEMP_BASE_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @pte_pfn(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @pfn_valid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %53

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.page* @pfn_to_page(i64 %18)
  store %struct.page* %19, %struct.page** %8, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @flush_tlb_page(%struct.vm_area_struct* %20, i64 %21)
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = call i32 @PageReserved(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @PG_arch_1, align 4
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %26
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VM_EXEC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = call i64 @kmap_atomic(%struct.page* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @__flush_dcache_page(i64 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @__invalidate_icache_page(i64 %44)
  %46 = load i32, i32* @PG_arch_1, align 4
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @kunmap_atomic(i8* %51)
  br label %53

53:                                               ; preds = %16, %39, %32, %26, %17
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @flush_tlb_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @PageReserved(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @kmap_atomic(%struct.page*) #1

declare dso_local i32 @__flush_dcache_page(i64) #1

declare dso_local i32 @__invalidate_icache_page(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
