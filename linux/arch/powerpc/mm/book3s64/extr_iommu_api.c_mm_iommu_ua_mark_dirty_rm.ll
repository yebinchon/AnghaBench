; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_ua_mark_dirty_rm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_ua_mark_dirty_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mm_iommu_table_group_mem_t = type { i64, i64, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MM_IOMMU_TABLE_INVALID_HPA = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MM_IOMMU_TABLE_GROUP_PAGE_DIRTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mm_iommu_ua_mark_dirty_rm(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call %struct.mm_iommu_table_group_mem_t* @mm_iommu_lookup_rm(%struct.mm_struct* %9, i64 %10, i32 %11)
  store %struct.mm_iommu_table_group_mem_t* %12, %struct.mm_iommu_table_group_mem_t** %5, align 8
  %13 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %5, align 8
  %14 = icmp ne %struct.mm_iommu_table_group_mem_t* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %5, align 8
  %18 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MM_IOMMU_TABLE_INVALID_HPA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %49

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %5, align 8
  %26 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %6, align 8
  %31 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %5, align 8
  %32 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = bitcast i32* %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @vmalloc_to_phys(i8* %37)
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to i64*
  store i64* %40, i64** %8, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %23
  br label %49

44:                                               ; preds = %23
  %45 = load i64, i64* @MM_IOMMU_TABLE_GROUP_PAGE_DIRTY, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %43, %22, %15
  ret void
}

declare dso_local %struct.mm_iommu_table_group_mem_t* @mm_iommu_lookup_rm(%struct.mm_struct*, i64, i32) #1

declare dso_local i64 @vmalloc_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
