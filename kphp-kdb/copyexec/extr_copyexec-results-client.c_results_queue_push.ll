; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_results_queue_push.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-client.c_results_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.results_queue_entry = type { i32 }

@rq_size = common dso_local global i64 0, align 8
@RESULTS_QUEUE_SIZE = common dso_local global i64 0, align 8
@RQ = common dso_local global %struct.results_queue_entry* null, align 8
@rq_right = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.results_queue_entry* @results_queue_push() #0 {
  %1 = alloca %struct.results_queue_entry*, align 8
  %2 = alloca %struct.results_queue_entry*, align 8
  %3 = load i64, i64* @rq_size, align 8
  %4 = load i64, i64* @RESULTS_QUEUE_SIZE, align 8
  %5 = icmp uge i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.results_queue_entry* null, %struct.results_queue_entry** %1, align 8
  br label %20

7:                                                ; preds = %0
  %8 = load %struct.results_queue_entry*, %struct.results_queue_entry** @RQ, align 8
  %9 = load i64, i64* @rq_right, align 8
  %10 = getelementptr inbounds %struct.results_queue_entry, %struct.results_queue_entry* %8, i64 %9
  store %struct.results_queue_entry* %10, %struct.results_queue_entry** %2, align 8
  %11 = load i64, i64* @rq_right, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @rq_right, align 8
  %13 = load i64, i64* @RESULTS_QUEUE_SIZE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store i64 0, i64* @rq_right, align 8
  br label %16

16:                                               ; preds = %15, %7
  %17 = load i64, i64* @rq_size, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* @rq_size, align 8
  %19 = load %struct.results_queue_entry*, %struct.results_queue_entry** %2, align 8
  store %struct.results_queue_entry* %19, %struct.results_queue_entry** %1, align 8
  br label %20

20:                                               ; preds = %16, %6
  %21 = load %struct.results_queue_entry*, %struct.results_queue_entry** %1, align 8
  ret %struct.results_queue_entry* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
