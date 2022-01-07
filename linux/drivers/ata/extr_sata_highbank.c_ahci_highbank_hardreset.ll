; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_ahci_highbank_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_ahci_highbank_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port*, i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__*, %struct.ahci_port_priv* }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }
%struct.ahci_port_priv = type { i32* }
%struct.ata_taskfile = type { i32 }

@ahci_highbank_hardreset.timing = internal constant [3 x i64] [i64 5, i64 100, i64 500], align 16
@RX_FIS_D2H_REG = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@SCR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ahci_highbank_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_highbank_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 0
  %18 = load %struct.ata_port*, %struct.ata_port** %17, align 8
  store %struct.ata_port* %18, %struct.ata_port** %7, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 2
  %21 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %20, align 8
  store %struct.ahci_port_priv* %21, %struct.ahci_port_priv** %8, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %25, align 8
  store %struct.ahci_host_priv* %26, %struct.ahci_host_priv** %9, align 8
  %27 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %8, align 8
  %28 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @RX_FIS_D2H_REG, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %10, align 8
  store i32 100, i32* %15, align 4
  %33 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %9, align 8
  %34 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %33, i32 0, i32 1
  %35 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %34, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %37 = call i32 %35(%struct.ata_port* %36)
  %38 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %39 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ata_tf_init(i32 %40, %struct.ata_taskfile* %11)
  %42 = load i32, i32* @ATA_BUSY, align 4
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ata_tf_to_fis(%struct.ata_taskfile* %11, i32 0, i32 0, i32* %44)
  br label %46

46:                                               ; preds = %80, %3
  %47 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %48 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %47, i32 0, i32 0
  %49 = load %struct.ata_port*, %struct.ata_port** %48, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @highbank_cphy_disable_overrides(i32 %51)
  %53 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @sata_link_hardreset(%struct.ata_link* %53, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @ahci_highbank_hardreset.timing, i64 0, i64 0), i64 %54, i32* %12, i32* null)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %57 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %56, i32 0, i32 0
  %58 = load %struct.ata_port*, %struct.ata_port** %57, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @highbank_cphy_override_lane(i32 %60)
  %62 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %63 = load i32, i32* @SCR_STATUS, align 4
  %64 = call i64 @sata_scr_read(%struct.ata_link* %62, i32 %63, i32* %13)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %82

67:                                               ; preds = %46
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %82

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %15, align 4
  %79 = icmp ne i32 %77, 0
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %46, label %82

82:                                               ; preds = %80, %71, %66
  %83 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %9, align 8
  %84 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %83, i32 0, i32 0
  %85 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %84, align 8
  %86 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %87 = call i32 %85(%struct.ata_port* %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %92 = call i32 @ahci_dev_classify(%struct.ata_port* %91)
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* %14, align 4
  ret i32 %95
}

declare dso_local i32 @ata_tf_init(i32, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_tf_to_fis(%struct.ata_taskfile*, i32, i32, i32*) #1

declare dso_local i32 @highbank_cphy_disable_overrides(i32) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i64*, i64, i32*, i32*) #1

declare dso_local i32 @highbank_cphy_override_lane(i32) #1

declare dso_local i64 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @ahci_dev_classify(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
