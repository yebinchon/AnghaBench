; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_allocate_hpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_allocate_hpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_hpt_info = type { i64, i64, i32, %struct.revmap_entry* }
%struct.revmap_entry = type { i32 }
%struct.page = type { i32 }

@PPC_MIN_HPT_ORDER = common dso_local global i64 0, align 8
@PPC_MAX_HPT_ORDER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_allocate_hpt(%struct.kvm_hpt_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_hpt_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.revmap_entry*, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_hpt_info* %0, %struct.kvm_hpt_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.page* null, %struct.page** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @PPC_MIN_HPT_ORDER, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PPC_MAX_HPT_ORDER, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %101

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = sub i64 %22, %23
  %25 = shl i64 1, %24
  %26 = call %struct.page* @kvm_alloc_hpt_cma(i64 %25)
  store %struct.page* %26, %struct.page** %8, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i32 @page_to_pfn(%struct.page* %30)
  %32 = call i64 @pfn_to_kaddr(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i64, i64* %5, align 8
  %36 = shl i64 1, %35
  %37 = call i32 @memset(i8* %34, i32 0, i64 %36)
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* @__GFP_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @__GFP_NOWARN, align 4
  %48 = or i32 %46, %47
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = sub i64 %49, %50
  %52 = call i64 @__get_free_pages(i32 %48, i64 %51)
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %101

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %60, 4
  %62 = shl i64 1, %61
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @array_size(i64 %63, i32 4)
  %65 = call %struct.revmap_entry* @vmalloc(i32 %64)
  store %struct.revmap_entry* %65, %struct.revmap_entry** %9, align 8
  %66 = load %struct.revmap_entry*, %struct.revmap_entry** %9, align 8
  %67 = icmp ne %struct.revmap_entry* %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.page*, %struct.page** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = call i32 @kvm_free_hpt_cma(%struct.page* %72, i32 %77)
  br label %85

79:                                               ; preds = %68
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @free_pages(i64 %80, i64 %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %101

88:                                               ; preds = %59
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.revmap_entry*, %struct.revmap_entry** %9, align 8
  %99 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %99, i32 0, i32 3
  store %struct.revmap_entry* %98, %struct.revmap_entry** %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %88, %85, %56, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.page* @kvm_alloc_hpt_cma(i64) #1

declare dso_local i64 @pfn_to_kaddr(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local %struct.revmap_entry* @vmalloc(i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i32 @kvm_free_hpt_cma(%struct.page*, i32) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
