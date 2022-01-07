; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-u300.c_u300_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-u300.c_u300_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@U300_TIMER_APP_GPT1IE_IRQ_DISABLE = common dso_local global i32 0, align 4
@u300_timer_base = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1IE = common dso_local global i64 0, align 8
@U300_TIMER_APP_DGPT1_TIMER_DISABLE = common dso_local global i32 0, align 4
@U300_TIMER_APP_DGPT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @u300_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_shutdown(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load i32, i32* @U300_TIMER_APP_GPT1IE_IRQ_DISABLE, align 4
  %4 = load i64, i64* @u300_timer_base, align 8
  %5 = load i64, i64* @U300_TIMER_APP_GPT1IE, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @writel(i32 %3, i64 %6)
  %8 = load i32, i32* @U300_TIMER_APP_DGPT1_TIMER_DISABLE, align 4
  %9 = load i64, i64* @u300_timer_base, align 8
  %10 = load i64, i64* @U300_TIMER_APP_DGPT1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %8, i64 %11)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
