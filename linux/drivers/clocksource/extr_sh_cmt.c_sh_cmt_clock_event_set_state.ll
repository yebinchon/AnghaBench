; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.sh_cmt_channel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FLAG_CLOCKEVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ch%u: used for %s clock events\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"oneshot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*, i32)* @sh_cmt_clock_event_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_clock_event_set_state(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_cmt_channel*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %7 = call %struct.sh_cmt_channel* @ced_to_sh_cmt(%struct.clock_event_device* %6)
  store %struct.sh_cmt_channel* %7, %struct.sh_cmt_channel** %5, align 8
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %9 = call i64 @clockevent_state_oneshot(%struct.clock_event_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %13 = call i64 @clockevent_state_periodic(%struct.clock_event_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %17 = load i32, i32* @FLAG_CLOCKEVENT, align 4
  %18 = call i32 @sh_cmt_stop(%struct.sh_cmt_channel* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %21 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %27 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %32)
  %34 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @sh_cmt_clock_event_start(%struct.sh_cmt_channel* %34, i32 %35)
  ret i32 0
}

declare dso_local %struct.sh_cmt_channel* @ced_to_sh_cmt(%struct.clock_event_device*) #1

declare dso_local i64 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i64 @clockevent_state_periodic(%struct.clock_event_device*) #1

declare dso_local i32 @sh_cmt_stop(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @sh_cmt_clock_event_start(%struct.sh_cmt_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
