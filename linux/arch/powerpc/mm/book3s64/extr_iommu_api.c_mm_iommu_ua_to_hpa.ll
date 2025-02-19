; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_ua_to_hpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_ua_to_hpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_iommu_table_group_mem_t = type { i64, i64, i32, i64*, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@MM_IOMMU_TABLE_GROUP_PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mm_iommu_ua_to_hpa(%struct.mm_iommu_table_group_mem_t* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.mm_iommu_table_group_mem_t* %0, %struct.mm_iommu_table_group_mem_t** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %14 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %21 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EFAULT, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %68

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %30 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @EFAULT, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %68

36:                                               ; preds = %27
  %37 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %38 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %43 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %47 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = add i64 %44, %49
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  store i64 0, i64* %5, align 8
  br label %68

52:                                               ; preds = %36
  %53 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %6, align 8
  %54 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64* %57, i64** %11, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MM_IOMMU_TABLE_GROUP_PAGE_MASK, align 8
  %61 = and i64 %59, %60
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @PAGE_MASK, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = or i64 %61, %65
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %52, %41, %33, %24
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
