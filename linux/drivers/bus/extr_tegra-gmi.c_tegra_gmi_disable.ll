; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gmi = type { i32, i32, i64 }

@TEGRA_GMI_CONFIG = common dso_local global i64 0, align 8
@TEGRA_GMI_CONFIG_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_gmi*)* @tegra_gmi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_gmi_disable(%struct.tegra_gmi* %0) #0 {
  %2 = alloca %struct.tegra_gmi*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_gmi* %0, %struct.tegra_gmi** %2, align 8
  %4 = load %struct.tegra_gmi*, %struct.tegra_gmi** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TEGRA_GMI_CONFIG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @TEGRA_GMI_CONFIG_GO, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.tegra_gmi*, %struct.tegra_gmi** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TEGRA_GMI_CONFIG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.tegra_gmi*, %struct.tegra_gmi** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @reset_control_assert(i32 %23)
  %25 = load %struct.tegra_gmi*, %struct.tegra_gmi** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
