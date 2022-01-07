; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_fsync_step.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_fsync_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@binlog_disabled = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@last_fsync_step_time = common dso_local global i64 0, align 8
@fsync_step_delay = common dso_local global i64 0, align 8
@aio_fsync_cbp = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SIGEV_NONE = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@tot_aio_fsync_queries = common dso_local global i32 0, align 4
@last_fsync_binlog_file = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fsync_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsync_step() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load i64, i64* @binlog_disabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @get_aio_inprogress()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %39

8:                                                ; preds = %4
  %9 = load i64, i64* @now, align 8
  %10 = load i64, i64* @last_fsync_step_time, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* @fsync_step_delay, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %39

15:                                               ; preds = %8
  %16 = load i64, i64* @now, align 8
  store i64 %16, i64* @last_fsync_step_time, align 8
  br label %17

17:                                               ; preds = %15, %28
  %18 = call %struct.TYPE_8__* (...) @dirty_binlog_queue_pop()
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %1, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %39

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %17

29:                                               ; preds = %27
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aio_fsync_cbp, i32 0, i32 0), align 8
  %33 = load i32, i32* @SIGEV_NONE, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aio_fsync_cbp, i32 0, i32 1, i32 0), align 8
  %34 = load i32, i32* @O_SYNC, align 4
  %35 = call i32 @aio_fsync(i32 %34, %struct.TYPE_9__* @aio_fsync_cbp)
  %36 = load i32, i32* @tot_aio_fsync_queries, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @tot_aio_fsync_queries, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** @last_fsync_binlog_file, align 8
  br label %39

39:                                               ; preds = %29, %21, %14, %7
  ret void
}

declare dso_local i64 @get_aio_inprogress(...) #1

declare dso_local %struct.TYPE_8__* @dirty_binlog_queue_pop(...) #1

declare dso_local i32 @aio_fsync(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
