; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31moboard-marxbot.c_marxbot_usbh1_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31moboard-marxbot.c_marxbot_usbh1_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@MUX_PGP_USB_SUSPEND = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_MISO = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_MOSI = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS0 = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS1 = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS2 = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SCLK = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SPI_RDY = common dso_local global i32 0, align 4
@MX31_PIN_SFS6 = common dso_local global i32 0, align 4
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@MXC_EHCI_INTERFACE_SINGLE_UNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @marxbot_usbh1_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marxbot_usbh1_hw_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = load i32, i32* @MUX_PGP_USB_SUSPEND, align 4
  %4 = call i32 @mxc_iomux_set_gpr(i32 %3, i32 1)
  %5 = load i32, i32* @MX31_PIN_CSPI1_MISO, align 4
  %6 = load i32, i32* @USB_PAD_CFG, align 4
  %7 = call i32 @mxc_iomux_set_pad(i32 %5, i32 %6)
  %8 = load i32, i32* @MX31_PIN_CSPI1_MOSI, align 4
  %9 = load i32, i32* @USB_PAD_CFG, align 4
  %10 = call i32 @mxc_iomux_set_pad(i32 %8, i32 %9)
  %11 = load i32, i32* @MX31_PIN_CSPI1_SS0, align 4
  %12 = load i32, i32* @USB_PAD_CFG, align 4
  %13 = call i32 @mxc_iomux_set_pad(i32 %11, i32 %12)
  %14 = load i32, i32* @MX31_PIN_CSPI1_SS1, align 4
  %15 = load i32, i32* @USB_PAD_CFG, align 4
  %16 = call i32 @mxc_iomux_set_pad(i32 %14, i32 %15)
  %17 = load i32, i32* @MX31_PIN_CSPI1_SS2, align 4
  %18 = load i32, i32* @USB_PAD_CFG, align 4
  %19 = call i32 @mxc_iomux_set_pad(i32 %17, i32 %18)
  %20 = load i32, i32* @MX31_PIN_CSPI1_SCLK, align 4
  %21 = load i32, i32* @USB_PAD_CFG, align 4
  %22 = call i32 @mxc_iomux_set_pad(i32 %20, i32 %21)
  %23 = load i32, i32* @MX31_PIN_CSPI1_SPI_RDY, align 4
  %24 = load i32, i32* @USB_PAD_CFG, align 4
  %25 = call i32 @mxc_iomux_set_pad(i32 %23, i32 %24)
  %26 = load i32, i32* @MX31_PIN_SFS6, align 4
  %27 = load i32, i32* @USB_PAD_CFG, align 4
  %28 = call i32 @mxc_iomux_set_pad(i32 %26, i32 %27)
  %29 = call i32 @mdelay(i32 10)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %34 = load i32, i32* @MXC_EHCI_INTERFACE_SINGLE_UNI, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mx31_initialize_usb_hw(i32 %32, i32 %35)
  ret i32 %36
}

declare dso_local i32 @mxc_iomux_set_gpr(i32, i32) #1

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mx31_initialize_usb_hw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
