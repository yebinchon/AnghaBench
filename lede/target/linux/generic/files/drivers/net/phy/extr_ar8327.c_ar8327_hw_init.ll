; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_hw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8327_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_hw_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @kzalloc(i32 4, i32 %5)
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ar8327_hw_config_of(%struct.ar8xxx_priv* %26, i64 %33)
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %16
  %36 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %37 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ar8327_hw_config_pdata(%struct.ar8xxx_priv* %36, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %25
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %55

50:                                               ; preds = %45
  %51 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %52 = call i32 @ar8327_leds_init(%struct.ar8xxx_priv* %51)
  %53 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %54 = call i32 @ar8xxx_phy_init(%struct.ar8xxx_priv* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %48, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @ar8327_hw_config_of(%struct.ar8xxx_priv*, i64) #1

declare dso_local i32 @ar8327_hw_config_pdata(%struct.ar8xxx_priv*, i32) #1

declare dso_local i32 @ar8327_leds_init(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_phy_init(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
