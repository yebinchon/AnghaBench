; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_conn_try_outdate_peer_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_conn_try_outdate_peer_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@_try_outdate_peer_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"drbd_async_h\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"out of mem, failed to invoke fence-peer helper\0A\00", align 1
@drbd_destroy_connection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conn_try_outdate_peer_async(%struct.drbd_connection* %0) #0 {
  %2 = alloca %struct.drbd_connection*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %2, align 8
  %4 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %5 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %4, i32 0, i32 0
  %6 = call i32 @kref_get(i32* %5)
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @flush_signals(i32 %7)
  %9 = load i32, i32* @_try_outdate_peer_async, align 4
  %10 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %11 = call %struct.task_struct* @kthread_run(i32 %9, %struct.drbd_connection* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %11, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = call i64 @IS_ERR(%struct.task_struct* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %17 = call i32 @drbd_err(%struct.drbd_connection* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %19 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %18, i32 0, i32 0
  %20 = load i32, i32* @drbd_destroy_connection, align 4
  %21 = call i32 @kref_put(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.drbd_connection*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
