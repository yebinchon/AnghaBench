; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_leds_cleanup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_leds_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.ar8327_data* }
%struct.ar8327_data = type { i32, %struct.ar8327_led** }
%struct.ar8327_led = type { i32 }

@CONFIG_AR8216_PHY_LEDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8327_leds_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_leds_cleanup(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca %struct.ar8327_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar8327_led*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %6 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %6, i32 0, i32 0
  %8 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  store %struct.ar8327_data* %8, %struct.ar8327_data** %3, align 8
  %9 = load i32, i32* @CONFIG_AR8216_PHY_LEDS, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ar8327_data*, %struct.ar8327_data** %3, align 8
  %17 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.ar8327_data*, %struct.ar8327_data** %3, align 8
  %22 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %21, i32 0, i32 1
  %23 = load %struct.ar8327_led**, %struct.ar8327_led*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ar8327_led*, %struct.ar8327_led** %23, i64 %25
  %27 = load %struct.ar8327_led*, %struct.ar8327_led** %26, align 8
  store %struct.ar8327_led* %27, %struct.ar8327_led** %5, align 8
  %28 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %29 = call i32 @ar8327_led_destroy(%struct.ar8327_led* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.ar8327_data*, %struct.ar8327_data** %3, align 8
  %35 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %34, i32 0, i32 1
  %36 = load %struct.ar8327_led**, %struct.ar8327_led*** %35, align 8
  %37 = call i32 @kfree(%struct.ar8327_led** %36)
  br label %38

38:                                               ; preds = %33, %12
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ar8327_led_destroy(%struct.ar8327_led*) #1

declare dso_local i32 @kfree(%struct.ar8327_led**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
