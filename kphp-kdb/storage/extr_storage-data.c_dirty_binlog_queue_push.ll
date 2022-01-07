; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_dirty_binlog_queue_push.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_dirty_binlog_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@mutex_dirty_binlog_queue = common dso_local global i32 0, align 4
@dirty_binlog_queue_head = common dso_local global %struct.TYPE_5__* null, align 8
@dirty_binlog_queue_tail = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dirty_binlog_queue_push(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = call i32 @pthread_mutex_lock(i32* @mutex_dirty_binlog_queue)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dirty_binlog_queue_head, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** @dirty_binlog_queue_tail, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** @dirty_binlog_queue_head, align 8
  br label %22

18:                                               ; preds = %8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dirty_binlog_queue_tail, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @dirty_binlog_queue_tail, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = call i32 @pthread_mutex_unlock(i32* @mutex_dirty_binlog_queue)
  br label %24

24:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
