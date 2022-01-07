; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_calgary_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_calgary_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64*, i32, i64)* @calgary_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @calgary_alloc_coherent(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iommu_table*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.iommu_table* @find_iommu_table(%struct.device* %17)
  store %struct.iommu_table* %18, %struct.iommu_table** %16, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @get_order(i64 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @__get_free_pages(i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %5
  br label %58

34:                                               ; preds = %5
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @memset(i8* %35, i32 0, i64 %36)
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load %struct.iommu_table*, %struct.iommu_table** %16, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %43 = call i64 @iommu_alloc(%struct.device* %38, %struct.iommu_table* %39, i8* %40, i32 %41, i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %52

48:                                               ; preds = %34
  %49 = load i64, i64* %13, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %12, align 8
  store i8* %51, i8** %6, align 8
  br label %60

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @get_order(i64 %55)
  %57 = call i32 @free_pages(i64 %54, i32 %56)
  store i8* null, i8** %12, align 8
  br label %58

58:                                               ; preds = %52, %33
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %58, %48
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

declare dso_local %struct.iommu_table* @find_iommu_table(%struct.device*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @iommu_alloc(%struct.device*, %struct.iommu_table*, i8*, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
