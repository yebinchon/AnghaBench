; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_133_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_133_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@sis_133_set_dmamode.timing_u100 = internal constant [3 x i32] [i32 420823040, i32 101130240, i32 67510272], align 4
@sis_133_set_dmamode.timing_u133 = internal constant [3 x i32] [i32 572284928, i32 201994240, i32 84488192], align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@sis_133_set_dmamode.timing_u100.1 = internal constant [7 x i32] [i32 1712, i32 1136, i32 848, i32 320, i32 288, i32 272, i32 0], align 16
@sis_133_set_dmamode.timing_u133.2 = internal constant [7 x i32] [i32 2544, i32 1696, i32 1136, i32 592, i32 560, i32 544, i32 528], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sis_133_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_133_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = call i32 @sis_port_base(%struct.ata_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i32 %19, i32* %7)
  %21 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XFER_UDMA_0, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %2
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @XFER_MW_DMA_0, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, -1061154817
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, -5
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* @sis_133_set_dmamode.timing_u133, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %55

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* @sis_133_set_dmamode.timing_u100, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %41
  br label %85

56:                                               ; preds = %2
  %57 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %58 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XFER_UDMA_0, align 8
  %61 = sub nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, -4081
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* @sis_133_set_dmamode.timing_u133.2, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %84

77:                                               ; preds = %56
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [7 x i32], [7 x i32]* @sis_133_set_dmamode.timing_u100.1, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %77, %70
  br label %85

85:                                               ; preds = %84, %55
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @pci_write_config_dword(%struct.pci_dev* %86, i32 %87, i32 %88)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @sis_port_base(%struct.ata_device*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
