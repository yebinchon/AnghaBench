; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.sh_cmt_channel = type { i32, i64 }

@FLAG_IRQCONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @sh_cmt_clock_event_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_clock_event_next(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.sh_cmt_channel*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %7 = call %struct.sh_cmt_channel* @ced_to_sh_cmt(%struct.clock_event_device* %6)
  store %struct.sh_cmt_channel* %7, %struct.sh_cmt_channel** %5, align 8
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %9 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %15 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FLAG_IRQCONTEXT, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 %22, 1
  %24 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %25 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %28, 1
  %30 = call i32 @sh_cmt_set_next(%struct.sh_cmt_channel* %27, i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  ret i32 0
}

declare dso_local %struct.sh_cmt_channel* @ced_to_sh_cmt(%struct.clock_event_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sh_cmt_set_next(%struct.sh_cmt_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
