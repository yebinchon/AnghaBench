; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/watchdog/extr_mcs814x_wdt.c_mcs814x_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/watchdog/extr_mcs814x_wdt.c_mcs814x_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.mcs814x_wdt = type { i32, i64, i32 }

@WDT_MAX_VALUE = common dso_local global i64 0, align 8
@WDT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @mcs814x_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcs814x_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.mcs814x_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.mcs814x_wdt* %7, %struct.mcs814x_wdt** %5, align 8
  %8 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %9 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i64, i64* @WDT_MAX_VALUE, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %14 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_get_rate(i32 %15)
  %17 = mul i32 %12, %16
  %18 = zext i32 %17 to i64
  %19 = sub nsw i64 %11, %18
  %20 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %21 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WDT_COUNT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i64 %19, i64 %24)
  %26 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %27 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret i32 0
}

declare dso_local %struct.mcs814x_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
