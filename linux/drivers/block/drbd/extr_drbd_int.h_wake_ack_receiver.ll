; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_wake_ack_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_wake_ack_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@RUNNING = common dso_local global i64 0, align 8
@SIGXCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_connection*)* @wake_ack_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_ack_receiver(%struct.drbd_connection* %0) #0 {
  %2 = alloca %struct.drbd_connection*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %2, align 8
  %4 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %5 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  store %struct.task_struct* %7, %struct.task_struct** %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %12 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %11, i32 0, i32 0
  %13 = call i64 @get_t_state(%struct.TYPE_2__* %12)
  %14 = load i64, i64* @RUNNING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @SIGXCPU, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = call i32 @send_sig(i32 %17, %struct.task_struct* %18, i32 1)
  br label %20

20:                                               ; preds = %16, %10, %1
  ret void
}

declare dso_local i64 @get_t_state(%struct.TYPE_2__*) #1

declare dso_local i32 @send_sig(i32, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
