; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_usb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_usb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_usb_clk = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s: 0x%x\0A\00", align 1
@clk_regmap = common dso_local global i32 0, align 4
@LPC32XX_CLKPWR_USB_CTRL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_usb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_usb_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.lpc32xx_usb_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.lpc32xx_usb_clk* @to_lpc32xx_usb_clk(%struct.clk_hw* %8)
  store %struct.lpc32xx_usb_clk* %9, %struct.lpc32xx_usb_clk** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call i32 @clk_hw_get_name(%struct.clk_hw* %10)
  %12 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load i32, i32* @clk_regmap, align 4
  %22 = load i32, i32* @LPC32XX_CLKPWR_USB_CTRL, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %6)
  %24 = load i32, i32* @clk_regmap, align 4
  %25 = load i32, i32* @LPC32XX_CLKPWR_USB_CTRL, align 4
  %26 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %27 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @regmap_update_bits(i32 %24, i32 %25, i64 %28, i32 %31)
  br label %33

33:                                               ; preds = %20, %1
  %34 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %35 = call i32 @lpc32xx_usb_clk_read(%struct.lpc32xx_usb_clk* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %37 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %47 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %52 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @clk_regmap, align 4
  %57 = load i32, i32* @LPC32XX_CLKPWR_USB_CTRL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @regmap_write(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %116

63:                                               ; preds = %40, %33
  %64 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %65 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @lpc32xx_usb_clk_write(%struct.lpc32xx_usb_clk* %69, i32 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %89, %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 1000
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %77 = call i32 @lpc32xx_usb_clk_read(%struct.lpc32xx_usb_clk* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %80 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %84 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %92

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %72

92:                                               ; preds = %87, %72
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %93, %96
  %98 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %99 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %116

103:                                              ; preds = %92
  %104 = load %struct.lpc32xx_usb_clk*, %struct.lpc32xx_usb_clk** %4, align 8
  %105 = getelementptr inbounds %struct.lpc32xx_usb_clk, %struct.lpc32xx_usb_clk* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @clk_regmap, align 4
  %110 = load i32, i32* @LPC32XX_CLKPWR_USB_CTRL, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @regmap_write(i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %113, %102, %60
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.lpc32xx_usb_clk* @to_lpc32xx_usb_clk(%struct.clk_hw*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i32) #1

declare dso_local i32 @lpc32xx_usb_clk_read(%struct.lpc32xx_usb_clk*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @lpc32xx_usb_clk_write(%struct.lpc32xx_usb_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
