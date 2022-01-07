; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-imx-sysctr.c_sysctr_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-imx-sysctr.c_sysctr_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@sys_ctr_base = common dso_local global i64 0, align 8
@CMPCV_HI = common dso_local global i64 0, align 8
@CMPCV_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @sysctr_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctr_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %8 = call i32 @sysctr_timer_enable(i32 0)
  %9 = call i64 (...) @sysctr_read_counter()
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = lshr i64 %13, 32
  %15 = and i64 %14, 1048575
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 4294967295
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @sys_ctr_base, align 8
  %20 = load i64, i64* @CMPCV_HI, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i64 %18, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @sys_ctr_base, align 8
  %25 = load i64, i64* @CMPCV_LO, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i64 %23, i64 %26)
  %28 = call i32 @sysctr_timer_enable(i32 1)
  ret i32 0
}

declare dso_local i32 @sysctr_timer_enable(i32) #1

declare dso_local i64 @sysctr_read_counter(...) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
