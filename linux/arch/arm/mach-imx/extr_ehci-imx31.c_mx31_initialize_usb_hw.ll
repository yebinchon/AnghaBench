; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_ehci-imx31.c_mx31_initialize_usb_hw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_ehci-imx31.c_mx31_initialize_usb_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MX31_USB_BASE_ADDR = common dso_local global i64 0, align 8
@USBCTRL_OTGBASE_OFFSET = common dso_local global i64 0, align 8
@MX31_OTG_SIC_MASK = common dso_local global i32 0, align 4
@MX31_OTG_PM_BIT = common dso_local global i32 0, align 4
@MXC_EHCI_INTERFACE_MASK = common dso_local global i32 0, align 4
@MX31_OTG_SIC_SHIFT = common dso_local global i32 0, align 4
@MXC_EHCI_POWER_PINS_ENABLED = common dso_local global i32 0, align 4
@MX31_H1_SIC_MASK = common dso_local global i32 0, align 4
@MX31_H1_PM_BIT = common dso_local global i32 0, align 4
@MX31_H1_DT_BIT = common dso_local global i32 0, align 4
@MX31_H1_SIC_SHIFT = common dso_local global i32 0, align 4
@MXC_EHCI_TTL_ENABLED = common dso_local global i32 0, align 4
@MX31_H2_SIC_MASK = common dso_local global i32 0, align 4
@MX31_H2_PM_BIT = common dso_local global i32 0, align 4
@MX31_H2_DT_BIT = common dso_local global i32 0, align 4
@MX31_H2_SIC_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mx31_initialize_usb_hw(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @MX31_USB_BASE_ADDR, align 8
  %8 = load i64, i64* @USBCTRL_OTGBASE_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @MX31_IO_ADDRESS(i64 %9)
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %104 [
    i32 0, label %13
    i32 1, label %36
    i32 2, label %70
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @MX31_OTG_SIC_MASK, align 4
  %15 = load i32, i32* @MX31_OTG_PM_BIT, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MXC_EHCI_INTERFACE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @MX31_OTG_SIC_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %13
  %32 = load i32, i32* @MX31_OTG_PM_BIT, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %13
  br label %107

36:                                               ; preds = %2
  %37 = load i32, i32* @MX31_H1_SIC_MASK, align 4
  %38 = load i32, i32* @MX31_H1_PM_BIT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MX31_H1_DT_BIT, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MXC_EHCI_INTERFACE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @MX31_H1_SIC_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %36
  %57 = load i32, i32* @MX31_H1_PM_BIT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %36
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MXC_EHCI_TTL_ENABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @MX31_H1_DT_BIT, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %60
  br label %107

70:                                               ; preds = %2
  %71 = load i32, i32* @MX31_H2_SIC_MASK, align 4
  %72 = load i32, i32* @MX31_H2_PM_BIT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MX31_H2_DT_BIT, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @MXC_EHCI_INTERFACE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @MX31_H2_SIC_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @MXC_EHCI_POWER_PINS_ENABLED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %70
  %91 = load i32, i32* @MX31_H2_PM_BIT, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %70
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MXC_EHCI_TTL_ENABLED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @MX31_H2_DT_BIT, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %94
  br label %107

104:                                              ; preds = %2
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %114

107:                                              ; preds = %103, %69, %35
  %108 = load i32, i32* %6, align 4
  %109 = load i64, i64* @MX31_USB_BASE_ADDR, align 8
  %110 = load i64, i64* @USBCTRL_OTGBASE_OFFSET, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @MX31_IO_ADDRESS(i64 %111)
  %113 = call i32 @writel(i32 %108, i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MX31_IO_ADDRESS(i64) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
