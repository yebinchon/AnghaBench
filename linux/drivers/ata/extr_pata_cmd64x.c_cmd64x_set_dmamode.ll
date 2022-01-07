; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cmd64x.c_cmd64x_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cmd64x.c_cmd64x_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@cmd64x_set_dmamode.udma_data = internal constant [6 x i32] [i32 48, i32 32, i32 16, i32 32, i32 16, i32 0], align 16
@UDIDETCR0 = common dso_local global i32 0, align 4
@BMIDESR0 = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @cmd64x_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd64x_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
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
  %17 = load i32, i32* @UDIDETCR0, align 4
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 8, %20
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @BMIDESR0, align 4
  %24 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 8, %26
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 %34, i32* %7)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pci_read_config_byte(%struct.pci_dev* %36, i32 %37, i32* %6)
  %39 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 32, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 48, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %52 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 5, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @XFER_UDMA_0, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %2
  %64 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %65 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XFER_UDMA_0, align 8
  %68 = sub nsw i64 %66, %67
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* @cmd64x_set_dmamode.udma_data, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %76 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %82 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @XFER_UDMA_2, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %63
  %87 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %88 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 4, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %63
  br label %108

94:                                               ; preds = %2
  %95 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %96 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 1, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %103 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %104 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %105 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @cmd64x_set_timing(%struct.ata_port* %102, %struct.ata_device* %103, i64 %106)
  br label %108

108:                                              ; preds = %94, %93
  %109 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %110 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 32, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @pci_write_config_byte(%struct.pci_dev* %115, i32 %116, i32 %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @pci_write_config_byte(%struct.pci_dev* %119, i32 %120, i32 %121)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cmd64x_set_timing(%struct.ata_port*, %struct.ata_device*, i64) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
