; ModuleID = '/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_set_binlog_data_offset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_set_binlog_data_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_data = type { %struct.proc_monitor_info* }
%struct.proc_monitor_info = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_binlog_data_offset(%struct.proc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.proc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_monitor_info*, align 8
  store %struct.proc_data* %0, %struct.proc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.proc_data*, %struct.proc_data** %3, align 8
  %9 = call i32 @assert(%struct.proc_data* %8)
  %10 = call i64 @get_precise_time(i32 1000000)
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.proc_data*, %struct.proc_data** %3, align 8
  %16 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %15, i32 0, i32 0
  %17 = load %struct.proc_monitor_info*, %struct.proc_monitor_info** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.proc_monitor_info, %struct.proc_monitor_info* %17, i64 %19
  store %struct.proc_monitor_info* %20, %struct.proc_monitor_info** %7, align 8
  %21 = load %struct.proc_monitor_info*, %struct.proc_monitor_info** %7, align 8
  %22 = call i32 @begin_update_monitor_data(%struct.proc_monitor_info* %21)
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.proc_monitor_info*, %struct.proc_monitor_info** %7, align 8
  %25 = getelementptr inbounds %struct.proc_monitor_info, %struct.proc_monitor_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.proc_monitor_info*, %struct.proc_monitor_info** %7, align 8
  %28 = getelementptr inbounds %struct.proc_monitor_info, %struct.proc_monitor_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.proc_monitor_info*, %struct.proc_monitor_info** %7, align 8
  %30 = call i32 @end_update_monitor_data(%struct.proc_monitor_info* %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %11

34:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @assert(%struct.proc_data*) #1

declare dso_local i64 @get_precise_time(i32) #1

declare dso_local i32 @begin_update_monitor_data(%struct.proc_monitor_info*) #1

declare dso_local i32 @end_update_monitor_data(%struct.proc_monitor_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
