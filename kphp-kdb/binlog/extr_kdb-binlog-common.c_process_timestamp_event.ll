; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_process_timestamp_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_process_timestamp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i64 }

@log_first_ts = common dso_local global i64 0, align 8
@log_read_until = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"time goes back from %d to %d in log file\0A\00", align 1
@log_last_ts = common dso_local global i64 0, align 8
@log_set_now = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@log_time_cutoff = common dso_local global i64 0, align 8
@log_scan_mode = common dso_local global i32 0, align 4
@log_cutoff_pos = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"reached timestamp %d above cutoff %d at binlog position %lld, entering scan mode 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_generic*)* @process_timestamp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_timestamp_event(%struct.lev_generic* %0) #0 {
  %2 = alloca %struct.lev_generic*, align 8
  store %struct.lev_generic* %0, %struct.lev_generic** %2, align 8
  %3 = load i64, i64* @log_first_ts, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %7 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* @log_first_ts, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i64, i64* @log_read_until, align 8
  %11 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %12 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @stderr, align 4
  %17 = load i64, i64* @log_read_until, align 8
  %18 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %19 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %24 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* @log_read_until, align 8
  store i64 %25, i64* @log_last_ts, align 8
  %26 = load i64, i64* @log_set_now, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @log_read_until, align 8
  store i64 %29, i64* @now, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %32 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @log_time_cutoff, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32, i32* @log_scan_mode, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = call i32 (...) @log_cur_pos()
  store i32 %40, i32* @log_cutoff_pos, align 4
  store i32 1, i32* @log_scan_mode, align 4
  %41 = load i64, i64* @verbosity, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.lev_generic*, %struct.lev_generic** %2, align 8
  %46 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @log_time_cutoff, align 8
  %49 = load i32, i32* @log_cutoff_pos, align 4
  %50 = call i32 (i32, i8*, i64, i64, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %39
  br label %52

52:                                               ; preds = %51, %36, %30
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
