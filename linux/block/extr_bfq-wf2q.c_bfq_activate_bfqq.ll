; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_activate_bfqq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_activate_bfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { %struct.bfq_entity }
%struct.bfq_entity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfq_activate_bfqq(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca %struct.bfq_entity*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %7 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %6, i32 0, i32 0
  store %struct.bfq_entity* %7, %struct.bfq_entity** %5, align 8
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %10 = call i32 @bfq_bfqq_non_blocking_wait_rq(%struct.bfq_queue* %9)
  %11 = call i32 @bfq_activate_requeue_entity(%struct.bfq_entity* %8, i32 %10, i32 0, i32 0)
  %12 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %13 = call i32 @bfq_clear_bfqq_non_blocking_wait_rq(%struct.bfq_queue* %12)
  ret void
}

declare dso_local i32 @bfq_activate_requeue_entity(%struct.bfq_entity*, i32, i32, i32) #1

declare dso_local i32 @bfq_bfqq_non_blocking_wait_rq(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_non_blocking_wait_rq(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
