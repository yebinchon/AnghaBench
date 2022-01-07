; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31_3ds.c_mx31_3ds_usbotg_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31_3ds.c_mx31_3ds_usbotg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MX31_PIN_USBOTG_DATA0 = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA2 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA3 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA4 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA5 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA6 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA7 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_CLK = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DIR = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_NXT = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_STP = common dso_local global i32 0, align 4
@USBOTG_RST_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"otgusb-reset\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to request the USB OTG reset gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to drive the USB OTG reset gpio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mx31_3ds_usbotg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx31_3ds_usbotg_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MX31_PIN_USBOTG_DATA0, align 4
  %4 = load i32, i32* @USB_PAD_CFG, align 4
  %5 = call i32 @mxc_iomux_set_pad(i32 %3, i32 %4)
  %6 = load i32, i32* @MX31_PIN_USBOTG_DATA1, align 4
  %7 = load i32, i32* @USB_PAD_CFG, align 4
  %8 = call i32 @mxc_iomux_set_pad(i32 %6, i32 %7)
  %9 = load i32, i32* @MX31_PIN_USBOTG_DATA2, align 4
  %10 = load i32, i32* @USB_PAD_CFG, align 4
  %11 = call i32 @mxc_iomux_set_pad(i32 %9, i32 %10)
  %12 = load i32, i32* @MX31_PIN_USBOTG_DATA3, align 4
  %13 = load i32, i32* @USB_PAD_CFG, align 4
  %14 = call i32 @mxc_iomux_set_pad(i32 %12, i32 %13)
  %15 = load i32, i32* @MX31_PIN_USBOTG_DATA4, align 4
  %16 = load i32, i32* @USB_PAD_CFG, align 4
  %17 = call i32 @mxc_iomux_set_pad(i32 %15, i32 %16)
  %18 = load i32, i32* @MX31_PIN_USBOTG_DATA5, align 4
  %19 = load i32, i32* @USB_PAD_CFG, align 4
  %20 = call i32 @mxc_iomux_set_pad(i32 %18, i32 %19)
  %21 = load i32, i32* @MX31_PIN_USBOTG_DATA6, align 4
  %22 = load i32, i32* @USB_PAD_CFG, align 4
  %23 = call i32 @mxc_iomux_set_pad(i32 %21, i32 %22)
  %24 = load i32, i32* @MX31_PIN_USBOTG_DATA7, align 4
  %25 = load i32, i32* @USB_PAD_CFG, align 4
  %26 = call i32 @mxc_iomux_set_pad(i32 %24, i32 %25)
  %27 = load i32, i32* @MX31_PIN_USBOTG_CLK, align 4
  %28 = load i32, i32* @USB_PAD_CFG, align 4
  %29 = call i32 @mxc_iomux_set_pad(i32 %27, i32 %28)
  %30 = load i32, i32* @MX31_PIN_USBOTG_DIR, align 4
  %31 = load i32, i32* @USB_PAD_CFG, align 4
  %32 = call i32 @mxc_iomux_set_pad(i32 %30, i32 %31)
  %33 = load i32, i32* @MX31_PIN_USBOTG_NXT, align 4
  %34 = load i32, i32* @USB_PAD_CFG, align 4
  %35 = call i32 @mxc_iomux_set_pad(i32 %33, i32 %34)
  %36 = load i32, i32* @MX31_PIN_USBOTG_STP, align 4
  %37 = load i32, i32* @USB_PAD_CFG, align 4
  %38 = call i32 @mxc_iomux_set_pad(i32 %36, i32 %37)
  %39 = load i32, i32* @USBOTG_RST_B, align 4
  %40 = call i32 @gpio_request(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %0
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %61

46:                                               ; preds = %0
  %47 = load i32, i32* @USBOTG_RST_B, align 4
  %48 = call i32 @gpio_direction_output(i32 %47, i32 0)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %57

53:                                               ; preds = %46
  %54 = call i32 @mdelay(i32 1)
  %55 = load i32, i32* @USBOTG_RST_B, align 4
  %56 = call i32 @gpio_set_value(i32 %55, i32 1)
  store i32 0, i32* %1, align 4
  br label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @USBOTG_RST_B, align 4
  %59 = call i32 @gpio_free(i32 %58)
  %60 = load i32, i32* %2, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %57, %53, %43
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
