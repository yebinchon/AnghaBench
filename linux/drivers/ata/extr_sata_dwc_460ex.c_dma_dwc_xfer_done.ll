; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_dma_dwc_xfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_dma_dwc_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_dwc_device = type { i64 }
%struct.ata_host = type { i32, %struct.ata_port** }
%struct.ata_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sata_dwc_device_port = type { i32, i64* }

@SATA_DWC_DMA_PENDING_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"DMA not pending tag=0x%02x pending=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dma_dwc_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_dwc_xfer_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sata_dwc_device*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.sata_dwc_device_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.sata_dwc_device*
  store %struct.sata_dwc_device* %11, %struct.sata_dwc_device** %4, align 8
  %12 = load %struct.sata_dwc_device*, %struct.sata_dwc_device** %4, align 8
  %13 = getelementptr inbounds %struct.sata_dwc_device, %struct.sata_dwc_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ata_host*
  store %struct.ata_host* %15, %struct.ata_host** %5, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %17 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %21 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %20, i32 0, i32 1
  %22 = load %struct.ata_port**, %struct.ata_port*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %22, i64 %24
  %26 = load %struct.ata_port*, %struct.ata_port** %25, align 8
  store %struct.ata_port* %26, %struct.ata_port** %6, align 8
  %27 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %28 = call %struct.sata_dwc_device_port* @HSDEVP_FROM_AP(%struct.ata_port* %27)
  store %struct.sata_dwc_device_port* %28, %struct.sata_dwc_device_port** %7, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.sata_dwc_device_port*, %struct.sata_dwc_device_port** %7, align 8
  %34 = getelementptr inbounds %struct.sata_dwc_device_port, %struct.sata_dwc_device_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sata_dwc_device_port*, %struct.sata_dwc_device_port** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @sata_dwc_clear_dmacr(%struct.sata_dwc_device_port* %37, i64 %38)
  %40 = load %struct.sata_dwc_device_port*, %struct.sata_dwc_device_port** %7, align 8
  %41 = getelementptr inbounds %struct.sata_dwc_device_port, %struct.sata_dwc_device_port* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SATA_DWC_DMA_PENDING_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %1
  %49 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.sata_dwc_device_port*, %struct.sata_dwc_device_port** %7, align 8
  %54 = getelementptr inbounds %struct.sata_dwc_device_port, %struct.sata_dwc_device_port* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %58)
  br label %60

60:                                               ; preds = %48, %1
  %61 = load %struct.sata_dwc_device_port*, %struct.sata_dwc_device_port** %7, align 8
  %62 = getelementptr inbounds %struct.sata_dwc_device_port, %struct.sata_dwc_device_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = srem i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %68 = call i32 @sata_dwc_dma_xfer_complete(%struct.ata_port* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %71 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %70, i32 0, i32 0
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sata_dwc_device_port* @HSDEVP_FROM_AP(%struct.ata_port*) #1

declare dso_local i32 @sata_dwc_clear_dmacr(%struct.sata_dwc_device_port*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @sata_dwc_dma_xfer_complete(%struct.ata_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
