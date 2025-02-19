; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @dma_iommu_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dma_iommu_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = call i64 @dma_iommu_alloc_bypass(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i64, i64* %11, align 8
  %21 = call i8* @dma_direct_alloc(%struct.device* %16, i64 %17, i32* %18, i32 %19, i64 %20)
  store i8* %21, i8** %6, align 8
  br label %35

22:                                               ; preds = %5
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @get_iommu_table_base(%struct.device* %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @dev_to_node(%struct.device* %32)
  %34 = call i8* @iommu_alloc_coherent(%struct.device* %23, i32 %25, i64 %26, i32* %27, i32 %30, i32 %31, i32 %33)
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %22, %15
  %36 = load i8*, i8** %6, align 8
  ret i8* %36
}

declare dso_local i64 @dma_iommu_alloc_bypass(%struct.device*) #1

declare dso_local i8* @dma_direct_alloc(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i8* @iommu_alloc_coherent(%struct.device*, i32, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @get_iommu_table_base(%struct.device*) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
