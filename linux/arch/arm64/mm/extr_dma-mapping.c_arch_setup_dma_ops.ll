; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dma-mapping.c_arch_setup_dma_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dma-mapping.c_arch_setup_dma_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32* }
%struct.iommu_ops = type { i32 }

@ARCH_DMA_MINALIGN = common dso_local global i32 0, align 4
@TAINT_CPU_OUT_OF_SPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s %s: ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)\00", align 1
@xen_swiotlb_dma_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_setup_dma_ops(%struct.device* %0, i32 %1, i32 %2, %struct.iommu_ops* %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.iommu_ops* %3, %struct.iommu_ops** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call i32 (...) @cache_line_size_of_cpu()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @ARCH_DMA_MINALIGN, align 4
  %18 = icmp sgt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ false, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @TAINT_CPU_OUT_OF_SPEC, align 4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_driver_string(%struct.device* %23)
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_name(%struct.device* %25)
  %27 = load i32, i32* @ARCH_DMA_MINALIGN, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @WARN_TAINT(i32 %21, i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.iommu_ops*, %struct.iommu_ops** %9, align 8
  %34 = icmp ne %struct.iommu_ops* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @iommu_setup_dma_ops(%struct.device* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %19
  ret void
}

declare dso_local i32 @cache_line_size_of_cpu(...) #1

declare dso_local i32 @WARN_TAINT(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_driver_string(%struct.device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @iommu_setup_dma_ops(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
