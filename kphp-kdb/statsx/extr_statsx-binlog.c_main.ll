; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-binlog.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-binlog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32 }

@stdout = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@dump_stats_replay_logevent = common dso_local global i64 0, align 8
@replay_logevent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"c:hvlS:T:ui\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@start_time = common dso_local global i32 0, align 4
@end_time = common dso_local global i32 0, align 4
@cnt_id = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@dump_unique_cid_stats_replay_logevent = common dso_local global i64 0, align 8
@active_users_stats_replay_logevent = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Use index\0A\00", align 1
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_12__* null, align 8
@engine_snapshot_name = common dso_local global i8* null, align 8
@engine_snapshot_size = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@snapshot_load_time = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"fatal: error %d while loading index file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"jump_log_pos = %lld\0A\00", align 1
@jump_log_pos = common dso_local global i64 0, align 8
@engine_replica = common dso_local global %struct.TYPE_14__* null, align 8
@Binlog = common dso_local global %struct.TYPE_13__* null, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @stdout, align 4
  store i32 %8, i32* @out, align 4
  %9 = load i64, i64* @dump_stats_replay_logevent, align 8
  store i64 %9, i64* @replay_logevent, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %48 [
    i32 105, label %17
    i32 83, label %18
    i32 84, label %25
    i32 99, label %32
    i32 118, label %39
    i32 104, label %42
    i32 108, label %44
    i32 117, label %46
  ]

17:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %48

18:                                               ; preds = %15
  %19 = load i32, i32* @optarg, align 4
  %20 = call i32 @sscanf(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %21 = icmp eq i32 1, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* @start_time, align 4
  br label %24

24:                                               ; preds = %22, %18
  br label %48

25:                                               ; preds = %15
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @sscanf(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %28 = icmp eq i32 1, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* @end_time, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %48

32:                                               ; preds = %15
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @sscanf(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %35 = icmp eq i32 1, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* @cnt_id, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %48

39:                                               ; preds = %15
  %40 = load i32, i32* @verbosity, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @verbosity, align 4
  br label %48

42:                                               ; preds = %15
  %43 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %200

44:                                               ; preds = %15
  %45 = load i64, i64* @dump_unique_cid_stats_replay_logevent, align 8
  store i64 %45, i64* @replay_logevent, align 8
  br label %48

46:                                               ; preds = %15
  %47 = load i64, i64* @active_users_stats_replay_logevent, align 8
  store i64 %47, i64* @replay_logevent, align 8
  br label %48

48:                                               ; preds = %15, %46, %44, %39, %38, %31, %24, %17
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* @optind, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %200

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* @optind, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @binlogname, align 8
  %62 = call i64 @engine_preload_filelist(i8* %60, i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @binlogname, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i8*, i8** @binlogname, align 8
  br label %76

70:                                               ; preds = %64
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* @optind, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  br label %76

76:                                               ; preds = %70, %68
  %77 = phi i8* [ %69, %68 ], [ %75, %70 ]
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %55
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %80
  %84 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @engine_snapshot_replica, align 4
  %86 = call %struct.TYPE_12__* @open_recent_snapshot(i32 %85)
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** @Snapshot, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %88 = icmp ne %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** @engine_snapshot_name, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* @engine_snapshot_size, align 8
  %100 = load i8*, i8** @engine_snapshot_name, align 8
  %101 = load i64, i64* @engine_snapshot_size, align 8
  %102 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %100, i64 %101)
  br label %104

103:                                              ; preds = %83
  store i8* null, i8** @engine_snapshot_name, align 8
  store i64 0, i64* @engine_snapshot_size, align 8
  br label %104

104:                                              ; preds = %103, %89
  %105 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %106 = call i32 @get_utime(i32 %105)
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* @snapshot_load_time, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %109 = call i32 @load_index(%struct.TYPE_12__* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %111 = call i32 @get_utime(i32 %110)
  %112 = load i32, i32* @snapshot_load_time, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* @snapshot_load_time, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %104
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i8*, i8** @engine_snapshot_name, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %118, i8* %119)
  %121 = call i32 @exit(i32 1) #3
  unreachable

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %80
  %124 = load i32, i32* @verbosity, align 4
  %125 = icmp sge i32 %124, 3
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i64, i64* @jump_log_pos, align 8
  %131 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %133 = load i64, i64* @jump_log_pos, align 8
  %134 = call %struct.TYPE_13__* @open_binlog(%struct.TYPE_14__* %132, i64 %133)
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** @Binlog, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %136 = icmp ne %struct.TYPE_13__* %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @stderr, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* @jump_log_pos, align 8
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* %141, i64 %142)
  %144 = call i32 @exit(i32 1) #3
  unreachable

145:                                              ; preds = %129
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** @binlogname, align 8
  %151 = load i32, i32* @verbosity, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %145
  %154 = load i32, i32* @stderr, align 4
  %155 = load i8*, i8** @binlogname, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %155, i32 %160)
  br label %162

162:                                              ; preds = %153, %145
  %163 = call i32 (...) @mytime()
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* @binlog_load_time, align 4
  %165 = call i32 (...) @clear_log()
  %166 = load i64, i64* @jump_log_pos, align 8
  %167 = load i32, i32* @jump_log_ts, align 4
  %168 = load i32, i32* @jump_log_crc32, align 4
  %169 = call i32 @init_log_data(i64 %166, i32 %167, i32 %168)
  %170 = load i32, i32* @verbosity, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* @stderr, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %162
  %176 = call i32 @replay_log(i32 0, i32 1)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* @verbosity, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %175
  %183 = call i32 (...) @mytime()
  %184 = load i32, i32* @binlog_load_time, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* @binlog_load_time, align 4
  %186 = load i32, i32* @log_readto_pos, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* @jump_log_pos, align 8
  %189 = sub nsw i64 %187, %188
  store i64 %189, i64* @binlog_loaded_size, align 8
  %190 = load i64, i64* @replay_logevent, align 8
  %191 = load i64, i64* @active_users_stats_replay_logevent, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %182
  %194 = load i64, i64* @replay_logevent, align 8
  %195 = load i64, i64* @dump_unique_cid_stats_replay_logevent, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193, %182
  %198 = call i32 (...) @count()
  br label %199

199:                                              ; preds = %197, %193
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %199, %53, %42
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @open_recent_snapshot(i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @load_index(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @open_binlog(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
