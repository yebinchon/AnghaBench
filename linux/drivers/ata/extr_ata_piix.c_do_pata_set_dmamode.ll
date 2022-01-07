; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_do_pata_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_do_pata_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@piix_lock = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @do_pata_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pata_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.pci_dev* @to_pci_dev(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %7, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @XFER_UDMA_0, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %110

40:                                               ; preds = %3
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @XFER_UDMA_0, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @piix_lock, i64 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %48 = call i32 @pci_read_config_byte(%struct.pci_dev* %47, i32 72, i64* %11)
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, 1
  %51 = sub i32 2, %50
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  store i32 4096, i32* %15, align 4
  br label %63

57:                                               ; preds = %40
  %58 = load i32, i32* %12, align 4
  %59 = icmp ugt i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %15, align 4
  br label %62

61:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %11, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %11, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %70 = call i32 @pci_read_config_word(%struct.pci_dev* %69, i32 74, i32* %13)
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 4, %71
  %73 = shl i32 3, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %13, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 4, %78
  %80 = shl i32 %77, %79
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @pci_write_config_word(%struct.pci_dev* %83, i32 74, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %63
  %89 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %90 = call i32 @pci_read_config_word(%struct.pci_dev* %89, i32 84, i32* %14)
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 4097, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @pci_write_config_word(%struct.pci_dev* %101, i32 84, i32 %102)
  br label %104

104:                                              ; preds = %88, %63
  %105 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @pci_write_config_byte(%struct.pci_dev* %105, i32 72, i64 %106)
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* @piix_lock, i64 %108)
  br label %131

110:                                              ; preds = %3
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @XFER_MW_DMA_0, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %17, align 4
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %116 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %116, i32* %115, align 4
  %117 = getelementptr inbounds i32, i32* %115, i64 1
  %118 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %118, i32* %117, align 4
  %119 = getelementptr inbounds i32, i32* %117, i64 1
  %120 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %120, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @XFER_PIO_0, align 4
  %126 = sub i32 %124, %125
  store i32 %126, i32* %19, align 4
  %127 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %128 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @piix_set_timings(%struct.ata_port* %127, %struct.ata_device* %128, i32 %129)
  br label %131

131:                                              ; preds = %110, %104
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @piix_set_timings(%struct.ata_port*, %struct.ata_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
