; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-engine.c_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-engine.c_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reindex_on_low_memory = common dso_local global i32 0, align 4
@force_write_index = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@last_reindex_on_low_memory_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cron() #0 {
  %1 = call i32 (...) @create_all_outbound_connections()
  %2 = call i32 (...) @flush_binlog()
  %3 = call i32 (...) @free_by_time()
  %4 = call i32 (...) @redistribute_memory()
  %5 = load i32, i32* @reindex_on_low_memory, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @memory_full_warning()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i64, i64* @force_write_index, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @force_write_index, align 8
  %13 = load i32, i32* @reindex_on_low_memory, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @reindex_on_low_memory, align 4
  %15 = load i32, i32* @now, align 4
  store i32 %15, i32* @last_reindex_on_low_memory_time, align 4
  br label %16

16:                                               ; preds = %10, %7, %0
  %17 = load i64, i64* @force_write_index, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @fork_write_index()
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 (...) @check_child_status()
  ret void
}

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @flush_binlog(...) #1

declare dso_local i32 @free_by_time(...) #1

declare dso_local i32 @redistribute_memory(...) #1

declare dso_local i64 @memory_full_warning(...) #1

declare dso_local i32 @fork_write_index(...) #1

declare dso_local i32 @check_child_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
