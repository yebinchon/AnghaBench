; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_usb0_clk48_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_usb0_clk48_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.da8xx_usb0_clk48 = type { i32, i32 }

@CFGCHIP2_RESET = common dso_local global i32 0, align 4
@CFGCHIP2_PHYPWRDN = common dso_local global i32 0, align 4
@CFGCHIP2_PHY_PLLON = common dso_local global i32 0, align 4
@CFGCHIP2_PHYCLKGD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @da8xx_usb0_clk48_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_usb0_clk48_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.da8xx_usb0_clk48*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.da8xx_usb0_clk48* @to_da8xx_usb0_clk48(%struct.clk_hw* %7)
  store %struct.da8xx_usb0_clk48* %8, %struct.da8xx_usb0_clk48** %3, align 8
  %9 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %3, align 8
  %10 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_enable(i32 %11)
  %13 = load i32, i32* @CFGCHIP2_RESET, align 4
  %14 = load i32, i32* @CFGCHIP2_PHYPWRDN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CFGCHIP2_PHY_PLLON, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CFGCHIP2_PHY_PLLON, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %3, align 8
  %20 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CFGCHIP(i32 2)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @regmap_write_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %3, align 8
  %27 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CFGCHIP(i32 2)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CFGCHIP2_PHYCLKGD, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @regmap_read_poll_timeout(i32 %28, i32 %29, i32 %30, i32 %33, i32 0, i32 500000)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %3, align 8
  %36 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable(i32 %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.da8xx_usb0_clk48* @to_da8xx_usb0_clk48(%struct.clk_hw*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CFGCHIP(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
