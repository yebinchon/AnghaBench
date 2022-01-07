; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/leds/extr_leds-nu801.c_led_nu801_delete_chain.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/leds/extr_leds-nu801.c_led_nu801_delete_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_nu801_data = type { i32, i64, i64, i64, i32, %struct.led_nu801_led_data* }
%struct.led_nu801_led_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_nu801_data*)* @led_nu801_delete_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_nu801_delete_chain(%struct.led_nu801_data* %0) #0 {
  %2 = alloca %struct.led_nu801_data*, align 8
  %3 = alloca %struct.led_nu801_led_data*, align 8
  %4 = alloca %struct.led_nu801_led_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.led_nu801_data* %0, %struct.led_nu801_data** %2, align 8
  %7 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %8 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %7, i32 0, i32 5
  %9 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %8, align 8
  store %struct.led_nu801_led_data* %9, %struct.led_nu801_led_data** %3, align 8
  %10 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %11 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %10, i32 0, i32 5
  store %struct.led_nu801_led_data* null, %struct.led_nu801_led_data** %11, align 8
  %12 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %13 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %16 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %18 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %17, i32 0, i32 4
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %25, i64 %27
  store %struct.led_nu801_led_data* %28, %struct.led_nu801_led_data** %4, align 8
  %29 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %4, align 8
  %30 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %29, i32 0, i32 0
  %31 = call i32 @led_classdev_unregister(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %37 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpio_free(i64 %38)
  %40 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %41 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gpio_free(i64 %42)
  %44 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %45 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.led_nu801_data*, %struct.led_nu801_data** %2, align 8
  %50 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gpio_free(i64 %51)
  br label %53

53:                                               ; preds = %48, %35
  %54 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %3, align 8
  %55 = call i32 @kfree(%struct.led_nu801_led_data* %54)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @gpio_free(i64) #1

declare dso_local i32 @kfree(%struct.led_nu801_led_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
