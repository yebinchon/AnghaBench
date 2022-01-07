; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_next_queue_may_preempt.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_next_queue_may_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfq_sched_data }
%struct.bfq_sched_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_queue_may_preempt(%struct.bfq_data* %0) #0 {
  %2 = alloca %struct.bfq_data*, align 8
  %3 = alloca %struct.bfq_sched_data*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %2, align 8
  %4 = load %struct.bfq_data*, %struct.bfq_data** %2, align 8
  %5 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.bfq_sched_data* %7, %struct.bfq_sched_data** %3, align 8
  %8 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
