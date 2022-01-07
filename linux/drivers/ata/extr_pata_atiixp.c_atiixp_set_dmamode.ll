; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_atiixp.c_atiixp_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_atiixp.c_atiixp_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@atiixp_set_dmamode.mwdma_timings = internal global [5 x i32] [i32 119, i32 33, i32 32, i32 0, i32 0], align 16
@atiixp_lock = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_MODE = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_MWDMA_TIMING = common dso_local global i32 0, align 4
@XFER_MW_DMA_2 = common dso_local global i32 0, align 4
@XFER_MW_DMA_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @atiixp_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 2, %24
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @atiixp_lock, i64 %30)
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XFER_UDMA_0, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %2
  %38 = load i32, i32* @XFER_UDMA_0, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %43 = call i32 @pci_read_config_word(%struct.pci_dev* %41, i32 %42, i32* %10)
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 4, %44
  %46 = shl i32 7, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 4, %51
  %53 = shl i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @pci_write_config_word(%struct.pci_dev* %56, i32 %57, i32 %58)
  br label %94

60:                                               ; preds = %2
  %61 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %62 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 16, %63
  %65 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, 1
  %69 = mul nsw i32 8, %68
  %70 = add nsw i32 %64, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* @XFER_MW_DMA_0, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = load i32, i32* @ATIIXP_IDE_MWDMA_TIMING, align 4
  %76 = call i32 @pci_read_config_dword(%struct.pci_dev* %74, i32 %75, i32* %12)
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 255, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* @atiixp_set_dmamode.mwdma_timings, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %12, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = load i32, i32* @ATIIXP_IDE_MWDMA_TIMING, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @pci_write_config_dword(%struct.pci_dev* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %60, %37
  %95 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %96 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @XFER_MW_DMA_2, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 4, i32* %8, align 4
  br label %119

101:                                              ; preds = %94
  %102 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %103 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XFER_MW_DMA_1, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 3, i32* %8, align 4
  br label %118

108:                                              ; preds = %101
  %109 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %110 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @XFER_MW_DMA_0, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %8, align 4
  br label %117

115:                                              ; preds = %108
  %116 = call i32 (...) @BUG()
  br label %117

117:                                              ; preds = %115, %114
  br label %118

118:                                              ; preds = %117, %107
  br label %119

119:                                              ; preds = %118, %100
  %120 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %121 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %127 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @atiixp_set_pio_timing(%struct.ata_port* %126, %struct.ata_device* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %119
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* @atiixp_lock, i64 %131)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atiixp_set_pio_timing(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
