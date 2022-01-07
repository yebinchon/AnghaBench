; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_bypass_supported_pSeriesLP.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_bypass_supported_pSeriesLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { %struct.device_node* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"node is %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ibm,dma-window\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @iommu_bypass_supported_pSeriesLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_bypass_supported_pSeriesLP(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %9)
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  store i32* null, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @DMA_BIT_MASK(i32 64)
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i32 @dev_dbg(%struct.TYPE_5__* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.device_node* %18)
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  br label %21

21:                                               ; preds = %44, %15
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = call %struct.TYPE_6__* @PCI_DN(%struct.device_node* %25)
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call %struct.TYPE_6__* @PCI_DN(%struct.device_node* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %24, %21
  %36 = phi i1 [ false, %24 ], [ false, %21 ], [ %34, %28 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = call i32* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %48

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load %struct.device_node*, %struct.device_node** %46, align 8
  store %struct.device_node* %47, %struct.device_node** %7, align 8
  br label %21

48:                                               ; preds = %42, %35
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = icmp ne %struct.device_node* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.device_node*, %struct.device_node** %7, align 8
  %53 = call %struct.TYPE_6__* @PCI_DN(%struct.device_node* %52)
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.device_node*, %struct.device_node** %7, align 8
  %58 = call i32 @enable_ddw(%struct.pci_dev* %56, %struct.device_node* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %72

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %51, %48
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, %struct.device_node*) #1

declare dso_local %struct.TYPE_6__* @PCI_DN(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @enable_ddw(%struct.pci_dev*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
