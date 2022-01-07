; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-usb.c_at91sam9x5_clk_usb_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-usb.c_at91sam9x5_clk_usb_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.at91sam9x5_clk_usb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAM9X5_USB_MAX_DIV = common dso_local global i32 0, align 4
@AT91_PMC_USB = common dso_local global i32 0, align 4
@AT91_PMC_OHCIUSBDIV = common dso_local global i32 0, align 4
@SAM9X5_USB_DIV_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @at91sam9x5_clk_usb_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9x5_clk_usb_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.at91sam9x5_clk_usb*, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.at91sam9x5_clk_usb* @to_at91sam9x5_clk_usb(%struct.clk_hw* %10)
  store %struct.at91sam9x5_clk_usb* %11, %struct.at91sam9x5_clk_usb** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @DIV_ROUND_CLOSEST(i64 %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @SAM9X5_USB_MAX_DIV, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %26
  %33 = load %struct.at91sam9x5_clk_usb*, %struct.at91sam9x5_clk_usb** %8, align 8
  %34 = getelementptr inbounds %struct.at91sam9x5_clk_usb, %struct.at91sam9x5_clk_usb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AT91_PMC_USB, align 4
  %37 = load i32, i32* @AT91_PMC_OHCIUSBDIV, align 4
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  %40 = load i64, i64* @SAM9X5_USB_DIV_SHIFT, align 8
  %41 = shl i64 %39, %40
  %42 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i64 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %29, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.at91sam9x5_clk_usb* @to_at91sam9x5_clk_usb(%struct.clk_hw*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
