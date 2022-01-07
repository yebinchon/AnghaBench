; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_clock_event_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_clock_event_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.timer8_priv = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: used for periodic clock events\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @timer8_clock_event_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer8_clock_event_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca %struct.timer8_priv*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %5 = call %struct.timer8_priv* @ced_to_priv(%struct.clock_event_device* %4)
  store %struct.timer8_priv* %5, %struct.timer8_priv** %3, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %11 = call i32 @timer8_stop(%struct.timer8_priv* %10)
  %12 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %13 = load %struct.timer8_priv*, %struct.timer8_priv** %3, align 8
  %14 = getelementptr inbounds %struct.timer8_priv, %struct.timer8_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %18, %19
  %21 = call i32 @timer8_clock_event_start(%struct.timer8_priv* %12, i32 %20)
  ret i32 0
}

declare dso_local %struct.timer8_priv* @ced_to_priv(%struct.clock_event_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @timer8_stop(%struct.timer8_priv*) #1

declare dso_local i32 @timer8_clock_event_start(%struct.timer8_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
