; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_pm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_pm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (...)*, i64, i64, i64, i64, i64 }
%struct.platform_device = type { i32 }

@dev_attr_battery_percentage = common dso_local global i32 0, align 4
@dev_attr_battery_voltage = common dso_local global i32 0, align 4
@sharpsl_charge_led_trigger = common dso_local global i32 0, align 4
@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sharpsl_ac_isr = common dso_local global i32 0, align 4
@sharpsl_fatal_isr = common dso_local global i32 0, align 4
@sharpsl_chrg_full_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sharpsl_pm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_pm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i32 @suspend_set_ops(i32* null)
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call i32 @device_remove_file(i32* %5, i32* @dev_attr_battery_percentage)
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @device_remove_file(i32* %8, i32* @dev_attr_battery_voltage)
  %10 = load i32, i32* @sharpsl_charge_led_trigger, align 4
  %11 = call i32 @led_trigger_unregister_simple(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gpio_to_irq(i64 %14)
  %16 = load i32, i32* @sharpsl_ac_isr, align 4
  %17 = call i32 @free_irq(i32 %15, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @gpio_to_irq(i64 %20)
  %22 = load i32, i32* @sharpsl_fatal_isr, align 4
  %23 = call i32 @free_irq(i32 %21, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpio_to_irq(i64 %31)
  %33 = load i32, i32* @sharpsl_fatal_isr, align 4
  %34 = call i32 @free_irq(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpio_to_irq(i64 %43)
  %45 = load i32, i32* @sharpsl_chrg_full_isr, align 4
  %46 = call i32 @free_irq(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @gpio_free(i64 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @gpio_free(i64 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @gpio_free(i64 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (...)*, i32 (...)** %61, align 8
  %63 = icmp ne i32 (...)* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (...)*, i32 (...)** %66, align 8
  %68 = call i32 (...) %67()
  br label %69

69:                                               ; preds = %64, %47
  %70 = call i32 @del_timer_sync(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1))
  %71 = call i32 @del_timer_sync(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @suspend_set_ops(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @led_trigger_unregister_simple(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @gpio_to_irq(i64) #1

declare dso_local i32 @gpio_free(i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
