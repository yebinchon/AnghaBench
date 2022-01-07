; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_dma_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_dma_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_ops = type { i32 }

@DEV_DMA_NOT_SUPPORTED = common dso_local global i32 0, align 4
@dma_dummy_ops = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@DEV_DMA_COHERENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dma_configure(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DEV_DMA_NOT_SUPPORTED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @set_dma_ops(%struct.device* %13, i32* @dma_dummy_ops)
  store i32 0, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @iort_dma_setup(%struct.device* %16, i32* %7, i32* %8)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.iommu_ops* @iort_iommu_configure(%struct.device* %18)
  store %struct.iommu_ops* %19, %struct.iommu_ops** %6, align 8
  %20 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %21 = call i64 @IS_ERR(%struct.iommu_ops* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.iommu_ops* %24)
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %23, %15
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DEV_DMA_COHERENT, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @arch_setup_dma_ops(%struct.device* %33, i32 %34, i32 %35, %struct.iommu_ops* %36, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %29, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @set_dma_ops(%struct.device*, i32*) #1

declare dso_local i32 @iort_dma_setup(%struct.device*, i32*, i32*) #1

declare dso_local %struct.iommu_ops* @iort_iommu_configure(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_ops*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_ops*) #1

declare dso_local i32 @arch_setup_dma_ops(%struct.device*, i32, i32, %struct.iommu_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
