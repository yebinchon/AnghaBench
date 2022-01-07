; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.tegra_ahci_priv* }
%struct.tegra_ahci_priv = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TEGRA_POWERGATE_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_host_priv*)* @tegra_ahci_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_ahci_power_off(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca %struct.ahci_host_priv*, align 8
  %3 = alloca %struct.tegra_ahci_priv*, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %2, align 8
  %4 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %4, i32 0, i32 0
  %6 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  store %struct.tegra_ahci_priv* %6, %struct.tegra_ahci_priv** %3, align 8
  %7 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %8 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %7)
  %9 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @reset_control_assert(i32 %11)
  %13 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @reset_control_assert(i32 %15)
  %17 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @reset_control_assert(i32 %19)
  %21 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load i32, i32* @TEGRA_POWERGATE_SATA, align 4
  %26 = call i32 @tegra_powergate_power_off(i32 %25)
  %27 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regulator_bulk_disable(i32 %31, i32 %34)
  ret void
}

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
