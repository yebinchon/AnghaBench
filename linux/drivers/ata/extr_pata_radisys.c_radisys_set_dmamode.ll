; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_radisys.c_radisys_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_radisys.c_radisys_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32, i64 }
%struct.pci_dev = type { i32 }

@radisys_set_dmamode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 3, i32 3]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@XFER_UDMA_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @radisys_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radisys_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
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
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i32 64, i32* %6)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = call i32 @pci_read_config_byte(%struct.pci_dev* %21, i32 72, i32* %7)
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XFER_UDMA_0, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %2
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @XFER_MW_DMA_0, align 4
  %33 = zext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %41, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XFER_PIO_0, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %48 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %49 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 52428
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 4, %63
  %65 = shl i32 %60, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @radisys_set_dmamode.timings, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 12
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @radisys_set_dmamode.timings, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %73, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %84 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %125

90:                                               ; preds = %2
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i32 @pci_read_config_byte(%struct.pci_dev* %91, i32 74, i32* %12)
  %93 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %94 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @XFER_UDMA_2, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %100 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 4
  %103 = shl i32 2, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %115

107:                                              ; preds = %90
  %108 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %109 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 4
  %112 = shl i32 2, %111
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %107, %98
  %116 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @pci_write_config_byte(%struct.pci_dev* %116, i32 74, i32 %117)
  %119 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %120 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %115, %57
  %126 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @pci_write_config_word(%struct.pci_dev* %126, i32 64, i32 %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @pci_write_config_byte(%struct.pci_dev* %129, i32 72, i32 %130)
  %132 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %133 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %134 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %133, i32 0, i32 0
  store %struct.ata_device* %132, %struct.ata_device** %134, align 8
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
