; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pdc202xx_old.c_pdc202xx_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_pdc202xx_old.c_pdc202xx_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@pdc202xx_set_dmamode.udma_timing = internal global [6 x [2 x i32]] [[2 x i32] [i32 96, i32 3], [2 x i32] [i32 64, i32 2], [2 x i32] [i32 32, i32 1], [2 x i32] [i32 64, i32 2], [2 x i32] [i32 32, i32 1], [2 x i32] [i32 32, i32 1]], align 16
@pdc202xx_set_dmamode.mdma_timing = internal global [3 x [2 x i32]] [[2 x i32] [i32 224, i32 15], [2 x i32] [i32 96, i32 4], [2 x i32] [i32 96, i32 3]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pdc202xx_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc202xx_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 8, %19
  %21 = add nsw i32 96, %20
  %22 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 4, %24
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i32 %29, i32* %7)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 %33, i32* %8)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, -225
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -16
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XFER_UDMA_0, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %2
  %45 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %46 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XFER_UDMA_0, align 8
  %49 = sub nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @pdc202xx_set_dmamode.udma_timing, i64 0, i64 %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @pdc202xx_set_dmamode.udma_timing, i64 0, i64 %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %87

65:                                               ; preds = %2
  %66 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %67 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @XFER_MW_DMA_0, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %68, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @pdc202xx_set_dmamode.mdma_timing, i64 0, i64 %74
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @pdc202xx_set_dmamode.mdma_timing, i64 0, i64 %81
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %65, %44
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 %90, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 2
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @pci_write_config_byte(%struct.pci_dev* %93, i32 %95, i32 %96)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
