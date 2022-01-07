; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-apmixed.c_mtk_ref2usb_tx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-apmixed.c_mtk_ref2usb_tx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_ref2usb_tx = type { i32 }

@REF2USB_TX_EN = common dso_local global i32 0, align 4
@REF2USB_TX_LPF_EN = common dso_local global i32 0, align 4
@REF2USB_TX_OUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mtk_ref2usb_tx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ref2usb_tx_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_ref2usb_tx*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.mtk_ref2usb_tx* @to_mtk_ref2usb_tx(%struct.clk_hw* %5)
  store %struct.mtk_ref2usb_tx* %6, %struct.mtk_ref2usb_tx** %3, align 8
  %7 = load %struct.mtk_ref2usb_tx*, %struct.mtk_ref2usb_tx** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_ref2usb_tx, %struct.mtk_ref2usb_tx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @REF2USB_TX_EN, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mtk_ref2usb_tx*, %struct.mtk_ref2usb_tx** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_ref2usb_tx, %struct.mtk_ref2usb_tx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @writel(i32 %14, i32 %17)
  %19 = call i32 @udelay(i32 100)
  %20 = load i32, i32* @REF2USB_TX_LPF_EN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mtk_ref2usb_tx*, %struct.mtk_ref2usb_tx** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_ref2usb_tx, %struct.mtk_ref2usb_tx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writel(i32 %23, i32 %26)
  %28 = load i32, i32* @REF2USB_TX_OUT_EN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mtk_ref2usb_tx*, %struct.mtk_ref2usb_tx** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_ref2usb_tx, %struct.mtk_ref2usb_tx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  ret i32 0
}

declare dso_local %struct.mtk_ref2usb_tx* @to_mtk_ref2usb_tx(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
