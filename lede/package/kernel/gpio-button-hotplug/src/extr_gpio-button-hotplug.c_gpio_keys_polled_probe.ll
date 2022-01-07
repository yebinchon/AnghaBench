; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_probe.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_keys_platform_data = type { i32, i32 (i32)* }
%struct.gpio_keys_button_dev = type { i32*, i32, %struct.gpio_keys_platform_data*, i32 }

@gpio_keys_polled_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_keys_polled_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_polled_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_keys_platform_data*, align 8
  %5 = alloca %struct.gpio_keys_button_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @gpio_keys_button_probe(%struct.platform_device* %8, %struct.gpio_keys_button_dev** %5, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %15, i32 0, i32 3
  %17 = load i32, i32* @gpio_keys_polled_poll, align 4
  %18 = call i32 @INIT_DELAYED_WORK(i32* %16, i32 %17)
  %19 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %20 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %19, i32 0, i32 2
  %21 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %20, align 8
  store %struct.gpio_keys_platform_data* %21, %struct.gpio_keys_platform_data** %4, align 8
  %22 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %22, i32 0, i32 1
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %27, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  br label %34

34:                                               ; preds = %26, %14
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @gpio_keys_polled_check_state(i32* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %54 = call i32 @gpio_keys_polled_queue_work(%struct.gpio_keys_button_dev* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @gpio_keys_button_probe(%struct.platform_device*, %struct.gpio_keys_button_dev**, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @gpio_keys_polled_check_state(i32*) #1

declare dso_local i32 @gpio_keys_polled_queue_work(%struct.gpio_keys_button_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
