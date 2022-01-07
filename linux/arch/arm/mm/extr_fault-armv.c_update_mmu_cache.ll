; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault-armv.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault-armv.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
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
  br label %60

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.page* @pfn_to_page(i64 %18)
  store %struct.page* %19, %struct.page** %9, align 8
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = call %struct.page* @ZERO_PAGE(i32 0)
  %22 = icmp eq %struct.page* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = call %struct.address_space* @page_mapping_file(%struct.page* %25)
  store %struct.address_space* %26, %struct.address_space** %8, align 8
  %27 = load i32, i32* @PG_dcache_clean, align 4
  %28 = load %struct.page*, %struct.page** %9, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load %struct.address_space*, %struct.address_space** %8, align 8
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = call i32 @__flush_dcache_page(%struct.address_space* %33, %struct.page* %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.address_space*, %struct.address_space** %8, align 8
  %38 = icmp ne %struct.address_space* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = call i64 (...) @cache_is_vivt()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.address_space*, %struct.address_space** %8, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @make_coherent(%struct.address_space* %43, %struct.vm_area_struct* %44, i64 %45, i32* %46, i64 %47)
  br label %59

49:                                               ; preds = %39
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VM_EXEC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 (...) @__flush_icache_all()
  br label %58

58:                                               ; preds = %56, %49
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %16, %23, %59, %36
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i32 @make_coherent(%struct.address_space*, %struct.vm_area_struct*, i64, i32*, i64) #1

declare dso_local i32 @__flush_icache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
