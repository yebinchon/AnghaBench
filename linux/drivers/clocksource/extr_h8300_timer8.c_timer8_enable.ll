; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer8_priv = type { i64 }

@TCORA = common dso_local global i64 0, align 8
@_8TCNT = common dso_local global i64 0, align 8
@_8TCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer8_priv*)* @timer8_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer8_enable(%struct.timer8_priv* %0) #0 {
  %2 = alloca %struct.timer8_priv*, align 8
  store %struct.timer8_priv* %0, %struct.timer8_priv** %2, align 8
  %3 = load %struct.timer8_priv*, %struct.timer8_priv** %2, align 8
  %4 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TCORA, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @iowrite16be(i32 65535, i64 %7)
  %9 = load %struct.timer8_priv*, %struct.timer8_priv** %2, align 8
  %10 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @_8TCNT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite16be(i32 0, i64 %13)
  %15 = load %struct.timer8_priv*, %struct.timer8_priv** %2, align 8
  %16 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @_8TCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite16be(i32 3074, i64 %19)
  ret i32 0
}

declare dso_local i32 @iowrite16be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
