; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@force_write_stats = common dso_local global i64 0, align 8
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4
@STAT_CNT = common dso_local global i32 0, align 4
@STAT_PERIOD = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@stats = common dso_local global i32** null, align 8
@stats_now = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cron() #0 {
  %1 = call i32 (...) @create_all_outbound_connections()
  %2 = call i32 @free_by_time(i32 137)
  %3 = load i64, i64* @force_write_stats, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @fork_write_stats()
  store i64 0, i64* @force_write_stats, align 8
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 (...) @check_child_status()
  ret void
}

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @free_by_time(i32) #1

declare dso_local i32 @fork_write_stats(...) #1

declare dso_local i32 @check_child_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
