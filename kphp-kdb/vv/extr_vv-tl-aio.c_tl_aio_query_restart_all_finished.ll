; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_query_restart_all_finished.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_query_restart_all_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@finished_aio_queue = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_aio_query_restart_all_finished() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @finished_aio_queue, align 8
  %3 = icmp ne %struct.TYPE_4__* %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @finished_aio_queue, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @tl_aio_query_restart(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @finished_aio_queue, align 8
  %10 = call %struct.TYPE_4__* @queue_del_first_finished_aio(%struct.TYPE_4__* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** @finished_aio_queue, align 8
  br label %1

11:                                               ; preds = %1
  ret void
}

declare dso_local i32 @tl_aio_query_restart(i32) #1

declare dso_local %struct.TYPE_4__* @queue_del_first_finished_aio(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
