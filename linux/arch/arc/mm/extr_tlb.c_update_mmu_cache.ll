; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@PG_dc_clean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @PAGE_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pte_val(i32 %15)
  %17 = load i64, i64* @PAGE_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pte_pfn(i32 %20)
  %22 = call %struct.page* @pfn_to_page(i32 %21)
  store %struct.page* %22, %struct.page** %9, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @create_tlb(%struct.vm_area_struct* %23, i64 %24, i32* %25)
  %27 = load %struct.page*, %struct.page** %9, align 8
  %28 = call %struct.page* @ZERO_PAGE(i32 0)
  %29 = icmp eq %struct.page* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %69

31:                                               ; preds = %3
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VM_EXEC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @addr_not_cache_congruent(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38, %31
  %44 = load i32, i32* @PG_dc_clean, align 4
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = call i32 @test_and_set_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @__flush_dcache_page(i64 %54, i64 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VM_EXEC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @__inv_icache_page(i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %53
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %30, %68, %38
  ret void
}

declare dso_local i64 @pte_val(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @create_tlb(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local i64 @addr_not_cache_congruent(i64, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(i64, i64) #1

declare dso_local i32 @__inv_icache_page(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
