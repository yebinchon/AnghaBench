; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-engine-impl.c_antispam_engine_common_init_part.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-engine-impl.c_antispam_engine_common_init_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }

@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"fatal: cannot preload files for binlog: '%s' and index: '%s'\0A\00", align 1
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_13__* null, align 8
@engine_snapshot_name = common dso_local global i8* null, align 8
@engine_snapshot_size = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_15__* null, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@Binlog = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i64 0, align 8
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"jump_log_pos = %lld\0Areplay log events started\0A\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@binlog_loaded_size = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [73 x i8] c"replay binlog file: done, log_pos=%lld, used_z_memory=%ld, time %.06lfs\0A\00", align 1
@log_pos = common dso_local global i64 0, align 8
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @antispam_engine_common_init_part(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** @binlogname, align 8
  %6 = call i64 @engine_preload_filelist(i8* %4, i8* %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** @binlogname, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  %15 = load i32, i32* @engine_snapshot_replica, align 4
  %16 = call %struct.TYPE_13__* @open_recent_snapshot(i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** @Snapshot, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @strdup(i32 %24)
  store i8* %25, i8** @engine_snapshot_name, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @engine_snapshot_size, align 4
  %31 = load i64, i64* @verbosity, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** @engine_snapshot_name, align 8
  %36 = load i32, i32* @engine_snapshot_size, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %19
  br label %40

39:                                               ; preds = %14
  store i8* null, i8** @engine_snapshot_name, align 8
  store i32 0, i32* @engine_snapshot_size, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %42 = call i32 @init_all(%struct.TYPE_13__* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %44 = call i32 @close_snapshot(%struct.TYPE_13__* %43, i32 1)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %46 = load i64, i64* @jump_log_pos, align 8
  %47 = call %struct.TYPE_14__* @open_binlog(%struct.TYPE_15__* %45, i64 %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** @Binlog, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %54, i64 0)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %40
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** @binlogname, align 8
  %63 = load i64, i64* @verbosity, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @binlogname, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %72)
  br label %74

74:                                               ; preds = %65, %57
  %75 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %76 = call i64 @get_utime(i32 %75)
  store i64 %76, i64* @binlog_load_time, align 8
  %77 = call i32 (...) @clear_log()
  %78 = load i64, i64* @jump_log_pos, align 8
  %79 = load i32, i32* @jump_log_ts, align 4
  %80 = load i32, i32* @jump_log_crc32, align 4
  %81 = call i32 @init_log_data(i64 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @verbosity, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load i32, i32* @stderr, align 4
  %86 = load i64, i64* @jump_log_pos, align 8
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %84, %74
  %89 = call i32 @replay_log(i32 0, i32 1)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* @binlog_disabled, align 4
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (...) @clear_read_log()
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 @exit(i32 1) #3
  unreachable

101:                                              ; preds = %94
  %102 = load i64, i64* @verbosity, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %109 = call i64 @get_utime(i32 %108)
  %110 = load i64, i64* @binlog_load_time, align 8
  %111 = sub nsw i64 %109, %110
  store i64 %111, i64* @binlog_load_time, align 8
  %112 = load i64, i64* @log_readto_pos, align 8
  %113 = load i64, i64* @jump_log_pos, align 8
  %114 = sub nsw i64 %112, %113
  store i64 %114, i64* @binlog_loaded_size, align 8
  %115 = load i64, i64* @verbosity, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load i32, i32* @stderr, align 4
  %119 = load i64, i64* @log_pos, align 8
  %120 = call i32 (...) @dyn_used_memory()
  %121 = load i64, i64* @binlog_load_time, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i64 %119, i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %117, %107
  %124 = call i32 (...) @clear_write_log()
  %125 = call i32 @time(i32 0)
  store i32 %125, i32* @start_time, align 4
  ret void
}

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_13__* @open_recent_snapshot(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @init_all(%struct.TYPE_13__*) #1

declare dso_local i32 @close_snapshot(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @open_binlog(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @dyn_used_memory(...) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
