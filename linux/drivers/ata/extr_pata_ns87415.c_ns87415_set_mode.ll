; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ns87415.c_ns87415_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ns87415.c_ns87415_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ata_timing = type { i32, i32 }

@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @ns87415_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns87415_set_mode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ata_timing, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pci_dev* @to_pci_dev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  %25 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 68, %30
  store i32 %31, i32* %9, align 4
  store i64 30000, i64* %10, align 8
  %32 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ata_timing_compute(%struct.ata_device* %32, i32 %35, %struct.ata_timing* %11, i64 %36, i32 0)
  %38 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %11, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clamp_val(i32 %39, i32 2, i32 17)
  %41 = sub nsw i32 17, %40
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clamp_val(i32 %43, i32 1, i32 16)
  %45 = sub nsw i32 16, %44
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @pci_write_config_word(%struct.pci_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = call i32 @pci_read_config_byte(%struct.pci_dev* %57, i32 66, i32* %13)
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 4, %59
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @XFER_MW_DMA_0, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %3
  %69 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %70 = call i32 @ata_pio_need_iordy(%struct.ata_device* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68, %3
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 4, %73
  %75 = shl i32 1, %74
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %72, %68
  %79 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %80 = call i32 @pci_read_config_byte(%struct.pci_dev* %79, i32 67, i32* %14)
  br label %81

81:                                               ; preds = %85, %78
  %82 = load i32, i32* %14, align 4
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = call i32 @udelay(i32 1)
  %87 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %88 = call i32 @pci_read_config_byte(%struct.pci_dev* %87, i32 67, i32* %14)
  br label %81

89:                                               ; preds = %81
  %90 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %90, i32 66, i32 %91)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i64, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
