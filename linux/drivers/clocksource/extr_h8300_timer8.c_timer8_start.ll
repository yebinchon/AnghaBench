; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer8_priv = type { i32 }

@FLAG_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer8_priv*)* @timer8_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer8_start(%struct.timer8_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timer8_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.timer8_priv* %0, %struct.timer8_priv** %3, align 8
  %5 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %6 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FLAG_STARTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %14 = call i32 @timer8_enable(%struct.timer8_priv* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @FLAG_STARTED, align 4
  %19 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %20 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @timer8_enable(%struct.timer8_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
