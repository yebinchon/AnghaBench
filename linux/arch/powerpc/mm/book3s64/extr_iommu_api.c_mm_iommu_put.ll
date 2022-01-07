; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_put.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mm_iommu_table_group_mem_t = type { i64, i64, i64, i32 }

@mem_list_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@MM_IOMMU_TABLE_INVALID_HPA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mm_iommu_put(%struct.mm_struct* %0, %struct.mm_iommu_table_group_mem_t* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.mm_iommu_table_group_mem_t* %1, %struct.mm_iommu_table_group_mem_t** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = call i32 @mutex_lock(i32* @mem_list_mutex)
  %8 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %9 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* @ENOENT, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %5, align 8
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %17 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %21 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %50

25:                                               ; preds = %15
  %26 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %27 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %26, i32 0, i32 3
  %28 = call i32 @atomic_cmpxchg(i32* %27, i32 1, i32 0)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %32 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* @EBUSY, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %50

37:                                               ; preds = %25
  %38 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %39 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MM_IOMMU_TABLE_INVALID_HPA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %45 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %4, align 8
  %49 = call i32 @mm_iommu_release(%struct.mm_iommu_table_group_mem_t* %48)
  br label %50

50:                                               ; preds = %47, %30, %24, %12
  %51 = call i32 @mutex_unlock(i32* @mem_list_mutex)
  %52 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @account_locked_vm(%struct.mm_struct* %52, i64 %53, i32 0)
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @mm_iommu_release(%struct.mm_iommu_table_group_mem_t*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @account_locked_vm(%struct.mm_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
