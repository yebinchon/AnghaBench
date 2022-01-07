; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-3xxx.c_omap3430es2_clk_dss_usbhost_find_idlest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-3xxx.c_omap3430es2_clk_dss_usbhost_find_idlest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32 }
%struct.clk_omap_reg = type { i32 }

@OMAP3430ES2_ST_DSS_IDLE_SHIFT = common dso_local global i32 0, align 4
@OMAP34XX_CM_IDLEST_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*, i32*)* @omap3430es2_clk_dss_usbhost_find_idlest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap3430es2_clk_dss_usbhost_find_idlest(%struct.clk_hw_omap* %0, %struct.clk_omap_reg* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.clk_hw_omap*, align 8
  %6 = alloca %struct.clk_omap_reg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %5, align 8
  store %struct.clk_omap_reg* %1, %struct.clk_omap_reg** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %6, align 8
  %10 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %5, align 8
  %11 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %10, i32 0, i32 0
  %12 = call i32 @memcpy(%struct.clk_omap_reg* %9, i32* %11, i32 4)
  %13 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %6, align 8
  %14 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -241
  store i32 %16, i32* %14, align 4
  %17 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %6, align 8
  %18 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 32
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @OMAP3430ES2_ST_DSS_IDLE_SHIFT, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @OMAP34XX_CM_IDLEST_VAL, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  ret void
}

declare dso_local i32 @memcpy(%struct.clk_omap_reg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
