; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_pcie.c_xilly_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_pcie.c_xilly_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.xilly_endpoint = type { i32, i32, i32 }

@pci_hw = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pcim_enable_device() failed. Aborting.\0A\00", align 1
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Incorrect BAR configuration. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@xillyname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"pcim_iomap_regions() failed. Aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to enable MSI interrupts. Aborting.\0A\00", align 1
@xillybus_isr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to register MSI handler. Aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to set DMA mask. Aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @xilly_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.xilly_endpoint*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = call %struct.xilly_endpoint* @xillybus_init_endpoint(%struct.pci_dev* %8, i32* %10, i32* @pci_hw)
  store %struct.xilly_endpoint* %11, %struct.xilly_endpoint** %6, align 8
  %12 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %13 = icmp ne %struct.xilly_endpoint* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %124

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %20 = call i32 @pci_set_drvdata(%struct.pci_dev* %18, %struct.xilly_endpoint* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pcim_enable_device(%struct.pci_dev* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %124

31:                                               ; preds = %17
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %34 = call i32 @pci_disable_link_state(%struct.pci_dev* %32, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_resource_flags(%struct.pci_dev* %35, i32 0)
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %42 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %124

47:                                               ; preds = %31
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @xillyname, align 4
  %50 = call i32 @pcim_iomap_regions(%struct.pci_dev* %48, i32 1, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %55 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %124

59:                                               ; preds = %47
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32* @pcim_iomap_table(%struct.pci_dev* %60)
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %65 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_set_master(%struct.pci_dev* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i64 @pci_enable_msi(%struct.pci_dev* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  %72 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %73 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %124

78:                                               ; preds = %59
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @xillybus_isr, align 4
  %85 = load i32, i32* @xillyname, align 4
  %86 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %87 = call i32 @devm_request_irq(i32* %80, i32 %83, i32 %84, i32 0, i32 %85, %struct.xilly_endpoint* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %124

97:                                               ; preds = %78
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = call i32 @DMA_BIT_MASK(i32 32)
  %100 = call i32 @pci_set_dma_mask(%struct.pci_dev* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %104 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  br label %121

105:                                              ; preds = %97
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @DMA_BIT_MASK(i32 64)
  %108 = call i32 @pci_set_dma_mask(%struct.pci_dev* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %112 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %120

113:                                              ; preds = %105
  %114 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %115 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %124

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %102
  %122 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %123 = call i32 @xillybus_endpoint_discovery(%struct.xilly_endpoint* %122)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %113, %90, %71, %53, %40, %25, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.xilly_endpoint* @xillybus_init_endpoint(%struct.pci_dev*, i32*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.xilly_endpoint*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_disable_link_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.xilly_endpoint*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @xillybus_endpoint_discovery(%struct.xilly_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
