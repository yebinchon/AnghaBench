; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pata_imx_priv* }
%struct.pata_imx_priv = type { i64 }
%struct.ata_device = type { i32 }

@PATA_IMX_ATA_CONTROL = common dso_local global i64 0, align 8
@PATA_IMX_ATA_CTRL_IORDY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pata_imx_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_imx_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pata_imx_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %10, align 8
  store %struct.pata_imx_priv* %11, %struct.pata_imx_priv** %5, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %13 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %5, align 8
  %14 = call i32 @pata_imx_set_timing(%struct.ata_device* %12, %struct.pata_imx_priv* %13)
  %15 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %5, align 8
  %16 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PATA_IMX_ATA_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %22 = call i64 @ata_pio_need_iordy(%struct.ata_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @PATA_IMX_ATA_CTRL_IORDY_EN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @PATA_IMX_ATA_CTRL_IORDY_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %5, align 8
  %36 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PATA_IMX_ATA_CONTROL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @__raw_writel(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @pata_imx_set_timing(%struct.ata_device*, %struct.pata_imx_priv*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
