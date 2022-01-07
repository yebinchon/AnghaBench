; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_button_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_button_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gpio_keys_button_data = type { %struct.TYPE_3__*, %struct.bh_priv }
%struct.TYPE_3__ = type { i32 }
%struct.bh_priv = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"event type=%u, code=%u, value=%d\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@button_map = common dso_local global %struct.TYPE_4__* null, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_keys_button_data*, i32, i32)* @button_hotplug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @button_hotplug_event(%struct.gpio_keys_button_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_keys_button_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bh_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_keys_button_data* %0, %struct.gpio_keys_button_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %4, align 8
  %11 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %10, i32 0, i32 1
  store %struct.bh_priv* %11, %struct.bh_priv** %7, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BH_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @EV_KEY, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EV_SW, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %59

29:                                               ; preds = %24, %3
  %30 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %4, align 8
  %31 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @button_get_index(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %59

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @button_map, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.bh_priv*, %struct.bh_priv** %7, align 8
  %49 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %47, %50
  %52 = load i64, i64* @HZ, align 8
  %53 = udiv i64 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @button_hotplug_create_event(i32 %45, i32 %46, i64 %53, i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.bh_priv*, %struct.bh_priv** %7, align 8
  %58 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %39, %38, %28
  ret void
}

declare dso_local i32 @BH_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @button_get_index(i32) #1

declare dso_local i32 @button_hotplug_create_event(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
