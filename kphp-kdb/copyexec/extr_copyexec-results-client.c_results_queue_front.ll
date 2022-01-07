; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_results_queue_front.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_results_queue_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.results_queue_entry = type { i32 }

@rq_size = common dso_local global i32 0, align 4
@RQ = common dso_local global %struct.results_queue_entry* null, align 8
@rq_left = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.results_queue_entry* @results_queue_front() #0 {
  %1 = alloca %struct.results_queue_entry*, align 8
  %2 = load i32, i32* @rq_size, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store %struct.results_queue_entry* null, %struct.results_queue_entry** %1, align 8
  br label %9

5:                                                ; preds = %0
  %6 = load %struct.results_queue_entry*, %struct.results_queue_entry** @RQ, align 8
  %7 = load i64, i64* @rq_left, align 8
  %8 = getelementptr inbounds %struct.results_queue_entry, %struct.results_queue_entry* %6, i64 %7
  store %struct.results_queue_entry* %8, %struct.results_queue_entry** %1, align 8
  br label %9

9:                                                ; preds = %5, %4
  %10 = load %struct.results_queue_entry*, %struct.results_queue_entry** %1, align 8
  ret %struct.results_queue_entry* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
