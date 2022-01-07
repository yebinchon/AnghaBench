; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_alloc_log_timestamp_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_alloc_log_timestamp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes_after_crc32 = common dso_local global i64 0, align 8
@log_crc32_interval2 = common dso_local global i64 0, align 8
@disable_crc32 = common dso_local global i32 0, align 4
@disable_ts = common dso_local global i32 0, align 4
@LEV_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alloc_log_timestamp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_log_timestamp_event() #0 {
  %1 = load i64, i64* @bytes_after_crc32, align 8
  %2 = load i64, i64* @log_crc32_interval2, align 8
  %3 = icmp sge i64 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @disable_crc32, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = call i32 (...) @alloc_log_crc32_event()
  br label %18

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @disable_ts, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @LEV_TIMESTAMP, align 4
  %16 = call i32 @alloc_log_event(i32 %15, i32 0, i32 0)
  br label %17

17:                                               ; preds = %14, %10
  br label %18

18:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @alloc_log_crc32_event(...) #1

declare dso_local i32 @alloc_log_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
