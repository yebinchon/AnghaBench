; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_probe.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_keys_platform_data = type { i32, %struct.gpio_keys_button* }
%struct.gpio_keys_button = type { i64, i32 }
%struct.gpio_keys_button_dev = type { %struct.gpio_keys_button_data*, %struct.gpio_keys_platform_data* }
%struct.gpio_keys_button_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get irq for gpio:%d\0A\00", align 1
@button_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to request irq:%d for gpio:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gpio:%d has irq:%d\0A\00", align 1
@EV_SW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_keys_platform_data*, align 8
  %5 = alloca %struct.gpio_keys_button_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_keys_button*, align 8
  %9 = alloca %struct.gpio_keys_button_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i32 @gpio_keys_button_probe(%struct.platform_device* %10, %struct.gpio_keys_button_dev** %5, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %121

16:                                               ; preds = %1
  %17 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %18 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %17, i32 0, i32 1
  %19 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %18, align 8
  store %struct.gpio_keys_platform_data* %19, %struct.gpio_keys_platform_data** %4, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %117, %16
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %20
  %27 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %27, i32 0, i32 1
  %29 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %29, i64 %31
  store %struct.gpio_keys_button* %32, %struct.gpio_keys_button** %8, align 8
  %33 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %34 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %33, i32 0, i32 0
  %35 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %35, i64 %37
  store %struct.gpio_keys_button_data* %38, %struct.gpio_keys_button_data** %9, align 8
  %39 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %40 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %26
  %44 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %45 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @gpio_to_irq(i32 %46)
  %48 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %49 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %26
  %51 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %52 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %59 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %117

63:                                               ; preds = %50
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %67 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @button_handle_irq, align 4
  %70 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %71 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @IRQF_ONESHOT, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_name(i32* %76)
  %78 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %79 = call i32 @devm_request_threaded_irq(i32* %65, i64 %68, i32* null, i32 %69, i32 %74, i32 %77, %struct.gpio_keys_button_data* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %63
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %86 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %89 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %90)
  br label %102

92:                                               ; preds = %63
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %96 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %99 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %92, %82
  %103 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %104 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @EV_SW, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %112 = load i64, i64* @EV_SW, align 8
  %113 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %114 = call i32 @gpio_button_get_value(%struct.gpio_keys_button_data* %113)
  %115 = call i32 @button_hotplug_event(%struct.gpio_keys_button_data* %111, i64 %112, i32 %114)
  br label %116

116:                                              ; preds = %110, %102
  br label %117

117:                                              ; preds = %116, %55
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %20

120:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %14
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @gpio_keys_button_probe(%struct.platform_device*, %struct.gpio_keys_button_dev**, i32) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i32, %struct.gpio_keys_button_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i32 @button_hotplug_event(%struct.gpio_keys_button_data*, i64, i32) #1

declare dso_local i32 @gpio_button_get_value(%struct.gpio_keys_button_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
