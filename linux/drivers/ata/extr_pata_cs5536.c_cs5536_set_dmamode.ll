; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cs5536.c_cs5536_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cs5536.c_cs5536_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@cs5536_set_dmamode.udma_timings = internal constant [6 x i32] [i32 194, i32 193, i32 192, i32 196, i32 197, i32 198], align 16
@cs5536_set_dmamode.mwdma_timings = internal constant [3 x i32] [i32 103, i32 33, i32 32], align 4
@IDE_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_D0_SHIFT = common dso_local global i32 0, align 4
@ETC = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@IDE_DRV_MASK = common dso_local global i32 0, align 4
@IDE_ETC_UDMA_MASK = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @cs5536_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5536_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IDE_D1_SHIFT, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IDE_D0_SHIFT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* @ETC, align 4
  %30 = call i32 @cs5536_read(%struct.pci_dev* %28, i32 %29, i32* %6)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @XFER_UDMA_0, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load i32, i32* @IDE_DRV_MASK, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @XFER_UDMA_0, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* @cs5536_set_dmamode.udma_timings, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %26
  %52 = load i32, i32* @IDE_ETC_UDMA_MASK, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @XFER_MW_DMA_0, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* @cs5536_set_dmamode.mwdma_timings, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cs5536_program_dtc(%struct.ata_device* %58, i32 %64)
  br label %66

66:                                               ; preds = %51, %34
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = load i32, i32* @ETC, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @cs5536_write(%struct.pci_dev* %67, i32 %68, i32 %69)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @cs5536_read(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cs5536_program_dtc(%struct.ata_device*, i32) #1

declare dso_local i32 @cs5536_write(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
