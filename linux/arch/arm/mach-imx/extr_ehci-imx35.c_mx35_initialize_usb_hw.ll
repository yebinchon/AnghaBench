; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_ehci-imx35.c_mx35_initialize_usb_hw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_ehci-imx35.c_mx35_initialize_usb_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MX35_USB_BASE_ADDR = common dso_local global i64 0, align 8
@USBCTRL_OTGBASE_OFFSET = common dso_local global i64 0, align 8
@MX35_OTG_SIC_MASK = common dso_local global i32 0, align 4
@MX35_OTG_PM_BIT = common dso_local global i32 0, align 4
@MX35_OTG_PP_BIT = common dso_local global i32 0, align 4
@MX35_OTG_OCPOL_BIT = common dso_local global i32 0, align 4
@MXC_EHCI_INTERFACE_MASK = common dso_local global i32 0, align 4
@MX35_OTG_SIC_SHIFT = common dso_local global i32 0, align 4
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@MXC_EHCI_PWR_PIN_ACTIVE_HIGH = common dso_local global i32 0, align 4
@MXC_EHCI_OC_PIN_ACTIVE_LOW = common dso_local global i32 0, align 4
@MX35_H1_SIC_MASK = common dso_local global i32 0, align 4
@MX35_H1_PM_BIT = common dso_local global i32 0, align 4
@MX35_H1_PP_BIT = common dso_local global i32 0, align 4
@MX35_H1_OCPOL_BIT = common dso_local global i32 0, align 4
@MX35_H1_TLL_BIT = common dso_local global i32 0, align 4
@MX35_H1_USBTE_BIT = common dso_local global i32 0, align 4
@MX35_H1_IPPUE_DOWN_BIT = common dso_local global i32 0, align 4
@MX35_H1_IPPUE_UP_BIT = common dso_local global i32 0, align 4
@MX35_H1_SIC_SHIFT = common dso_local global i32 0, align 4
@MXC_EHCI_TTL_ENABLED = common dso_local global i32 0, align 4
@MXC_EHCI_INTERNAL_PHY = common dso_local global i32 0, align 4
@MXC_EHCI_IPPUE_DOWN = common dso_local global i32 0, align 4
@MXC_EHCI_IPPUE_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mx35_initialize_usb_hw(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @MX35_USB_BASE_ADDR, align 8
  %8 = load i64, i64* @USBCTRL_OTGBASE_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @MX35_IO_ADDRESS(i64 %9)
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %147 [
    i32 0, label %13
    i32 1, label %58
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @MX35_OTG_SIC_MASK, align 4
  %15 = load i32, i32* @MX35_OTG_PM_BIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MX35_OTG_PP_BIT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MX35_OTG_OCPOL_BIT, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MXC_EHCI_INTERFACE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @MX35_OTG_SIC_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %13
  %36 = load i32, i32* @MX35_OTG_PM_BIT, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %13
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MXC_EHCI_PWR_PIN_ACTIVE_HIGH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @MX35_OTG_PP_BIT, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MXC_EHCI_OC_PIN_ACTIVE_LOW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @MX35_OTG_OCPOL_BIT, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %48
  br label %150

58:                                               ; preds = %2
  %59 = load i32, i32* @MX35_H1_SIC_MASK, align 4
  %60 = load i32, i32* @MX35_H1_PM_BIT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MX35_H1_PP_BIT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MX35_H1_OCPOL_BIT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MX35_H1_TLL_BIT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MX35_H1_USBTE_BIT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MX35_H1_IPPUE_DOWN_BIT, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MX35_H1_IPPUE_UP_BIT, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MXC_EHCI_INTERFACE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @MX35_H1_SIC_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %58
  %89 = load i32, i32* @MX35_H1_PM_BIT, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %58
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @MXC_EHCI_PWR_PIN_ACTIVE_HIGH, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @MX35_H1_PP_BIT, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @MXC_EHCI_OC_PIN_ACTIVE_LOW, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @MX35_H1_OCPOL_BIT, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @MXC_EHCI_TTL_ENABLED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @MX35_H1_TLL_BIT, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MXC_EHCI_INTERNAL_PHY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @MX35_H1_USBTE_BIT, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @MXC_EHCI_IPPUE_DOWN, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @MX35_H1_IPPUE_DOWN_BIT, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @MXC_EHCI_IPPUE_UP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @MX35_H1_IPPUE_UP_BIT, align 4
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %142, %137
  br label %150

147:                                              ; preds = %2
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %146, %57
  %151 = load i32, i32* %6, align 4
  %152 = load i64, i64* @MX35_USB_BASE_ADDR, align 8
  %153 = load i64, i64* @USBCTRL_OTGBASE_OFFSET, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @MX35_IO_ADDRESS(i64 %154)
  %156 = call i32 @writel(i32 %151, i32 %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %147
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MX35_IO_ADDRESS(i64) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
