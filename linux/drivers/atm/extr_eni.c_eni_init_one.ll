; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_eni_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_eni_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { %struct.eni_dev* }
%struct.eni_dev = type { %struct.atm_dev*, i32, %struct.pci_dev*, %struct.eni_zero }
%struct.pci_dev = type { i32 }
%struct.eni_zero = type { i32, i32 }
%struct.pci_device_id = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENI_ZEROES_SIZE = common dso_local global i32 0, align 4
@DEV_LABEL = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@eni_boards = common dso_local global %struct.atm_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @eni_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eni_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca %struct.eni_dev*, align 8
  %7 = alloca %struct.eni_zero*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @DMA_BIT_MASK(i32 32)
  %18 = call i32 @dma_set_mask_and_coherent(i32* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %86

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.eni_dev* @kmalloc(i32 32, i32 %25)
  store %struct.eni_dev* %26, %struct.eni_dev** %6, align 8
  %27 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %28 = icmp ne %struct.eni_dev* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %108

30:                                               ; preds = %22
  %31 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %32 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %31, i32 0, i32 3
  store %struct.eni_zero* %32, %struct.eni_zero** %7, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* @ENI_ZEROES_SIZE, align 4
  %36 = load %struct.eni_zero*, %struct.eni_zero** %7, align 8
  %37 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @dma_alloc_coherent(i32* %34, i32 %35, i32* %37, i32 %38)
  %40 = load %struct.eni_zero*, %struct.eni_zero** %7, align 8
  %41 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.eni_zero*, %struct.eni_zero** %7, align 8
  %43 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  br label %105

47:                                               ; preds = %30
  %48 = load i32, i32* @DEV_LABEL, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call %struct.atm_dev* @atm_dev_register(i32 %48, i32* %50, i32* @ops, i32 -1, i32* null)
  store %struct.atm_dev* %51, %struct.atm_dev** %5, align 8
  %52 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %53 = icmp ne %struct.atm_dev* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %94

55:                                               ; preds = %47
  %56 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %57 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %58 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %57, i32 0, i32 0
  store %struct.eni_dev* %56, %struct.eni_dev** %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %61 = call i32 @pci_set_drvdata(%struct.pci_dev* %59, %struct.atm_dev* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %64 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %63, i32 0, i32 2
  store %struct.pci_dev* %62, %struct.pci_dev** %64, align 8
  %65 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %66 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %69 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %71 = call i32 @eni_do_init(%struct.atm_dev* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  br label %91

75:                                               ; preds = %55
  %76 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %77 = call i32 @eni_start(%struct.atm_dev* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %88

81:                                               ; preds = %75
  %82 = load %struct.atm_dev*, %struct.atm_dev** @eni_boards, align 8
  %83 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %84 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %83, i32 0, i32 0
  store %struct.atm_dev* %82, %struct.atm_dev** %84, align 8
  %85 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  store %struct.atm_dev* %85, %struct.atm_dev** @eni_boards, align 8
  br label %86

86:                                               ; preds = %108, %81, %21, %13
  %87 = load i32, i32* %8, align 4
  ret i32 %87

88:                                               ; preds = %80
  %89 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %90 = call i32 @eni_do_release(%struct.atm_dev* %89)
  br label %91

91:                                               ; preds = %88, %74
  %92 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %93 = call i32 @atm_dev_deregister(%struct.atm_dev* %92)
  br label %94

94:                                               ; preds = %91, %54
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load i32, i32* @ENI_ZEROES_SIZE, align 4
  %98 = load %struct.eni_zero*, %struct.eni_zero** %7, align 8
  %99 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.eni_zero*, %struct.eni_zero** %7, align 8
  %102 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dma_free_coherent(i32* %96, i32 %97, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %94, %46
  %106 = load %struct.eni_dev*, %struct.eni_dev** %6, align 8
  %107 = call i32 @kfree(%struct.eni_dev* %106)
  br label %108

108:                                              ; preds = %105, %29
  %109 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %110 = call i32 @pci_disable_device(%struct.pci_dev* %109)
  br label %86
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.eni_dev* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local %struct.atm_dev* @atm_dev_register(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.atm_dev*) #1

declare dso_local i32 @eni_do_init(%struct.atm_dev*) #1

declare dso_local i32 @eni_start(%struct.atm_dev*) #1

declare dso_local i32 @eni_do_release(%struct.atm_dev*) #1

declare dso_local i32 @atm_dev_deregister(%struct.atm_dev*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.eni_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
