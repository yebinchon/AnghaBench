; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_pos_alarm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_pos_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_timer = type { i32 }
%struct.binlog_wait_query = type { i32 (%struct.binlog_wait_query*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_binlog_wait_pos_alarm(%struct.event_timer* %0) #0 {
  %2 = alloca %struct.event_timer*, align 8
  %3 = alloca %struct.binlog_wait_query*, align 8
  store %struct.event_timer* %0, %struct.event_timer** %2, align 8
  %4 = load %struct.event_timer*, %struct.event_timer** %2, align 8
  %5 = bitcast %struct.event_timer* %4 to i8*
  %6 = bitcast i8* %5 to %struct.binlog_wait_query*
  store %struct.binlog_wait_query* %6, %struct.binlog_wait_query** %3, align 8
  %7 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %3, align 8
  %8 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %7, i32 0, i32 0
  %9 = load i32 (%struct.binlog_wait_query*)*, i32 (%struct.binlog_wait_query*)** %8, align 8
  %10 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %3, align 8
  %11 = call i32 %9(%struct.binlog_wait_query* %10)
  %12 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %3, align 8
  %13 = call i32 @zfree(%struct.binlog_wait_query* %12, i32 8)
  ret i32 0
}

declare dso_local i32 @zfree(%struct.binlog_wait_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
