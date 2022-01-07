; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_init_early_pSeries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_init_early_pSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@of_chosen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"linux,iommu-off\00", align 1
@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@pci_dma_bus_setup_pSeriesLP = common dso_local global i32 0, align 4
@pseries_pci_controller_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pci_dma_dev_setup_pSeriesLP = common dso_local global i32 0, align 4
@disable_ddw = common dso_local global i32 0, align 4
@iommu_bypass_supported_pSeriesLP = common dso_local global i32 0, align 4
@pci_dma_bus_setup_pSeries = common dso_local global i32 0, align 4
@pci_dma_dev_setup_pSeries = common dso_local global i32 0, align 4
@iommu_reconfig_nb = common dso_local global i32 0, align 4
@iommu_mem_nb = common dso_local global i32 0, align 4
@dma_iommu_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_init_early_pSeries() #0 {
  %1 = load i64, i64* @of_chosen, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i64, i64* @of_chosen, align 8
  %5 = call i64 @of_get_property(i64 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %30

8:                                                ; preds = %3, %0
  %9 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %10 = call i64 @firmware_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* @pci_dma_bus_setup_pSeriesLP, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pseries_pci_controller_ops, i32 0, i32 1), align 4
  %14 = load i32, i32* @pci_dma_dev_setup_pSeriesLP, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pseries_pci_controller_ops, i32 0, i32 0), align 4
  %15 = load i32, i32* @disable_ddw, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @iommu_bypass_supported_pSeriesLP, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pseries_pci_controller_ops, i32 0, i32 2), align 4
  br label %19

19:                                               ; preds = %17, %12
  br label %23

20:                                               ; preds = %8
  %21 = load i32, i32* @pci_dma_bus_setup_pSeries, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pseries_pci_controller_ops, i32 0, i32 1), align 4
  %22 = load i32, i32* @pci_dma_dev_setup_pSeries, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pseries_pci_controller_ops, i32 0, i32 0), align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = call i32 @of_reconfig_notifier_register(i32* @iommu_reconfig_nb)
  %25 = call i32 @register_memory_notifier(i32* @iommu_mem_nb)
  %26 = call i32 (...) @is_secure_guest()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 @set_pci_dma_ops(i32* @dma_iommu_ops)
  br label %30

30:                                               ; preds = %7, %28, %23
  ret void
}

declare dso_local i64 @of_get_property(i64, i8*, i32*) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @of_reconfig_notifier_register(i32*) #1

declare dso_local i32 @register_memory_notifier(i32*) #1

declare dso_local i32 @is_secure_guest(...) #1

declare dso_local i32 @set_pci_dma_ops(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
