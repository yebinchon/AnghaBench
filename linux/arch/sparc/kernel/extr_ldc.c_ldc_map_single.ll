; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_map_single.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { %struct.ldc_iommu }
%struct.ldc_iommu = type { i32 }
%struct.ldc_trans_cookie = type { i32 }
%struct.ldc_mtable_entry = type { i32 }
%struct.cookie_state = type { i32, i32, %struct.ldc_mtable_entry*, i32, i32, %struct.ldc_trans_cookie* }

@LDC_MAP_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldc_map_single(%struct.ldc_channel* %0, i8* %1, i32 %2, %struct.ldc_trans_cookie* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_channel*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ldc_trans_cookie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ldc_mtable_entry*, align 8
  %17 = alloca %struct.cookie_state, align 8
  %18 = alloca %struct.ldc_iommu*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ldc_trans_cookie* %3, %struct.ldc_trans_cookie** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @LDC_MAP_ALL, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %93

30:                                               ; preds = %24
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @__pa(i8* %31)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = or i64 %33, %35
  %37 = and i64 %36, 7
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %93

42:                                               ; preds = %30
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @pages_in_region(i64 %43, i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %8, align 8
  %47 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %46, i32 0, i32 0
  store %struct.ldc_iommu* %47, %struct.ldc_iommu** %18, align 8
  %48 = load %struct.ldc_iommu*, %struct.ldc_iommu** %18, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.ldc_mtable_entry* @alloc_npages(%struct.ldc_iommu* %48, i64 %49)
  store %struct.ldc_mtable_entry* %50, %struct.ldc_mtable_entry** %16, align 8
  %51 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %16, align 8
  %52 = icmp ne %struct.ldc_mtable_entry* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %93

56:                                               ; preds = %42
  %57 = load %struct.ldc_iommu*, %struct.ldc_iommu** %18, align 8
  %58 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.ldc_trans_cookie*, %struct.ldc_trans_cookie** %11, align 8
  %62 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 5
  store %struct.ldc_trans_cookie* %61, %struct.ldc_trans_cookie** %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @perm_to_mte(i32 %63)
  %65 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 4
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 3
  store i32 -1, i32* %66, align 8
  %67 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %16, align 8
  %68 = load %struct.ldc_iommu*, %struct.ldc_iommu** %18, align 8
  %69 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %67, i64 %72
  %74 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 2
  store %struct.ldc_mtable_entry* %73, %struct.ldc_mtable_entry** %74, align 8
  %75 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* @PAGE_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* @PAGE_MASK, align 8
  %81 = xor i64 %80, -1
  %82 = and i64 %79, %81
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @fill_cookies(%struct.cookie_state* %17, i64 %78, i64 %82, i32 %83)
  %85 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %17, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %56, %53, %39, %27
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i64 @__pa(i8*) #1

declare dso_local i64 @pages_in_region(i64, i32) #1

declare dso_local %struct.ldc_mtable_entry* @alloc_npages(%struct.ldc_iommu*, i64) #1

declare dso_local i32 @perm_to_mte(i32) #1

declare dso_local i32 @fill_cookies(%struct.cookie_state*, i64, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
