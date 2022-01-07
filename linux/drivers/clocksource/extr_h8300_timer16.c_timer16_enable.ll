; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer16.c_timer16_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer16.c_timer16_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.timer16_priv = type { i32, i64, i32, i32, i64, i64 }

@TCNT = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TISRC = common dso_local global i64 0, align 8
@TSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @timer16_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer16_enable(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.timer16_priv*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %4 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %5 = call %struct.timer16_priv* @cs_to_priv(%struct.clocksource* %4)
  store %struct.timer16_priv* %5, %struct.timer16_priv** %3, align 8
  %6 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %7 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %11 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %13 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCNT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite16be(i32 0, i64 %16)
  %18 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %19 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite8(i32 131, i64 %22)
  %24 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %25 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %28 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TISRC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @bset(i32 %26, i64 %31)
  %33 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %34 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %37 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TSTR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @bset(i32 %35, i64 %40)
  %42 = load %struct.timer16_priv*, %struct.timer16_priv** %3, align 8
  %43 = getelementptr inbounds %struct.timer16_priv, %struct.timer16_priv* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  ret i32 0
}

declare dso_local %struct.timer16_priv* @cs_to_priv(%struct.clocksource*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iowrite16be(i32, i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @bset(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
