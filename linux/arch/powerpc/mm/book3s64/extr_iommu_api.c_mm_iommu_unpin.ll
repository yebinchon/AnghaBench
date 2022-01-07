; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_iommu_table_group_mem_t = type { i32*, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@MM_IOMMU_TABLE_GROUP_PAGE_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_iommu_table_group_mem_t*)* @mm_iommu_unpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_iommu_unpin(%struct.mm_iommu_table_group_mem_t* %0) #0 {
  %2 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.mm_iommu_table_group_mem_t* %0, %struct.mm_iommu_table_group_mem_t** %2, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %5 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %2, align 8
  %6 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %60, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %2, align 8
  %14 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %11
  %18 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %2, align 8
  %19 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %2, align 8
  %28 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call %struct.page* @pfn_to_page(i32 %34)
  store %struct.page* %35, %struct.page** %4, align 8
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %60

39:                                               ; preds = %26
  %40 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %2, align 8
  %41 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MM_IOMMU_TABLE_GROUP_PAGE_DIRTY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = call i32 @SetPageDirty(%struct.page* %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i32 @put_page(%struct.page* %53)
  %55 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %2, align 8
  %56 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %38, %25
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %11

63:                                               ; preds = %9, %11
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
