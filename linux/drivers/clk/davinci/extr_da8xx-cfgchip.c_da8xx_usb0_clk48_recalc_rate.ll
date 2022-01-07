; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_usb0_clk48_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_usb0_clk48_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.da8xx_usb0_clk48 = type { i32 }

@CFGCHIP2_REFFREQ_MASK = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_12MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_13MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_19_2MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_20MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_24MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_26MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_38_4MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_40MHZ = common dso_local global i32 0, align 4
@CFGCHIP2_REFFREQ_48MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @da8xx_usb0_clk48_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @da8xx_usb0_clk48_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.da8xx_usb0_clk48*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.da8xx_usb0_clk48* @to_da8xx_usb0_clk48(%struct.clk_hw* %9)
  store %struct.da8xx_usb0_clk48* %10, %struct.da8xx_usb0_clk48** %6, align 8
  %11 = load i32, i32* @CFGCHIP2_REFFREQ_MASK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  switch i64 %12, label %31 [
    i64 12000000, label %13
    i64 13000000, label %15
    i64 19200000, label %17
    i64 20000000, label %19
    i64 24000000, label %21
    i64 26000000, label %23
    i64 38400000, label %25
    i64 40000000, label %27
    i64 48000000, label %29
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @CFGCHIP2_REFFREQ_12MHZ, align 4
  store i32 %14, i32* %8, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* @CFGCHIP2_REFFREQ_13MHZ, align 4
  store i32 %16, i32* %8, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @CFGCHIP2_REFFREQ_19_2MHZ, align 4
  store i32 %18, i32* %8, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @CFGCHIP2_REFFREQ_20MHZ, align 4
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @CFGCHIP2_REFFREQ_24MHZ, align 4
  store i32 %22, i32* %8, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @CFGCHIP2_REFFREQ_26MHZ, align 4
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @CFGCHIP2_REFFREQ_38_4MHZ, align 4
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @CFGCHIP2_REFFREQ_40MHZ, align 4
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @CFGCHIP2_REFFREQ_48MHZ, align 4
  store i32 %30, i32* %8, align 4
  br label %32

31:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %40

32:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13
  %33 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %6, align 8
  %34 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CFGCHIP(i32 2)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @regmap_write_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  store i64 48000000, i64* %3, align 8
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local %struct.da8xx_usb0_clk48* @to_da8xx_usb0_clk48(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CFGCHIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
