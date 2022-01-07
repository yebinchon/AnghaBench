; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.tegra_ahci_priv* }
%struct.tegra_ahci_priv = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TEGRA_POWERGATE_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @tegra_ahci_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ahci_power_on(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.tegra_ahci_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %6 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %6, i32 0, i32 0
  %8 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %7, align 8
  store %struct.tegra_ahci_priv* %8, %struct.tegra_ahci_priv** %4, align 8
  %9 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_bulk_enable(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %75

22:                                               ; preds = %1
  %23 = load i32, i32* @TEGRA_POWERGATE_SATA, align 4
  %24 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tegra_powergate_sequence_power_up(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %64

34:                                               ; preds = %22
  %35 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reset_control_assert(i32 %37)
  %39 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @reset_control_assert(i32 %41)
  %43 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %44 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %57

48:                                               ; preds = %34
  %49 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @reset_control_deassert(i32 %51)
  %53 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %54 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @reset_control_deassert(i32 %55)
  store i32 0, i32* %2, align 4
  br label %75

57:                                               ; preds = %47
  %58 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_disable_unprepare(i32 %60)
  %62 = load i32, i32* @TEGRA_POWERGATE_SATA, align 4
  %63 = call i32 @tegra_powergate_power_off(i32 %62)
  br label %64

64:                                               ; preds = %57, %33
  %65 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regulator_bulk_disable(i32 %69, i32 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %64, %48, %20
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
