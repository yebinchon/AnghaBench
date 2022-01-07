; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_arch_setup_dma_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_arch_setup_dma_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iommu_ops = type { i32 }
%struct.dma_map_ops = type { i32 }

@xen_swiotlb_dma_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_setup_dma_ops(%struct.device* %0, i32 %1, i32 %2, %struct.iommu_ops* %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.iommu_ops* %3, %struct.iommu_ops** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %41

21:                                               ; preds = %5
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.iommu_ops*, %struct.iommu_ops** %9, align 8
  %26 = call i64 @arm_setup_iommu_dma_ops(%struct.device* %22, i32 %23, i32 %24, %struct.iommu_ops* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.dma_map_ops* @arm_get_iommu_dma_map_ops(i32 %29)
  store %struct.dma_map_ops* %30, %struct.dma_map_ops** %11, align 8
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.dma_map_ops* @arm_get_dma_map_ops(i32 %32)
  store %struct.dma_map_ops* %33, %struct.dma_map_ops** %11, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.dma_map_ops*, %struct.dma_map_ops** %11, align 8
  %37 = call i32 @set_dma_ops(%struct.device* %35, %struct.dma_map_ops* %36)
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %20
  ret void
}

declare dso_local i64 @arm_setup_iommu_dma_ops(%struct.device*, i32, i32, %struct.iommu_ops*) #1

declare dso_local %struct.dma_map_ops* @arm_get_iommu_dma_map_ops(i32) #1

declare dso_local %struct.dma_map_ops* @arm_get_dma_map_ops(i32) #1

declare dso_local i32 @set_dma_ops(%struct.device*, %struct.dma_map_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
