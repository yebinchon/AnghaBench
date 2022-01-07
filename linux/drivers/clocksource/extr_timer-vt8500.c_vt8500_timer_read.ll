; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-vt8500.c_vt8500_timer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-vt8500.c_vt8500_timer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@regbase = common dso_local global i64 0, align 8
@TIMER_CTRL_VAL = common dso_local global i64 0, align 8
@TIMER_AS_VAL = common dso_local global i64 0, align 8
@TIMER_COUNT_R_ACTIVE = common dso_local global i32 0, align 4
@TIMER_COUNT_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @vt8500_timer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_timer_read(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %4 = call i32 @msecs_to_loops(i32 10)
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @regbase, align 8
  %6 = load i64, i64* @TIMER_CTRL_VAL, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel(i32 3, i64 %7)
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i64, i64* @regbase, align 8
  %11 = load i64, i64* @TIMER_AS_VAL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load i32, i32* @TIMER_COUNT_R_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %9
  %22 = phi i1 [ false, %9 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 (...) @cpu_relax()
  br label %9

25:                                               ; preds = %21
  %26 = load i64, i64* @regbase, align 8
  %27 = load i64, i64* @TIMER_COUNT_VAL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  ret i32 %29
}

declare dso_local i32 @msecs_to_loops(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
