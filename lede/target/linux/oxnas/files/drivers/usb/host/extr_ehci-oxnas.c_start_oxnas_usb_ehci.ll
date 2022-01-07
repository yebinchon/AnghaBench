; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_start_oxnas_usb_ehci.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_start_oxnas_usb_ehci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxnas_hcd = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@PLLB_DIV_CTRL_REGOFFSET = common dso_local global i32 0, align 4
@REF300_DIV_REGOFFSET = common dso_local global i32 0, align 4
@USBHSPHY_CTRL_REGOFFSET = common dso_local global i32 0, align 4
@USBHSPHY_TEST_ADD = common dso_local global i64 0, align 8
@USBHSPHY_TEST_DIN = common dso_local global i32 0, align 4
@USBHSPHY_TEST_CLK = common dso_local global i64 0, align 8
@USB_CTRL_REGOFFSET = common dso_local global i32 0, align 4
@USB_CLK_INTERNAL = common dso_local global i64 0, align 8
@USB_INT_CLK_PLLB = common dso_local global i64 0, align 8
@USB_INT_CLK_REF300 = common dso_local global i64 0, align 8
@USBAMUX_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxnas_hcd*)* @start_oxnas_usb_ehci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_oxnas_usb_ehci(%struct.oxnas_hcd* %0) #0 {
  %2 = alloca %struct.oxnas_hcd*, align 8
  store %struct.oxnas_hcd* %0, %struct.oxnas_hcd** %2, align 8
  %3 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_prepare_enable(i32 %10)
  %12 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  %16 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PLLB_DIV_CTRL_REGOFFSET, align 4
  %20 = call i64 @PLLB_DIV_INT(i32 50)
  %21 = call i64 @PLLB_DIV_FRAC(i32 0)
  %22 = or i64 %20, %21
  %23 = call i32 @regmap_write_bits(i32 %18, i32 %19, i32 65535, i64 %22)
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REF300_DIV_REGOFFSET, align 4
  %29 = call i64 @REF300_DIV_INT(i32 25)
  %30 = call i64 @REF300_DIV_FRAC(i32 0)
  %31 = or i64 %29, %30
  %32 = call i32 @regmap_write_bits(i32 %27, i32 %28, i32 65535, i64 %31)
  br label %33

33:                                               ; preds = %24, %7
  %34 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %35 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reset_control_reset(i32 %36)
  %38 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %39 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @reset_control_reset(i32 %40)
  %42 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %43 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @reset_control_reset(i32 %44)
  %46 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @USBHSPHY_CTRL_REGOFFSET, align 4
  %50 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %51 = shl i64 2, %50
  %52 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %53 = zext i32 %52 to i64
  %54 = shl i64 224, %53
  %55 = or i64 %51, %54
  %56 = call i32 @regmap_write_bits(i32 %48, i32 %49, i32 65535, i64 %55)
  %57 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %58 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USBHSPHY_CTRL_REGOFFSET, align 4
  %61 = load i64, i64* @USBHSPHY_TEST_CLK, align 8
  %62 = shl i64 1, %61
  %63 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %64 = shl i64 2, %63
  %65 = or i64 %62, %64
  %66 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 224, %67
  %69 = or i64 %65, %68
  %70 = call i32 @regmap_write_bits(i32 %59, i32 %60, i32 65535, i64 %69)
  %71 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %72 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @USBHSPHY_CTRL_REGOFFSET, align 4
  %75 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %76 = shl i64 15, %75
  %77 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %78 = zext i32 %77 to i64
  %79 = shl i64 170, %78
  %80 = or i64 %76, %79
  %81 = call i32 @regmap_write_bits(i32 %73, i32 %74, i32 65535, i64 %80)
  %82 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %83 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @USBHSPHY_CTRL_REGOFFSET, align 4
  %86 = load i64, i64* @USBHSPHY_TEST_CLK, align 8
  %87 = shl i64 1, %86
  %88 = load i64, i64* @USBHSPHY_TEST_ADD, align 8
  %89 = shl i64 15, %88
  %90 = or i64 %87, %89
  %91 = load i32, i32* @USBHSPHY_TEST_DIN, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 170, %92
  %94 = or i64 %90, %93
  %95 = call i32 @regmap_write_bits(i32 %84, i32 %85, i32 65535, i64 %94)
  %96 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %97 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %33
  %101 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %102 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @USB_CTRL_REGOFFSET, align 4
  %105 = load i64, i64* @USB_CLK_INTERNAL, align 8
  %106 = load i64, i64* @USB_INT_CLK_PLLB, align 8
  %107 = or i64 %105, %106
  %108 = call i32 @regmap_write_bits(i32 %103, i32 %104, i32 65535, i64 %107)
  br label %118

109:                                              ; preds = %33
  %110 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %111 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @USB_CTRL_REGOFFSET, align 4
  %114 = load i64, i64* @USB_CLK_INTERNAL, align 8
  %115 = load i64, i64* @USB_INT_CLK_REF300, align 8
  %116 = or i64 %114, %115
  %117 = call i32 @regmap_write_bits(i32 %112, i32 %113, i32 65535, i64 %116)
  br label %118

118:                                              ; preds = %109, %100
  %119 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %120 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %125 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @USB_CTRL_REGOFFSET, align 4
  %128 = load i32, i32* @USBAMUX_DEVICE, align 4
  %129 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %123, %118
  %131 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %132 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @clk_prepare_enable(i32 %133)
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i64) #1

declare dso_local i64 @PLLB_DIV_INT(i32) #1

declare dso_local i64 @PLLB_DIV_FRAC(i32) #1

declare dso_local i64 @REF300_DIV_INT(i32) #1

declare dso_local i64 @REF300_DIV_FRAC(i32) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
