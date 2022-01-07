; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-wm831x.c_wm831x_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-wm831x.c_wm831x_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_clk = type { i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.wm831x* }
%struct.TYPE_5__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WM831X_CLOCK_CONTROL_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to read CLOCK_CONTROL_2: %d\0A\00", align 1
@WM831X_XTAL_ENA = common dso_local global i32 0, align 4
@wm831x_xtal_init = common dso_local global i32 0, align 4
@wm831x_fll_init = common dso_local global i32 0, align 4
@wm831x_clkout_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_clk*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wm831x* @dev_get_drvdata(i32 %10)
  store %struct.wm831x* %11, %struct.wm831x** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wm831x_clk* @devm_kzalloc(%struct.TYPE_4__* %13, i32 40, i32 %14)
  store %struct.wm831x_clk* %15, %struct.wm831x_clk** %5, align 8
  %16 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %17 = icmp ne %struct.wm831x_clk* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %23 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %24 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %23, i32 0, i32 4
  store %struct.wm831x* %22, %struct.wm831x** %24, align 8
  %25 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %26 = load i32, i32* @WM831X_CLOCK_CONTROL_2, align 4
  %27 = call i32 @wm831x_reg_read(%struct.wm831x* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %32 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @WM831X_XTAL_ENA, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %42 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %44 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32* @wm831x_xtal_init, i32** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %49 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %48, i32 0, i32 3
  %50 = call i32 @devm_clk_hw_register(%struct.TYPE_4__* %47, %struct.TYPE_5__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %37
  %56 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %57 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32* @wm831x_fll_init, i32** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %62 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %61, i32 0, i32 2
  %63 = call i32 @devm_clk_hw_register(%struct.TYPE_4__* %60, %struct.TYPE_5__* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %85

68:                                               ; preds = %55
  %69 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %70 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32* @wm831x_clkout_init, i32** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %75 = getelementptr inbounds %struct.wm831x_clk, %struct.wm831x_clk* %74, i32 0, i32 1
  %76 = call i32 @devm_clk_hw_register(%struct.TYPE_4__* %73, %struct.TYPE_5__* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %68
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.wm831x_clk*, %struct.wm831x_clk** %5, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.wm831x_clk* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %79, %66, %53, %30, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_clk* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
