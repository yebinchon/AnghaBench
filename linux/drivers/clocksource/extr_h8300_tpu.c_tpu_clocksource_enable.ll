; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_clocksource_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_clocksource_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.tpu_priv = type { i32, i64, i64 }

@TCNT = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @tpu_clocksource_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpu_clocksource_enable(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.tpu_priv*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %4 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %5 = call %struct.tpu_priv* @cs_to_priv(%struct.clocksource* %4)
  store %struct.tpu_priv* %5, %struct.tpu_priv** %3, align 8
  %6 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %11 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCNT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @iowrite16be(i32 0, i64 %14)
  %16 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %17 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCNT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @iowrite16be(i32 0, i64 %20)
  %22 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite8(i32 15, i64 %26)
  %28 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %29 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite8(i32 3, i64 %32)
  %34 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %35 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  ret i32 0
}

declare dso_local %struct.tpu_priv* @cs_to_priv(%struct.clocksource*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iowrite16be(i32, i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
