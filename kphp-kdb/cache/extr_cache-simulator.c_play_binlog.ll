; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_play_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_play_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@play_binlog.replaying_step = internal global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Start %d%s replaying binlog step (%s)\0A\00", align 1
@now = common dso_local global i64 0, align 8
@engine_replica = common dso_local global %struct.TYPE_9__* null, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@Binlog = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@binlogname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"replaying binlog file %s (size %lld) from position %lld\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_binlog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @play_binlog.replaying_step, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @play_binlog.replaying_step, align 4
  %6 = load i32, i32* @play_binlog.replaying_step, align 4
  %7 = load i32, i32* @play_binlog.replaying_step, align 4
  %8 = call i32 @ending(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8, i8* %9)
  store i64 0, i64* @now, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %12 = load i64, i64* @jump_log_pos, align 8
  %13 = call %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__* %11, i64 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** @Binlog, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @engine_replica, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @jump_log_pos, align 8
  %21 = call i32 @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %19, i64 %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @binlogname, align 4
  %29 = load i32, i32* @binlogname, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @jump_log_pos, align 8
  %36 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %34, i64 %35)
  %37 = call i32 (...) @mytime()
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* @binlog_load_time, align 4
  %39 = call i32 (...) @clear_log()
  %40 = load i64, i64* @jump_log_pos, align 8
  %41 = load i32, i32* @jump_log_ts, align 4
  %42 = load i32, i32* @jump_log_crc32, align 4
  %43 = call i32 @init_log_data(i64 %40, i32 %41, i32 %42)
  %44 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @replay_log(i32 0, i32 1)
  store i32 %45, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 (...) @mytime()
  %48 = load i32, i32* @binlog_load_time, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* @binlog_load_time, align 4
  %50 = load i32, i32* @log_readto_pos, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @jump_log_pos, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* @binlog_loaded_size, align 8
  %54 = call i32 (...) @clear_write_log()
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Binlog, align 8
  %56 = call i32 @close_binlog(%struct.TYPE_8__* %55, i32 1)
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @ending(i32) #1

declare dso_local %struct.TYPE_8__* @open_binlog(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @kprintf(i8*, i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @close_binlog(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
