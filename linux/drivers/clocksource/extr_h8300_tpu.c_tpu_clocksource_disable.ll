; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_clocksource_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_clocksource_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.tpu_priv = type { i32, i64, i64 }

@TCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clocksource*)* @tpu_clocksource_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpu_clocksource_disable(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.tpu_priv*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %4 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %5 = call %struct.tpu_priv* @cs_to_priv(%struct.clocksource* %4)
  store %struct.tpu_priv* %5, %struct.tpu_priv** %3, align 8
  %6 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @iowrite8(i32 0, i64 %17)
  %19 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @iowrite8(i32 0, i64 %23)
  %25 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  ret void
}

declare dso_local %struct.tpu_priv* @cs_to_priv(%struct.clocksource*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
