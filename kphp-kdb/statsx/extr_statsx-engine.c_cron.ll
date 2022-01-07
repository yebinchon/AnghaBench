; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cron.last_viewcnt_flush = internal global i32 0, align 4
@now = common dso_local global i32 0, align 4
@tot_counters_allocated = common dso_local global i64 0, align 8
@MAX_COUNTERS_ALLOCATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cron() #0 {
  %1 = load i32, i32* @now, align 4
  %2 = load i32, i32* @cron.last_viewcnt_flush, align 4
  %3 = add nsw i32 %2, 60
  %4 = icmp sge i32 %1, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = call i32 (...) @flush_view_counters()
  %7 = load i32, i32* @now, align 4
  %8 = load i32, i32* @now, align 4
  %9 = srem i32 %8, 60
  %10 = sub nsw i32 %7, %9
  store i32 %10, i32* @cron.last_viewcnt_flush, align 4
  br label %11

11:                                               ; preds = %5, %0
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i64, i64* @tot_counters_allocated, align 8
  %14 = load i64, i64* @MAX_COUNTERS_ALLOCATED, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i64 (...) @free_LRU()
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %12

22:                                               ; preds = %19
  ret void
}

declare dso_local i32 @flush_view_counters(...) #1

declare dso_local i64 @free_LRU(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
