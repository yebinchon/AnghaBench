; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i64 }
%struct.page = type { i32 }

@IOMAP_MAX_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"iommu_alloc_consistent size too large: 0x%lx\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iommu_alloc_coherent(%struct.device* %0, %struct.iommu_table* %1, i64 %2, i64* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.iommu_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @get_order(i64 %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* @IOMAP_MAX_ORDER, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i8* null, i8** %8, align 8
  br label %84

33:                                               ; preds = %7
  %34 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %35 = icmp ne %struct.iommu_table* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i8* null, i8** %8, align 8
  br label %84

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call %struct.page* @alloc_pages_node(i32 %38, i32 %39, i32 %40)
  store %struct.page* %41, %struct.page** %21, align 8
  %42 = load %struct.page*, %struct.page** %21, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i8* null, i8** %8, align 8
  br label %84

45:                                               ; preds = %37
  %46 = load %struct.page*, %struct.page** %21, align 8
  %47 = call i8* @page_address(%struct.page* %46)
  store i8* %47, i8** %16, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @memset(i8* %48, i32 0, i64 %49)
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %53 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = lshr i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %19, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %59 = call i32 @get_iommu_order(i64 %57, %struct.iommu_table* %58)
  store i32 %59, i32* %20, align 4
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %67 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = lshr i64 %65, %68
  %70 = load i32, i32* %20, align 4
  %71 = call i64 @iommu_alloc(%struct.device* %60, %struct.iommu_table* %61, i8* %62, i32 %63, i32 %64, i64 %69, i32 %70, i32 0)
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %45
  %76 = load i8*, i8** %16, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @free_pages(i64 %77, i32 %78)
  store i8* null, i8** %8, align 8
  br label %84

80:                                               ; preds = %45
  %81 = load i64, i64* %17, align 8
  %82 = load i64*, i64** %12, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i8*, i8** %16, align 8
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %80, %75, %44, %36, %29
  %85 = load i8*, i8** %8, align 8
  ret i8* %85
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @get_iommu_order(i64, %struct.iommu_table*) #1

declare dso_local i64 @iommu_alloc(%struct.device*, %struct.iommu_table*, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
