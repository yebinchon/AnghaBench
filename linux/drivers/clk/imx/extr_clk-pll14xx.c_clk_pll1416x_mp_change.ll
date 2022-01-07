; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll1416x_mp_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll1416x_mp_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_pll14xx_rate_table = type { i32, i32 }

@MDIV_SHIFT = common dso_local global i32 0, align 4
@MDIV_MASK = common dso_local global i32 0, align 4
@PDIV_SHIFT = common dso_local global i32 0, align 4
@PDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_pll14xx_rate_table*, i32)* @clk_pll1416x_mp_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll1416x_mp_change(%struct.imx_pll14xx_rate_table* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_pll14xx_rate_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_pll14xx_rate_table* %0, %struct.imx_pll14xx_rate_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MDIV_SHIFT, align 4
  %9 = ashr i32 %7, %8
  %10 = load i32, i32* @MDIV_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PDIV_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @PDIV_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.imx_pll14xx_rate_table*, %struct.imx_pll14xx_rate_table** %3, align 8
  %18 = getelementptr inbounds %struct.imx_pll14xx_rate_table, %struct.imx_pll14xx_rate_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.imx_pll14xx_rate_table*, %struct.imx_pll14xx_rate_table** %3, align 8
  %24 = getelementptr inbounds %struct.imx_pll14xx_rate_table, %struct.imx_pll14xx_rate_table* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %22, %2
  %29 = phi i1 [ true, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
