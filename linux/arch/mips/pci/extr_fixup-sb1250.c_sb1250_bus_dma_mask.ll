; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-sb1250.c_sb1250_bus_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-sb1250.c_sb1250_bus_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sb1250_bus_dma_mask_exclude = type { i32, i64, i64 }

@PCI_VENDOR_ID_SIBYTE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_BCM1250_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"not disabling DAC for device\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"not disabling DAC for [bus %02x-%02x]\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"disabling DAC for device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @sb1250_bus_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1250_bus_dma_mask(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sb1250_bus_dma_mask_exclude*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sb1250_bus_dma_mask_exclude*
  store %struct.sb1250_bus_dma_mask_exclude* %9, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %10 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %11 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %21 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %31 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br label %34

34:                                               ; preds = %24, %14
  %35 = phi i1 [ false, %14 ], [ %33, %24 ]
  br label %36

36:                                               ; preds = %34, %2
  %37 = phi i1 [ false, %2 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %40 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_VENDOR_ID_SIBYTE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI_DEVICE_ID_BCM1250_HT, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi i1 [ false, %43 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %36
  %58 = phi i1 [ false, %36 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 2
  %65 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %103

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %76 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i64 @pci_bus_max_busnr(%struct.TYPE_5__* %79)
  %81 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %82 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %84 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 2
  %87 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %88 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sb1250_bus_dma_mask_exclude*, %struct.sb1250_bus_dma_mask_exclude** %5, align 8
  %91 = getelementptr inbounds %struct.sb1250_bus_dma_mask_exclude, %struct.sb1250_bus_dma_mask_exclude* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %89, i64 %92)
  br label %102

94:                                               ; preds = %66
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 2
  %97 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %98 = call i32 @DMA_BIT_MASK(i32 32)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %94, %69
  br label %103

103:                                              ; preds = %102, %62
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @pci_bus_max_busnr(%struct.TYPE_5__*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
