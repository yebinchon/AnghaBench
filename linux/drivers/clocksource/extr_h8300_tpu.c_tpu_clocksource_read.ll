; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_clocksource_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_tpu.c_tpu_clocksource_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.tpu_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clocksource*)* @tpu_clocksource_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tpu_clocksource_read(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.tpu_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %6 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %7 = call %struct.tpu_priv* @cs_to_priv(%struct.clocksource* %6)
  store %struct.tpu_priv* %7, %struct.tpu_priv** %3, align 8
  %8 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %13 = call i64 @tpu_get_counter(%struct.tpu_priv* %12, i64* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 4294967296
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.tpu_priv*, %struct.tpu_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tpu_priv, %struct.tpu_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @raw_spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  ret i64 %23
}

declare dso_local %struct.tpu_priv* @cs_to_priv(%struct.clocksource*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tpu_get_counter(%struct.tpu_priv*, i64*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
