; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/usb/host/extr_ehci-oxnas.c_start_oxnas_usb_ehci.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/usb/host/extr_ehci-oxnas.c_start_oxnas_usb_ehci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_CTRL_REF300_DIV = common dso_local global i32 0, align 4
@SYS_CTRL_RST_USBHS = common dso_local global i32 0, align 4
@SYS_CTRL_RST_USBHSPHYA = common dso_local global i32 0, align 4
@SYS_CTRL_RST_USBHSPHYB = common dso_local global i32 0, align 4
@USBHSPHY_TEST_ADD = common dso_local global i64 0, align 8
@USBHSPHY_TEST_DIN = common dso_local global i32 0, align 4
@SYS_CTRL_USBHSPHY_CTRL = common dso_local global i32 0, align 4
@USBHSPHY_TEST_CLK = common dso_local global i64 0, align 8
@USB_CLK_INTERNAL = common dso_local global i64 0, align 8
@USB_INT_CLK_REF300 = common dso_local global i64 0, align 8
@SYS_CTRL_USB_CTRL = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_USBHS = common dso_local global i32 0, align 4
@PLLB_ENSAT = common dso_local global i32 0, align 4
@PLLB_OUTDIV = common dso_local global i32 0, align 4
@PLLB_REFDIV = common dso_local global i32 0, align 4
@SEC_CTRL_PLLB_CTRL0 = common dso_local global i32 0, align 4
@SEC_CTRL_PLLB_DIV_CTRL = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_REF600 = common dso_local global i32 0, align 4
@SYS_CTRL_RST_PLLB = common dso_local global i32 0, align 4
@USB_INT_CLK_PLLB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_oxnas_usb_ehci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_oxnas_usb_ehci() #0 {
  %1 = call i64 @REF300_DIV_INT(i32 25)
  %2 = call i64 @REF300_DIV_FRAC(i32 0)
  %3 = or i64 %1, %2
  %4 = load i32, i32* @SYS_CTRL_REF300_DIV, align 4
  %5 = call i32 @writel(i64 %3, i32 %4)
  %6 = load i32, i32* @SYS_CTRL_RST_USBHS, align 4
  %7 = call i32 @reset_block(i32 %6, i32 1)
  %8 = load i32, i32* @SYS_CTRL_RST_USBHS, align 4
  %9 = call i32 @reset_block(i32 %8, i32 0)
  %10 = load i32, i32* @SYS_CTRL_RST_USBHSPHYA, align 4
  %11 = call i32 @reset_block(i32 %10, i32 1)
  %12 = load i32, i32* @SYS_CTRL_RST_USBHSPHYA, align 4
  %13 = call i32 @reset_block(i32 %12, i32 0)
  %14 = load i32, i32* @SYS_CTRL_RST_USBHSPHYB, align 4
  %15 = call i32 @reset_block(i32 %14, i32 1)
  %16 = load i32, i32* @SYS_CTRL_RST_USBHSPHYB, align 4
  %17 = call i32 @reset_block(i32 %16, i32 0)
  %18 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %19 = shl i64 2, %18
  %20 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 224, %21
  %23 = or i64 %19, %22
  %24 = load i32, i32* @SYS_CTRL_USBHSPHY_CTRL, align 4
  %25 = call i32 @writel(i64 %23, i32 %24)
  %26 = load i64, i64* @USBHSPHY_TEST_CLK, align 8
  %27 = shl i64 1, %26
  %28 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %29 = shl i64 2, %28
  %30 = or i64 %27, %29
  %31 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 224, %32
  %34 = or i64 %30, %33
  %35 = load i32, i32* @SYS_CTRL_USBHSPHY_CTRL, align 4
  %36 = call i32 @writel(i64 %34, i32 %35)
  %37 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %38 = shl i64 15, %37
  %39 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 170, %40
  %42 = or i64 %38, %41
  %43 = load i32, i32* @SYS_CTRL_USBHSPHY_CTRL, align 4
  %44 = call i32 @writel(i64 %42, i32 %43)
  %45 = load i64, i64* @USBHSPHY_TEST_CLK, align 8
  %46 = shl i64 1, %45
  %47 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %48 = shl i64 15, %47
  %49 = or i64 %46, %48
  %50 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 170, %51
  %53 = or i64 %49, %52
  %54 = load i32, i32* @SYS_CTRL_USBHSPHY_CTRL, align 4
  %55 = call i32 @writel(i64 %53, i32 %54)
  %56 = load i64, i64* @USB_CLK_INTERNAL, align 8
  %57 = load i64, i64* @USB_INT_CLK_REF300, align 8
  %58 = or i64 %56, %57
  %59 = load i32, i32* @SYS_CTRL_USB_CTRL, align 4
  %60 = call i32 @writel(i64 %58, i32 %59)
  %61 = load i32, i32* @SYS_CTRL_CLK_USBHS, align 4
  %62 = call i32 @enable_clock(i32 %61)
  ret i32 0
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @REF300_DIV_INT(i32) #1

declare dso_local i64 @REF300_DIV_FRAC(i32) #1

declare dso_local i32 @reset_block(i32, i32) #1

declare dso_local i32 @enable_clock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
