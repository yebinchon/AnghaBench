; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-armadillo5x0.c_usbh2_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-armadillo5x0.c_usbh2_init.c"
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
@MX31_PIN_SRXD6 = common dso_local global i32 0, align 4
@MX31_PIN_STXD6 = common dso_local global i32 0, align 4
@MX31_PIN_SFS3 = common dso_local global i32 0, align 4
@MX31_PIN_SCK3 = common dso_local global i32 0, align 4
@MX31_PIN_SRXD3 = common dso_local global i32 0, align 4
@MX31_PIN_STXD3 = common dso_local global i32 0, align 4
@MUX_PGP_UH2 = common dso_local global i32 0, align 4
@USBH2_CS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"USB-H2-CS\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to request the usb host 2 CS gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to drive the usb host 2 CS gpio\0A\00", align 1
@USBH2_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"USB-H2-RESET\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to request the usb host 2 reset gpio\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to reset the usb host 2 phy\0A\00", align 1
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@MXC_EHCI_INTERFACE_DIFF_UNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbh2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbh2_init(%struct.platform_device* %0) #0 {
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
  %23 = load i32, i32* @MX31_PIN_SRXD6, align 4
  %24 = load i32, i32* @USB_PAD_CFG, align 4
  %25 = call i32 @mxc_iomux_set_pad(i32 %23, i32 %24)
  %26 = load i32, i32* @MX31_PIN_STXD6, align 4
  %27 = load i32, i32* @USB_PAD_CFG, align 4
  %28 = call i32 @mxc_iomux_set_pad(i32 %26, i32 %27)
  %29 = load i32, i32* @MX31_PIN_SFS3, align 4
  %30 = load i32, i32* @USB_PAD_CFG, align 4
  %31 = call i32 @mxc_iomux_set_pad(i32 %29, i32 %30)
  %32 = load i32, i32* @MX31_PIN_SCK3, align 4
  %33 = load i32, i32* @USB_PAD_CFG, align 4
  %34 = call i32 @mxc_iomux_set_pad(i32 %32, i32 %33)
  %35 = load i32, i32* @MX31_PIN_SRXD3, align 4
  %36 = load i32, i32* @USB_PAD_CFG, align 4
  %37 = call i32 @mxc_iomux_set_pad(i32 %35, i32 %36)
  %38 = load i32, i32* @MX31_PIN_STXD3, align 4
  %39 = load i32, i32* @USB_PAD_CFG, align 4
  %40 = call i32 @mxc_iomux_set_pad(i32 %38, i32 %39)
  %41 = load i32, i32* @MUX_PGP_UH2, align 4
  %42 = call i32 @mxc_iomux_set_gpr(i32 %41, i32 1)
  %43 = load i32, i32* @USBH2_CS, align 4
  %44 = call i32 @gpio_request(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %92

50:                                               ; preds = %1
  %51 = load i32, i32* @USBH2_CS, align 4
  %52 = call i32 @gpio_direction_output(i32 %51, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %88

57:                                               ; preds = %50
  %58 = load i32, i32* @USBH2_RESET, align 4
  %59 = call i32 @gpio_request(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %88

64:                                               ; preds = %57
  %65 = load i32, i32* @USBH2_RESET, align 4
  %66 = call i32 @gpio_direction_output(i32 %65, i32 1)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %85

71:                                               ; preds = %64
  %72 = load i32, i32* @USBH2_RESET, align 4
  %73 = call i32 @gpio_set_value(i32 %72, i32 0)
  %74 = call i32 @mdelay(i32 5)
  %75 = load i32, i32* @USBH2_RESET, align 4
  %76 = call i32 @gpio_set_value(i32 %75, i32 1)
  %77 = call i32 @mdelay(i32 10)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %82 = load i32, i32* @MXC_EHCI_INTERFACE_DIFF_UNI, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @mx31_initialize_usb_hw(i32 %80, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %92

85:                                               ; preds = %69
  %86 = load i32, i32* @USBH2_RESET, align 4
  %87 = call i32 @gpio_free(i32 %86)
  br label %88

88:                                               ; preds = %85, %62, %55
  %89 = load i32, i32* @USBH2_CS, align 4
  %90 = call i32 @gpio_free(i32 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %71, %47
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @mxc_iomux_set_gpr(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mx31_initialize_usb_hw(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
