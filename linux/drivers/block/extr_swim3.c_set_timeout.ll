; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { void (%struct.timer_list*)*, i64 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floppy_state*, i32, void (%struct.timer_list.0*)*)* @set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timeout(%struct.floppy_state* %0, i32 %1, void (%struct.timer_list.0*)* %2) #0 {
  %4 = alloca %struct.floppy_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.timer_list.0*)*, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.timer_list.0*)* %2, void (%struct.timer_list.0*)** %6, align 8
  %7 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %8 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %13 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %12, i32 0, i32 1
  %14 = call i32 @del_timer(%struct.TYPE_3__* %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %21 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load void (%struct.timer_list.0*)*, void (%struct.timer_list.0*)** %6, align 8
  %24 = bitcast void (%struct.timer_list.0*)* %23 to void (%struct.timer_list*)*
  %25 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %26 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store void (%struct.timer_list*)* %24, void (%struct.timer_list*)** %27, align 8
  %28 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %29 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %28, i32 0, i32 1
  %30 = call i32 @add_timer(%struct.TYPE_3__* %29)
  %31 = load %struct.floppy_state*, %struct.floppy_state** %4, align 8
  %32 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
