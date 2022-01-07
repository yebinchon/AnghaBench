; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_dirty_binlog_queue_pop.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_dirty_binlog_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64 }

@mutex_dirty_binlog_queue = common dso_local global i32 0, align 4
@dirty_binlog_queue_head = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @dirty_binlog_queue_pop() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  %2 = call i32 @pthread_mutex_lock(i32* @mutex_dirty_binlog_queue)
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dirty_binlog_queue_head, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dirty_binlog_queue_head, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %1, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dirty_binlog_queue_head, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** @dirty_binlog_queue_head, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  br label %14

14:                                               ; preds = %5, %0
  %15 = call i32 @pthread_mutex_unlock(i32* @mutex_dirty_binlog_queue)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %16
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
