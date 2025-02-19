; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll14xx_wait_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll14xx_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pll14xx = type { i32 }

@LOCK_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_pll14xx*)* @clk_pll14xx_wait_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll14xx_wait_lock(%struct.clk_pll14xx* %0) #0 {
  %2 = alloca %struct.clk_pll14xx*, align 8
  %3 = alloca i32, align 4
  store %struct.clk_pll14xx* %0, %struct.clk_pll14xx** %2, align 8
  %4 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %2, align 8
  %5 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %12 = call i32 @readl_poll_timeout(i32 %6, i32 %7, i32 %10, i32 0, i32 %11)
  ret i32 %12
}

declare dso_local i32 @readl_poll_timeout(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
