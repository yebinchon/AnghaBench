; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_pm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_pm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i32 (...)* }
%struct.platform_device = type { %struct.TYPE_8__ }

@EINVAL = common dso_local global i32 0, align 4
@sharpsl_pm = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CHRG_OFF = common dso_local global i32 0, align 4
@sharpsl_ac_timer = common dso_local global i32 0, align 4
@sharpsl_chrg_full_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sharpsl-charge\00", align 1
@sharpsl_charge_led_trigger = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"AC IN\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Battery Full\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Battery Lock\00", align 1
@sharpsl_ac_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"AC Input Detect\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Could not get irq %d.\0A\00", align 1
@sharpsl_fatal_isr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Battery Cover\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Fatal Battery\00", align 1
@sharpsl_chrg_full_isr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@dev_attr_battery_percentage = common dso_local global i32 0, align 4
@dev_attr_battery_voltage = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to register attributes (%d)\0A\00", align 1
@sharpsl_apm_get_power_status = common dso_local global i32 0, align 4
@apm_get_power_status = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sharpsl_pm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sharpsl_pm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_pm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %150

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 1), align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %21 = load i32, i32* @CHRG_OFF, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 4), align 8
  %22 = load i32, i32* @sharpsl_ac_timer, align 4
  %23 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 0), i32 %22, i32 0)
  %24 = load i32, i32* @sharpsl_chrg_full_timer, align 4
  %25 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 3), i32 %24, i32 0)
  %26 = call i32 @led_trigger_register_simple(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* @sharpsl_charge_led_trigger)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gpio_request(i64 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gpio_direction_input(i64 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpio_request(i64 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @gpio_direction_input(i64 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @gpio_request(i64 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @gpio_direction_input(i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @gpio_to_irq(i64 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @sharpsl_ac_isr, align 4
  %61 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %62 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @sharpsl_ac_isr, align 4
  %65 = call i64 @request_irq(i32 %59, i32 %60, i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %14
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 1), align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dev_err(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %14
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @gpio_to_irq(i64 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @sharpsl_fatal_isr, align 4
  %78 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %79 = load i32, i32* @sharpsl_fatal_isr, align 4
  %80 = call i64 @request_irq(i32 %76, i32 %77, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 1), align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dev_err(%struct.TYPE_8__* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %71
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @gpio_to_irq(i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @sharpsl_fatal_isr, align 4
  %98 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %99 = load i32, i32* @sharpsl_fatal_isr, align 4
  %100 = call i64 @request_irq(i32 %96, i32 %97, i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 1), align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @dev_err(%struct.TYPE_8__* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %91
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 2), align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @gpio_to_irq(i64 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @sharpsl_chrg_full_isr, align 4
  %119 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %120 = load i32, i32* @sharpsl_chrg_full_isr, align 4
  %121 = call i64 @request_irq(i32 %117, i32 %118, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 1), align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @dev_err(%struct.TYPE_8__* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %123, %112
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @device_create_file(%struct.TYPE_8__* %130, i32* @dev_attr_battery_percentage)
  store i32 %131, i32* %4, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @device_create_file(%struct.TYPE_8__* %133, i32* @dev_attr_battery_voltage)
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @dev_warn(%struct.TYPE_8__* %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %139, %128
  %145 = load i32, i32* @sharpsl_apm_get_power_status, align 4
  store i32 %145, i32* @apm_get_power_status, align 4
  %146 = load i64, i64* @jiffies, align 8
  %147 = call i64 @msecs_to_jiffies(i32 250)
  %148 = add nsw i64 %146, %147
  %149 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sharpsl_pm, i32 0, i32 0), i64 %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %144, %11
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @led_trigger_register_simple(i8*, i32*) #1

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @gpio_direction_input(i64) #1

declare dso_local i32 @gpio_to_irq(i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
