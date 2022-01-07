; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/leds/extr_leds-nu801.c_led_nu801_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/leds/extr_leds-nu801.c_led_nu801_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.led_nu801_platform_data* }
%struct.led_nu801_platform_data = type { i32, i32* }
%struct.led_nu801_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @led_nu801_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_nu801_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.led_nu801_platform_data*, align 8
  %5 = alloca %struct.led_nu801_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.led_nu801_platform_data*, %struct.led_nu801_platform_data** %10, align 8
  store %struct.led_nu801_platform_data* %11, %struct.led_nu801_platform_data** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.led_nu801_platform_data*, %struct.led_nu801_platform_data** %4, align 8
  %13 = icmp ne %struct.led_nu801_platform_data* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.led_nu801_platform_data*, %struct.led_nu801_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.led_nu801_platform_data, %struct.led_nu801_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call %struct.led_nu801_data* @leds_nu801_create_of(%struct.platform_device* %20)
  store %struct.led_nu801_data* %21, %struct.led_nu801_data** %5, align 8
  %22 = load %struct.led_nu801_data*, %struct.led_nu801_data** %5, align 8
  %23 = icmp ne %struct.led_nu801_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %93

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.led_nu801_platform_data*, %struct.led_nu801_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.led_nu801_platform_data, %struct.led_nu801_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.led_nu801_data* @kzalloc(i32 %34, i32 %35)
  store %struct.led_nu801_data* %36, %struct.led_nu801_data** %5, align 8
  %37 = load %struct.led_nu801_data*, %struct.led_nu801_data** %5, align 8
  %38 = icmp ne %struct.led_nu801_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.led_nu801_platform_data*, %struct.led_nu801_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.led_nu801_platform_data, %struct.led_nu801_platform_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.led_nu801_platform_data*, %struct.led_nu801_platform_data** %4, align 8
  %51 = getelementptr inbounds %struct.led_nu801_platform_data, %struct.led_nu801_platform_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.led_nu801_data*, %struct.led_nu801_data** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %56, i64 %58
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @led_nu801_create_chain(i32* %55, %struct.led_nu801_data* %59, %struct.TYPE_2__* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %74

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.led_nu801_data*, %struct.led_nu801_data** %5, align 8
  %73 = call i32 @platform_set_drvdata(%struct.platform_device* %71, %struct.led_nu801_data* %72)
  store i32 0, i32* %2, align 4
  br label %93

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %86, %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.led_nu801_data*, %struct.led_nu801_data** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %81, i64 %83
  %85 = call i32 @led_nu801_delete_chain(%struct.led_nu801_data* %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  br label %77

89:                                               ; preds = %77
  %90 = load %struct.led_nu801_data*, %struct.led_nu801_data** %5, align 8
  %91 = call i32 @kfree(%struct.led_nu801_data* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %70, %39, %24
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.led_nu801_data* @leds_nu801_create_of(%struct.platform_device*) #1

declare dso_local %struct.led_nu801_data* @kzalloc(i32, i32) #1

declare dso_local i32 @led_nu801_create_chain(i32*, %struct.led_nu801_data*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.led_nu801_data*) #1

declare dso_local i32 @led_nu801_delete_chain(%struct.led_nu801_data*) #1

declare dso_local i32 @kfree(%struct.led_nu801_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
