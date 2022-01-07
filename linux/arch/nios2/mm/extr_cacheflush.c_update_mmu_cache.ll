; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.address_space = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.address_space*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @pte_pfn(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @reload_tlb_page(%struct.vm_area_struct* %15, i64 %16, i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @pfn_valid(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %60

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = call %struct.page* @pfn_to_page(i64 %24)
  store %struct.page* %25, %struct.page** %9, align 8
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = call %struct.page* @ZERO_PAGE(i32 0)
  %28 = icmp eq %struct.page* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %60

30:                                               ; preds = %23
  %31 = load %struct.page*, %struct.page** %9, align 8
  %32 = call %struct.address_space* @page_mapping_file(%struct.page* %31)
  store %struct.address_space* %32, %struct.address_space** %10, align 8
  %33 = load i32, i32* @PG_dcache_clean, align 4
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i32 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load %struct.address_space*, %struct.address_space** %10, align 8
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call i32 @__flush_dcache_page(%struct.address_space* %39, %struct.page* %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.address_space*, %struct.address_space** %10, align 8
  %44 = icmp ne %struct.address_space* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.address_space*, %struct.address_space** %10, align 8
  %47 = load %struct.page*, %struct.page** %9, align 8
  %48 = call i32 @flush_aliases(%struct.address_space* %46, %struct.page* %47)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VM_EXEC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i32 @flush_icache_page(%struct.vm_area_struct* %56, %struct.page* %57)
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %22, %29, %59, %42
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @reload_tlb_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @flush_aliases(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @flush_icache_page(%struct.vm_area_struct*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
