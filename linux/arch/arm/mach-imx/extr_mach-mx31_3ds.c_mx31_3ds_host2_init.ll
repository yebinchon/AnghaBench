; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31_3ds.c_mx31_3ds_host2_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31_3ds.c_mx31_3ds_host2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@MX31_PIN_USBH2_CLK = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DIR = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_NXT = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_STP = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DATA0 = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_PC_VS2 = common dso_local global i32 0, align 4
@MX31_PIN_PC_BVD1 = common dso_local global i32 0, align 4
@MX31_PIN_PC_BVD2 = common dso_local global i32 0, align 4
@MX31_PIN_PC_RST = common dso_local global i32 0, align 4
@MX31_PIN_IOIS16 = common dso_local global i32 0, align 4
@MX31_PIN_PC_RW_B = common dso_local global i32 0, align 4
@USBH2_RST_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"usbh2-reset\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to request the USB Host 2 reset gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to drive the USB Host 2 reset gpio\0A\00", align 1
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mx31_3ds_host2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx31_3ds_host2_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @MX31_PIN_USBH2_CLK, align 4
  %6 = load i32, i32* @USB_PAD_CFG, align 4
  %7 = call i32 @mxc_iomux_set_pad(i32 %5, i32 %6)
  %8 = load i32, i32* @MX31_PIN_USBH2_DIR, align 4
  %9 = load i32, i32* @USB_PAD_CFG, align 4
  %10 = call i32 @mxc_iomux_set_pad(i32 %8, i32 %9)
  %11 = load i32, i32* @MX31_PIN_USBH2_NXT, align 4
  %12 = load i32, i32* @USB_PAD_CFG, align 4
  %13 = call i32 @mxc_iomux_set_pad(i32 %11, i32 %12)
  %14 = load i32, i32* @MX31_PIN_USBH2_STP, align 4
  %15 = load i32, i32* @USB_PAD_CFG, align 4
  %16 = call i32 @mxc_iomux_set_pad(i32 %14, i32 %15)
  %17 = load i32, i32* @MX31_PIN_USBH2_DATA0, align 4
  %18 = load i32, i32* @USB_PAD_CFG, align 4
  %19 = call i32 @mxc_iomux_set_pad(i32 %17, i32 %18)
  %20 = load i32, i32* @MX31_PIN_USBH2_DATA1, align 4
  %21 = load i32, i32* @USB_PAD_CFG, align 4
  %22 = call i32 @mxc_iomux_set_pad(i32 %20, i32 %21)
  %23 = load i32, i32* @MX31_PIN_PC_VS2, align 4
  %24 = load i32, i32* @USB_PAD_CFG, align 4
  %25 = call i32 @mxc_iomux_set_pad(i32 %23, i32 %24)
  %26 = load i32, i32* @MX31_PIN_PC_BVD1, align 4
  %27 = load i32, i32* @USB_PAD_CFG, align 4
  %28 = call i32 @mxc_iomux_set_pad(i32 %26, i32 %27)
  %29 = load i32, i32* @MX31_PIN_PC_BVD2, align 4
  %30 = load i32, i32* @USB_PAD_CFG, align 4
  %31 = call i32 @mxc_iomux_set_pad(i32 %29, i32 %30)
  %32 = load i32, i32* @MX31_PIN_PC_RST, align 4
  %33 = load i32, i32* @USB_PAD_CFG, align 4
  %34 = call i32 @mxc_iomux_set_pad(i32 %32, i32 %33)
  %35 = load i32, i32* @MX31_PIN_IOIS16, align 4
  %36 = load i32, i32* @USB_PAD_CFG, align 4
  %37 = call i32 @mxc_iomux_set_pad(i32 %35, i32 %36)
  %38 = load i32, i32* @MX31_PIN_PC_RW_B, align 4
  %39 = load i32, i32* @USB_PAD_CFG, align 4
  %40 = call i32 @mxc_iomux_set_pad(i32 %38, i32 %39)
  %41 = load i32, i32* @USBH2_RST_B, align 4
  %42 = call i32 @gpio_request(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %69

48:                                               ; preds = %1
  %49 = load i32, i32* @USBH2_RST_B, align 4
  %50 = call i32 @gpio_direction_output(i32 %49, i32 0)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %65

55:                                               ; preds = %48
  %56 = call i32 @mdelay(i32 1)
  %57 = load i32, i32* @USBH2_RST_B, align 4
  %58 = call i32 @gpio_set_value(i32 %57, i32 1)
  %59 = call i32 @mdelay(i32 10)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %64 = call i32 @mx31_initialize_usb_hw(i32 %62, i32 %63)
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @USBH2_RST_B, align 4
  %67 = call i32 @gpio_free(i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %55, %45
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mx31_initialize_usb_hw(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
