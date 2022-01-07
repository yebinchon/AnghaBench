; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31lilly.c_usbh2_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31lilly.c_usbh2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@MX31_PIN_USBH2_DATA0__USBH2_DATA0 = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DATA1__USBH2_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_CLK__USBH2_CLK = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DIR__USBH2_DIR = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_NXT__USBH2_NXT = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_STP__USBH2_STP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"USB H2\00", align 1
@MX31_PIN_USBH2_CLK = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DIR = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_NXT = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_STP = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DATA0 = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_SRXD6 = common dso_local global i32 0, align 4
@MX31_PIN_STXD6 = common dso_local global i32 0, align 4
@MX31_PIN_SFS3 = common dso_local global i32 0, align 4
@MX31_PIN_SCK3 = common dso_local global i32 0, align 4
@MX31_PIN_SRXD3 = common dso_local global i32 0, align 4
@MX31_PIN_STXD3 = common dso_local global i32 0, align 4
@MUX_PGP_UH2 = common dso_local global i32 0, align 4
@MX31_PIN_DTR_DCE1 = common dso_local global i32 0, align 4
@IOMUX_CONFIG_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"USBH2_CS\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"USBH2 CS\00", align 1
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbh2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbh2_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @MX31_PIN_USBH2_DATA0__USBH2_DATA0, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @MX31_PIN_USBH2_DATA1__USBH2_DATA1, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @MX31_PIN_USBH2_CLK__USBH2_CLK, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @MX31_PIN_USBH2_DIR__USBH2_DIR, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @MX31_PIN_USBH2_NXT__USBH2_NXT, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @MX31_PIN_USBH2_STP__USBH2_STP, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = call i32 @mxc_iomux_setup_multiple_pins(i32* %16, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @MX31_PIN_USBH2_CLK, align 4
  %21 = load i32, i32* @USB_PAD_CFG, align 4
  %22 = call i32 @mxc_iomux_set_pad(i32 %20, i32 %21)
  %23 = load i32, i32* @MX31_PIN_USBH2_DIR, align 4
  %24 = load i32, i32* @USB_PAD_CFG, align 4
  %25 = call i32 @mxc_iomux_set_pad(i32 %23, i32 %24)
  %26 = load i32, i32* @MX31_PIN_USBH2_NXT, align 4
  %27 = load i32, i32* @USB_PAD_CFG, align 4
  %28 = call i32 @mxc_iomux_set_pad(i32 %26, i32 %27)
  %29 = load i32, i32* @MX31_PIN_USBH2_STP, align 4
  %30 = load i32, i32* @USB_PAD_CFG, align 4
  %31 = call i32 @mxc_iomux_set_pad(i32 %29, i32 %30)
  %32 = load i32, i32* @MX31_PIN_USBH2_DATA0, align 4
  %33 = load i32, i32* @USB_PAD_CFG, align 4
  %34 = call i32 @mxc_iomux_set_pad(i32 %32, i32 %33)
  %35 = load i32, i32* @MX31_PIN_USBH2_DATA1, align 4
  %36 = load i32, i32* @USB_PAD_CFG, align 4
  %37 = call i32 @mxc_iomux_set_pad(i32 %35, i32 %36)
  %38 = load i32, i32* @MX31_PIN_SRXD6, align 4
  %39 = load i32, i32* @USB_PAD_CFG, align 4
  %40 = call i32 @mxc_iomux_set_pad(i32 %38, i32 %39)
  %41 = load i32, i32* @MX31_PIN_STXD6, align 4
  %42 = load i32, i32* @USB_PAD_CFG, align 4
  %43 = call i32 @mxc_iomux_set_pad(i32 %41, i32 %42)
  %44 = load i32, i32* @MX31_PIN_SFS3, align 4
  %45 = load i32, i32* @USB_PAD_CFG, align 4
  %46 = call i32 @mxc_iomux_set_pad(i32 %44, i32 %45)
  %47 = load i32, i32* @MX31_PIN_SCK3, align 4
  %48 = load i32, i32* @USB_PAD_CFG, align 4
  %49 = call i32 @mxc_iomux_set_pad(i32 %47, i32 %48)
  %50 = load i32, i32* @MX31_PIN_SRXD3, align 4
  %51 = load i32, i32* @USB_PAD_CFG, align 4
  %52 = call i32 @mxc_iomux_set_pad(i32 %50, i32 %51)
  %53 = load i32, i32* @MX31_PIN_STXD3, align 4
  %54 = load i32, i32* @USB_PAD_CFG, align 4
  %55 = call i32 @mxc_iomux_set_pad(i32 %53, i32 %54)
  %56 = load i32, i32* @MUX_PGP_UH2, align 4
  %57 = call i32 @mxc_iomux_set_gpr(i32 %56, i32 1)
  %58 = load i32, i32* @MX31_PIN_DTR_DCE1, align 4
  %59 = load i32, i32* @IOMUX_CONFIG_GPIO, align 4
  %60 = call i32 @IOMUX_MODE(i32 %58, i32 %59)
  %61 = call i32 @mxc_iomux_alloc_pin(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @MX31_PIN_DTR_DCE1, align 4
  %63 = call i32 @IOMUX_TO_GPIO(i32 %62)
  %64 = call i32 @gpio_request(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @MX31_PIN_DTR_DCE1, align 4
  %66 = call i32 @IOMUX_TO_GPIO(i32 %65)
  %67 = call i32 @gpio_direction_output(i32 %66, i32 0)
  %68 = call i32 @mdelay(i32 10)
  %69 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %73 = call i32 @mx31_initialize_usb_hw(i32 %71, i32 %72)
  ret i32 %73
}

declare dso_local i32 @mxc_iomux_setup_multiple_pins(i32*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @mxc_iomux_set_gpr(i32, i32) #1

declare dso_local i32 @mxc_iomux_alloc_pin(i32, i8*) #1

declare dso_local i32 @IOMUX_MODE(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @IOMUX_TO_GPIO(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mx31_initialize_usb_hw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
