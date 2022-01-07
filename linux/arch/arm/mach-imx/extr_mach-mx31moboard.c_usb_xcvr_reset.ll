; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31moboard.c_usb_xcvr_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31moboard.c_usb_xcvr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MX31_PIN_USBOTG_DATA0 = common dso_local global i32 0, align 4
@USB_PAD_CFG = common dso_local global i32 0, align 4
@PAD_CTL_100K_PD = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA2 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA3 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA4 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA5 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA6 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DATA7 = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_CLK = common dso_local global i32 0, align 4
@PAD_CTL_100K_PU = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_DIR = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_NXT = common dso_local global i32 0, align 4
@MX31_PIN_USBOTG_STP = common dso_local global i32 0, align 4
@MUX_PGP_UH2 = common dso_local global i32 0, align 4
@MX31_PIN_USBH2_CLK = common dso_local global i32 0, align 4
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
@OTG_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"usb-udc-en\00", align 1
@USBH2_EN_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"usbh2-en\00", align 1
@USB_RESET_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"usb-reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usb_xcvr_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_xcvr_reset() #0 {
  %1 = load i32, i32* @MX31_PIN_USBOTG_DATA0, align 4
  %2 = load i32, i32* @USB_PAD_CFG, align 4
  %3 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @mxc_iomux_set_pad(i32 %1, i32 %4)
  %6 = load i32, i32* @MX31_PIN_USBOTG_DATA1, align 4
  %7 = load i32, i32* @USB_PAD_CFG, align 4
  %8 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mxc_iomux_set_pad(i32 %6, i32 %9)
  %11 = load i32, i32* @MX31_PIN_USBOTG_DATA2, align 4
  %12 = load i32, i32* @USB_PAD_CFG, align 4
  %13 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @mxc_iomux_set_pad(i32 %11, i32 %14)
  %16 = load i32, i32* @MX31_PIN_USBOTG_DATA3, align 4
  %17 = load i32, i32* @USB_PAD_CFG, align 4
  %18 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mxc_iomux_set_pad(i32 %16, i32 %19)
  %21 = load i32, i32* @MX31_PIN_USBOTG_DATA4, align 4
  %22 = load i32, i32* @USB_PAD_CFG, align 4
  %23 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mxc_iomux_set_pad(i32 %21, i32 %24)
  %26 = load i32, i32* @MX31_PIN_USBOTG_DATA5, align 4
  %27 = load i32, i32* @USB_PAD_CFG, align 4
  %28 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mxc_iomux_set_pad(i32 %26, i32 %29)
  %31 = load i32, i32* @MX31_PIN_USBOTG_DATA6, align 4
  %32 = load i32, i32* @USB_PAD_CFG, align 4
  %33 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mxc_iomux_set_pad(i32 %31, i32 %34)
  %36 = load i32, i32* @MX31_PIN_USBOTG_DATA7, align 4
  %37 = load i32, i32* @USB_PAD_CFG, align 4
  %38 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @mxc_iomux_set_pad(i32 %36, i32 %39)
  %41 = load i32, i32* @MX31_PIN_USBOTG_CLK, align 4
  %42 = load i32, i32* @USB_PAD_CFG, align 4
  %43 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @mxc_iomux_set_pad(i32 %41, i32 %44)
  %46 = load i32, i32* @MX31_PIN_USBOTG_DIR, align 4
  %47 = load i32, i32* @USB_PAD_CFG, align 4
  %48 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @mxc_iomux_set_pad(i32 %46, i32 %49)
  %51 = load i32, i32* @MX31_PIN_USBOTG_NXT, align 4
  %52 = load i32, i32* @USB_PAD_CFG, align 4
  %53 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @mxc_iomux_set_pad(i32 %51, i32 %54)
  %56 = load i32, i32* @MX31_PIN_USBOTG_STP, align 4
  %57 = load i32, i32* @USB_PAD_CFG, align 4
  %58 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @mxc_iomux_set_pad(i32 %56, i32 %59)
  %61 = load i32, i32* @MUX_PGP_UH2, align 4
  %62 = call i32 @mxc_iomux_set_gpr(i32 %61, i32 1)
  %63 = load i32, i32* @MX31_PIN_USBH2_CLK, align 4
  %64 = load i32, i32* @USB_PAD_CFG, align 4
  %65 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @mxc_iomux_set_pad(i32 %63, i32 %66)
  %68 = load i32, i32* @MX31_PIN_USBH2_DIR, align 4
  %69 = load i32, i32* @USB_PAD_CFG, align 4
  %70 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @mxc_iomux_set_pad(i32 %68, i32 %71)
  %73 = load i32, i32* @MX31_PIN_USBH2_NXT, align 4
  %74 = load i32, i32* @USB_PAD_CFG, align 4
  %75 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @mxc_iomux_set_pad(i32 %73, i32 %76)
  %78 = load i32, i32* @MX31_PIN_USBH2_STP, align 4
  %79 = load i32, i32* @USB_PAD_CFG, align 4
  %80 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @mxc_iomux_set_pad(i32 %78, i32 %81)
  %83 = load i32, i32* @MX31_PIN_USBH2_DATA0, align 4
  %84 = load i32, i32* @USB_PAD_CFG, align 4
  %85 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @mxc_iomux_set_pad(i32 %83, i32 %86)
  %88 = load i32, i32* @MX31_PIN_USBH2_DATA1, align 4
  %89 = load i32, i32* @USB_PAD_CFG, align 4
  %90 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @mxc_iomux_set_pad(i32 %88, i32 %91)
  %93 = load i32, i32* @MX31_PIN_SRXD6, align 4
  %94 = load i32, i32* @USB_PAD_CFG, align 4
  %95 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @mxc_iomux_set_pad(i32 %93, i32 %96)
  %98 = load i32, i32* @MX31_PIN_STXD6, align 4
  %99 = load i32, i32* @USB_PAD_CFG, align 4
  %100 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @mxc_iomux_set_pad(i32 %98, i32 %101)
  %103 = load i32, i32* @MX31_PIN_SFS3, align 4
  %104 = load i32, i32* @USB_PAD_CFG, align 4
  %105 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @mxc_iomux_set_pad(i32 %103, i32 %106)
  %108 = load i32, i32* @MX31_PIN_SCK3, align 4
  %109 = load i32, i32* @USB_PAD_CFG, align 4
  %110 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @mxc_iomux_set_pad(i32 %108, i32 %111)
  %113 = load i32, i32* @MX31_PIN_SRXD3, align 4
  %114 = load i32, i32* @USB_PAD_CFG, align 4
  %115 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @mxc_iomux_set_pad(i32 %113, i32 %116)
  %118 = load i32, i32* @MX31_PIN_STXD3, align 4
  %119 = load i32, i32* @USB_PAD_CFG, align 4
  %120 = load i32, i32* @PAD_CTL_100K_PD, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @mxc_iomux_set_pad(i32 %118, i32 %121)
  %123 = load i32, i32* @OTG_EN_B, align 4
  %124 = call i32 @gpio_request(i32 %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @OTG_EN_B, align 4
  %126 = call i32 @gpio_direction_output(i32 %125, i32 0)
  %127 = load i32, i32* @USBH2_EN_B, align 4
  %128 = call i32 @gpio_request(i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* @USBH2_EN_B, align 4
  %130 = call i32 @gpio_direction_output(i32 %129, i32 0)
  %131 = load i32, i32* @USB_RESET_B, align 4
  %132 = call i32 @gpio_request(i32 %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @USB_RESET_B, align 4
  %134 = call i32 @gpio_direction_output(i32 %133, i32 0)
  %135 = call i32 @mdelay(i32 1)
  %136 = load i32, i32* @USB_RESET_B, align 4
  %137 = call i32 @gpio_set_value(i32 %136, i32 1)
  %138 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @mxc_iomux_set_gpr(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
