; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_usb_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_usb_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_usb_clk = type { i32, i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@LPC32XX_CLKPWR_USB_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_usb_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_usb_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.lpc32xx_usb_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.lpc32xx_usb_clk* @to_lpc32xx_usb_clk(%struct.clk_hw* %7)
  store %struct.lpc32xx_usb_clk* %8, %struct.lpc32xx_usb_clk** %4, align 8
  %9 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @clk_regmap, align 4
  %15 = load i32, i32* @LPC32XX_CLKPWR_USB_CTRL, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %19 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %23 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %41

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %30 = call i32 @lpc32xx_usb_clk_read(%struct.lpc32xx_usb_clk* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %37 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.lpc32xx_usb_clk* @to_lpc32xx_usb_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @lpc32xx_usb_clk_read(%struct.lpc32xx_usb_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
