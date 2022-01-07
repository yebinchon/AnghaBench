; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_check_state.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_button_data = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_keys_button_data*)* @gpio_keys_polled_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_polled_check_state(%struct.gpio_keys_button_data* %0) #0 {
  %2 = alloca %struct.gpio_keys_button_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gpio_keys_button_data* %0, %struct.gpio_keys_button_data** %2, align 8
  %5 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %6 = call i32 @gpio_button_get_value(%struct.gpio_keys_button_data* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %9 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %14 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @EV_KEY, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ %17, %19 ], [ %21, %20 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %25 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %28 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %33 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %57

36:                                               ; preds = %22
  %37 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %38 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @EV_SW, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %36
  %46 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @button_hotplug_event(%struct.gpio_keys_button_data* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %53 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %1
  %55 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %2, align 8
  %56 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %31
  ret void
}

declare dso_local i32 @gpio_button_get_value(%struct.gpio_keys_button_data*) #1

declare dso_local i32 @button_hotplug_event(%struct.gpio_keys_button_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
