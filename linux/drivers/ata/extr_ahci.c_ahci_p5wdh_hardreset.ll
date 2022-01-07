; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_p5wdh_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_p5wdh_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, i32, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__*, %struct.ahci_port_priv* }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }
%struct.ahci_port_priv = type { i32* }
%struct.ata_taskfile = type { i32 }

@RX_FIS_D2H_REG = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ahci_check_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ahci_p5wdh_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_p5wdh_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ahci_port_priv*, align 8
  %9 = alloca %struct.ahci_host_priv*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ata_taskfile, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %15 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %14, i32 0, i32 2
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %7, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 1
  %19 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %18, align 8
  store %struct.ahci_port_priv* %19, %struct.ahci_port_priv** %8, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %23, align 8
  store %struct.ahci_host_priv* %24, %struct.ahci_host_priv** %9, align 8
  %25 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %8, align 8
  %26 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @RX_FIS_D2H_REG, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %9, align 8
  %32 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %31, i32 0, i32 1
  %33 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %32, align 8
  %34 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %35 = call i32 %33(%struct.ata_port* %34)
  %36 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %37 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ata_tf_init(i32 %38, %struct.ata_taskfile* %11)
  %40 = load i32, i32* @ATA_BUSY, align 4
  %41 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @ata_tf_to_fis(%struct.ata_taskfile* %11, i32 0, i32 0, i32* %42)
  %44 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %45 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %46 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %45, i32 0, i32 0
  %47 = call i32 @sata_ehc_deb_timing(i32* %46)
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @sata_link_hardreset(%struct.ata_link* %44, i32 %47, i64 %48, i32* %12, i32* null)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %9, align 8
  %51 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %50, i32 0, i32 0
  %52 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %51, align 8
  %53 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %54 = call i32 %52(%struct.ata_port* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %3
  %58 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* @ahci_check_ready, align 4
  %65 = call i32 @ata_wait_after_reset(%struct.ata_link* %58, i64 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %70 = call i32 @ahci_kick_engine(%struct.ata_port* %69)
  br label %71

71:                                               ; preds = %68, %57
  br label %72

72:                                               ; preds = %71, %3
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i32 @ata_tf_init(i32, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_tf_to_fis(%struct.ata_taskfile*, i32, i32, i32*) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i32, i64, i32*, i32*) #1

declare dso_local i32 @sata_ehc_deb_timing(i32*) #1

declare dso_local i32 @ata_wait_after_reset(%struct.ata_link*, i64, i32) #1

declare dso_local i32 @ahci_kick_engine(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
