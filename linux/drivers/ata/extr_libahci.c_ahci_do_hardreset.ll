; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_do_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_do_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port*, i32 }
%struct.ata_port = type { %struct.TYPE_2__*, %struct.ahci_port_priv* }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }
%struct.ahci_port_priv = type { i32* }
%struct.ata_taskfile = type { i32 }

@RX_FIS_D2H_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_BUSY = common dso_local global i32 0, align 4
@ahci_check_ready = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EXIT, rc=%d, class=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_do_hardreset(%struct.ata_link* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ata_port*, align 8
  %11 = alloca %struct.ahci_port_priv*, align 8
  %12 = alloca %struct.ahci_host_priv*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ata_taskfile, align 4
  %15 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 2
  %18 = call i64* @sata_ehc_deb_timing(i32* %17)
  store i64* %18, i64** %9, align 8
  %19 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %20 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %19, i32 0, i32 1
  %21 = load %struct.ata_port*, %struct.ata_port** %20, align 8
  store %struct.ata_port* %21, %struct.ata_port** %10, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %23, align 8
  store %struct.ahci_port_priv* %24, %struct.ahci_port_priv** %11, align 8
  %25 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %28, align 8
  store %struct.ahci_host_priv* %29, %struct.ahci_host_priv** %12, align 8
  %30 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %11, align 8
  %31 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @RX_FIS_D2H_REG, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %13, align 8
  %36 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %12, align 8
  %38 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %37, i32 0, i32 1
  %39 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %38, align 8
  %40 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %41 = call i32 %39(%struct.ata_port* %40)
  %42 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %43 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ata_tf_init(i32 %44, %struct.ata_taskfile* %14)
  %46 = load i32, i32* @ATA_BUSY, align 4
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @ata_tf_to_fis(%struct.ata_taskfile* %14, i32 0, i32 0, i32* %48)
  %50 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @ahci_check_ready, align 4
  %55 = call i32 @sata_link_hardreset(%struct.ata_link* %50, i64* %51, i64 %52, i32* %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %12, align 8
  %57 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %56, i32 0, i32 0
  %58 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %57, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %60 = call i32 %58(%struct.ata_port* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %4
  %65 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %66 = call i32 @ahci_dev_classify(%struct.ata_port* %65)
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %4
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* %15, align 4
  ret i32 %73
}

declare dso_local i64* @sata_ehc_deb_timing(i32*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ata_tf_init(i32, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_tf_to_fis(%struct.ata_taskfile*, i32, i32, i32*) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i64*, i64, i32*, i32) #1

declare dso_local i32 @ahci_dev_classify(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
