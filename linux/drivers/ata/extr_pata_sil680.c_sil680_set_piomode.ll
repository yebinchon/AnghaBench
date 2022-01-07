; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sil680.c_sil680_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sil680.c_sil680_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@sil680_set_piomode.speed_p = internal constant [5 x i32] [i32 12938, i32 8835, i32 4356, i32 4291, i32 4289], align 16
@sil680_set_piomode.speed_t = internal constant [5 x i32] [i32 12938, i32 8835, i32 4737, i32 4291, i32 4289], align 16
@XFER_PIO_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sil680_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil680_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ata_device*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = call i64 @sil680_selreg(%struct.ata_port* %15, i32 2)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = call i64 @sil680_seldev(%struct.ata_port* %17, %struct.ata_device* %18, i32 4)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 4, %22
  %24 = add nsw i32 128, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.pci_dev* @to_pci_dev(i32 %30)
  store %struct.pci_dev* %31, %struct.pci_dev** %8, align 8
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XFER_PIO_0, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 4, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %42)
  store %struct.ata_device* %43, %struct.ata_device** %14, align 8
  %44 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %45 = icmp ne %struct.ata_device* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %2
  %47 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @XFER_PIO_0, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %54, %46, %2
  %61 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* @sil680_set_piomode.speed_p, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pci_write_config_word(%struct.pci_dev* %61, i64 %62, i32 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* @sil680_set_piomode.speed_t, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pci_write_config_word(%struct.pci_dev* %68, i64 %69, i32 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %76 = load i64, i64* %5, align 8
  %77 = sub i64 %76, 2
  %78 = call i32 @pci_read_config_word(%struct.pci_dev* %75, i64 %77, i32* %12)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @pci_read_config_byte(%struct.pci_dev* %79, i64 %80, i32* %13)
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, -513
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 3, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %90 = call i64 @ata_pio_need_iordy(%struct.ata_device* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %60
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, 512
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 1, %95
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %92, %60
  %100 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %101 = load i64, i64* %5, align 8
  %102 = sub i64 %101, 2
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @pci_write_config_word(%struct.pci_dev* %100, i64 %102, i32 %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @pci_write_config_byte(%struct.pci_dev* %105, i64 %106, i32 %107)
  ret void
}

declare dso_local i64 @sil680_selreg(%struct.ata_port*, i32) #1

declare dso_local i64 @sil680_seldev(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
