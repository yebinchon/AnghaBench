; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_module_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@nx_huge_pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pte_list_desc\00", align 1
@SLAB_ACCOUNT = common dso_local global i32 0, align 4
@pte_list_desc_cache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"kvm_mmu_page_header\00", align 1
@mmu_page_header_cache = common dso_local global i8* null, align 8
@kvm_total_used_mmu_pages = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mmu_shrinker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mmu_module_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ENOMEM, align 4
  %4 = sub nsw i32 0, %3
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @nx_huge_pages, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 (...) @get_nx_auto_mode()
  %9 = call i32 @__set_nx_huge_pages(i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 @BUILD_BUG_ON(i32 0)
  %12 = call i32 @BUILD_BUG_ON(i32 0)
  %13 = call i32 @BUILD_BUG_ON(i32 0)
  %14 = call i32 (...) @kvm_mmu_reset_all_pte_masks()
  %15 = call i32 (...) @kvm_set_mmio_spte_mask()
  %16 = load i32, i32* @SLAB_ACCOUNT, align 4
  %17 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %16, i32* null)
  store i8* %17, i8** @pte_list_desc_cache, align 8
  %18 = load i8*, i8** @pte_list_desc_cache, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %38

21:                                               ; preds = %10
  %22 = load i32, i32* @SLAB_ACCOUNT, align 4
  %23 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 %22, i32* null)
  store i8* %23, i8** @mmu_page_header_cache, align 8
  %24 = load i8*, i8** @mmu_page_header_cache, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %38

27:                                               ; preds = %21
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @percpu_counter_init(i32* @kvm_total_used_mmu_pages, i32 0, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %38

32:                                               ; preds = %27
  %33 = call i32 @register_shrinker(i32* @mmu_shrinker)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %41

38:                                               ; preds = %36, %31, %26, %20
  %39 = call i32 (...) @mmu_destroy_caches()
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @__set_nx_huge_pages(i32) #1

declare dso_local i32 @get_nx_auto_mode(...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @kvm_mmu_reset_all_pte_masks(...) #1

declare dso_local i32 @kvm_set_mmio_spte_mask(...) #1

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i32 @register_shrinker(i32*) #1

declare dso_local i32 @mmu_destroy_caches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
