; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31lilly.c_usbh1_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31lilly.c_usbh1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@MX31_PIN_CSPI1_MOSI__USBH1_RXDM = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_MISO__USBH1_RXDP = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS0__USBH1_TXDM = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS1__USBH1_TXDP = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS2__USBH1_RCV = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SCLK__USBH1_OEB = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SPI_RDY__USBH1_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"USB H1\00", align 1
@MX31_PIN_CSPI1_MOSI = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_MISO = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS0 = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS1 = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SS2 = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SCLK = common dso_local global i32 0, align 4
@MX31_PIN_CSPI1_SPI_RDY = common dso_local global i32 0, align 4
@MUX_PGP_USB_SUSPEND = common dso_local global i32 0, align 4
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@MXC_EHCI_INTERFACE_SINGLE_UNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbh1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbh1_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca [7 x i32], align 16
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @MX31_PIN_CSPI1_MOSI__USBH1_RXDM, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @MX31_PIN_CSPI1_MISO__USBH1_RXDP, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @MX31_PIN_CSPI1_SS0__USBH1_TXDM, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @MX31_PIN_CSPI1_SS1__USBH1_TXDP, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @MX31_PIN_CSPI1_SS2__USBH1_RCV, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @MX31_PIN_CSPI1_SCLK__USBH1_OEB, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @MX31_PIN_CSPI1_SPI_RDY__USBH1_FS, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = call i32 @mxc_iomux_setup_multiple_pins(i32* %18, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @MX31_PIN_CSPI1_MOSI, align 4
  %23 = load i32, i32* @USB_PAD_CFG, align 4
  %24 = call i32 @mxc_iomux_set_pad(i32 %22, i32 %23)
  %25 = load i32, i32* @MX31_PIN_CSPI1_MISO, align 4
  %26 = load i32, i32* @USB_PAD_CFG, align 4
  %27 = call i32 @mxc_iomux_set_pad(i32 %25, i32 %26)
  %28 = load i32, i32* @MX31_PIN_CSPI1_SS0, align 4
  %29 = load i32, i32* @USB_PAD_CFG, align 4
  %30 = call i32 @mxc_iomux_set_pad(i32 %28, i32 %29)
  %31 = load i32, i32* @MX31_PIN_CSPI1_SS1, align 4
  %32 = load i32, i32* @USB_PAD_CFG, align 4
  %33 = call i32 @mxc_iomux_set_pad(i32 %31, i32 %32)
  %34 = load i32, i32* @MX31_PIN_CSPI1_SS2, align 4
  %35 = load i32, i32* @USB_PAD_CFG, align 4
  %36 = call i32 @mxc_iomux_set_pad(i32 %34, i32 %35)
  %37 = load i32, i32* @MX31_PIN_CSPI1_SCLK, align 4
  %38 = load i32, i32* @USB_PAD_CFG, align 4
  %39 = call i32 @mxc_iomux_set_pad(i32 %37, i32 %38)
  %40 = load i32, i32* @MX31_PIN_CSPI1_SPI_RDY, align 4
  %41 = load i32, i32* @USB_PAD_CFG, align 4
  %42 = call i32 @mxc_iomux_set_pad(i32 %40, i32 %41)
  %43 = load i32, i32* @MUX_PGP_USB_SUSPEND, align 4
  %44 = call i32 @mxc_iomux_set_gpr(i32 %43, i32 1)
  %45 = call i32 @mdelay(i32 10)
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %50 = load i32, i32* @MXC_EHCI_INTERFACE_SINGLE_UNI, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mx31_initialize_usb_hw(i32 %48, i32 %51)
  ret i32 %52
}

declare dso_local i32 @mxc_iomux_setup_multiple_pins(i32*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @mxc_iomux_set_gpr(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mx31_initialize_usb_hw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
