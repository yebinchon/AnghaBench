; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/extr_heartbeat.c_heartbeat_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/extr_heartbeat.c_heartbeat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heartbeat_data = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@heartbeat_timer.bit = internal global i32 0, align 4
@heartbeat_timer.up = internal global i32 1, align 4
@HEARTBEAT_INVERTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FSHIFT = common dso_local global i32 0, align 4
@avenrun = common dso_local global i32* null, align 8
@hd = common dso_local global %struct.heartbeat_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @heartbeat_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.heartbeat_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %5 = ptrtoint %struct.heartbeat_data* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.heartbeat_data* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.heartbeat_data* %8, %struct.heartbeat_data** %3, align 8
  %9 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %10 = load i32, i32* @heartbeat_timer.bit, align 4
  %11 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %12 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HEARTBEAT_INVERTED, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @heartbeat_toggle_bit(%struct.heartbeat_data* %9, i32 %10, i32 %15)
  %17 = load i32, i32* @heartbeat_timer.up, align 4
  %18 = load i32, i32* @heartbeat_timer.bit, align 4
  %19 = add i32 %18, %17
  store i32 %19, i32* @heartbeat_timer.bit, align 4
  %20 = load i32, i32* @heartbeat_timer.bit, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @heartbeat_timer.bit, align 4
  %24 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %25 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %1
  %30 = load i32, i32* @heartbeat_timer.up, align 4
  %31 = sub i32 0, %30
  store i32 %31, i32* @heartbeat_timer.up, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %34 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %33, i32 0, i32 2
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @FSHIFT, align 4
  %37 = shl i32 300, %36
  %38 = load i32*, i32** @avenrun, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 5
  %42 = load i32, i32* @FSHIFT, align 4
  %43 = shl i32 3, %42
  %44 = add nsw i32 %41, %43
  %45 = sdiv i32 %37, %44
  %46 = sub nsw i32 110, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %35, %47
  %49 = call i32 @mod_timer(i32* %34, i64 %48)
  ret void
}

declare dso_local %struct.heartbeat_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @heartbeat_toggle_bit(%struct.heartbeat_data*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
