; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_ahci_imx_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_ahci_imx_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.ata_link*, i32*, i64)* }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.ata_link*, i32*, i64)* }
%struct.ata_host = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { %struct.imx_ahci_priv* }
%struct.imx_ahci_priv = type { i64 }

@EIO = common dso_local global i32 0, align 4
@AHCI_IMX53 = common dso_local global i64 0, align 8
@ahci_pmp_retry_srst_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ahci_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ahci_imx_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_imx_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ata_host*, align 8
  %9 = alloca %struct.ahci_host_priv*, align 8
  %10 = alloca %struct.imx_ahci_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 0
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %7, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ata_host* @dev_get_drvdata(i32 %17)
  store %struct.ata_host* %18, %struct.ata_host** %8, align 8
  %19 = load %struct.ata_host*, %struct.ata_host** %8, align 8
  %20 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %19, i32 0, i32 0
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %20, align 8
  store %struct.ahci_host_priv* %21, %struct.ahci_host_priv** %9, align 8
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %9, align 8
  %23 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %22, i32 0, i32 0
  %24 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %23, align 8
  store %struct.imx_ahci_priv* %24, %struct.imx_ahci_priv** %10, align 8
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %10, align 8
  %28 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AHCI_IMX53, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32 (%struct.ata_link*, i32*, i64)*, i32 (%struct.ata_link*, i32*, i64)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ahci_pmp_retry_srst_ops, i32 0, i32 0), align 8
  %34 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 %33(%struct.ata_link* %34, i32* %35, i64 %36)
  store i32 %37, i32* %11, align 4
  br label %44

38:                                               ; preds = %3
  %39 = load i32 (%struct.ata_link*, i32*, i64)*, i32 (%struct.ata_link*, i32*, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ahci_ops, i32 0, i32 0), align 8
  %40 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 %39(%struct.ata_link* %40, i32* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local %struct.ata_host* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
