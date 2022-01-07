; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_sata_dwc_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_sata_dwc_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }
%struct.sata_dwc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SATA_DWC_DMACR_TXRXCH_CLEAR = common dso_local global i32 0, align 4
@AHB_DMA_BRST_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @sata_dwc_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_dwc_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sata_dwc_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %10 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sata_dwc_device* @HSDEV_FROM_AP(i32 %11)
  store %struct.sata_dwc_device* %12, %struct.sata_dwc_device** %7, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @sata_sff_hardreset(%struct.ata_link* %13, i32* %14, i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sata_dwc_device*, %struct.sata_dwc_device** %7, align 8
  %18 = call i32 @sata_dwc_enable_interrupts(%struct.sata_dwc_device* %17)
  %19 = load %struct.sata_dwc_device*, %struct.sata_dwc_device** %7, align 8
  %20 = getelementptr inbounds %struct.sata_dwc_device, %struct.sata_dwc_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* @SATA_DWC_DMACR_TXRXCH_CLEAR, align 4
  %24 = call i32 @sata_dwc_writel(i32* %22, i32 %23)
  %25 = load %struct.sata_dwc_device*, %struct.sata_dwc_device** %7, align 8
  %26 = getelementptr inbounds %struct.sata_dwc_device, %struct.sata_dwc_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @AHB_DMA_BRST_DFLT, align 4
  %30 = call i32 @SATA_DWC_DBTSR_MWR(i32 %29)
  %31 = load i32, i32* @AHB_DMA_BRST_DFLT, align 4
  %32 = call i32 @SATA_DWC_DBTSR_MRD(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @sata_dwc_writel(i32* %28, i32 %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.sata_dwc_device* @HSDEV_FROM_AP(i32) #1

declare dso_local i32 @sata_sff_hardreset(%struct.ata_link*, i32*, i64) #1

declare dso_local i32 @sata_dwc_enable_interrupts(%struct.sata_dwc_device*) #1

declare dso_local i32 @sata_dwc_writel(i32*, i32) #1

declare dso_local i32 @SATA_DWC_DBTSR_MWR(i32) #1

declare dso_local i32 @SATA_DWC_DBTSR_MRD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
