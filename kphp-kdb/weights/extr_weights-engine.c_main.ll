; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"reindex\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"enables udp message support\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@weights_engine = common dso_local global i32 0, align 4
@aes_pwd_file = common dso_local global i32 0, align 4
@index_mode = common dso_local global i64 0, align 8
@binlogname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_11__* null, align 8
@engine_snapshot_name = common dso_local global i32* null, align 8
@engine_snapshot_size = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@index_load_time = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"load_index returned fail code %d.\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_13__* null, align 8
@jump_log_pos = common dso_local global i32 0, align 4
@Binlog = common dso_local global %struct.TYPE_12__* null, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"replaying binlog file %s (size %lld) from position %lld\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @set_debug_handlers()
  %8 = load i32, i32* @no_argument, align 4
  %9 = call i32 @parse_option(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 0, i8 zeroext 105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @remove_parse_option(i32 201)
  %11 = load i32, i32* @no_argument, align 4
  %12 = call i32 @parse_option(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 0, i8 zeroext 85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* @f_parse_option, align 4
  %16 = call i32 @parse_engine_options_long(i32 %13, i8** %14, i32 %15)
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @progname, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @optind, align 4
  %22 = add nsw i32 %21, 1
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %148

26:                                               ; preds = %2
  %27 = load i32, i32* @aes_pwd_file, align 4
  %28 = load i64, i64* @index_mode, align 8
  %29 = call i32 @engine_init(i32* @weights_engine, i32 %27, i64 %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* @optind, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** @binlogname, align 8
  %36 = call i64 @engine_preload_filelist(i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %26
  %39 = load i8*, i8** @binlogname, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** @binlogname, align 8
  br label %49

43:                                               ; preds = %38
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* @optind, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  br label %49

49:                                               ; preds = %43, %41
  %50 = phi i8* [ %42, %41 ], [ %48, %43 ]
  %51 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %26
  %54 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* @engine_snapshot_replica, align 4
  %56 = call %struct.TYPE_11__* @open_recent_snapshot(i32 %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** @Snapshot, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Snapshot, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Snapshot, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @strdup(i32 %64)
  store i32* %65, i32** @engine_snapshot_name, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Snapshot, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* @engine_snapshot_size, align 8
  %71 = load i32*, i32** @engine_snapshot_name, align 8
  %72 = load i64, i64* @engine_snapshot_size, align 8
  %73 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* %71, i64 %72)
  %74 = call i32 (...) @mytime()
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* @index_load_time, align 4
  %76 = call i32 (...) @load_index()
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %59
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %59
  %84 = call i32 (...) @mytime()
  %85 = load i32, i32* @index_load_time, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* @index_load_time, align 4
  br label %88

87:                                               ; preds = %53
  store i32* null, i32** @engine_snapshot_name, align 8
  store i64 0, i64* @engine_snapshot_size, align 8
  store i32 0, i32* @index_load_time, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** @engine_replica, align 8
  %90 = load i32, i32* @jump_log_pos, align 4
  %91 = call %struct.TYPE_12__* @open_binlog(%struct.TYPE_13__* %89, i32 %90)
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** @Binlog, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Binlog, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @engine_replica, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @jump_log_pos, align 4
  %99 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %97, i32 %98)
  %100 = call i32 @exit(i32 1) #3
  unreachable

101:                                              ; preds = %88
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Binlog, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** @binlogname, align 8
  %107 = load i8*, i8** @binlogname, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Binlog, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @jump_log_pos, align 4
  %114 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i8* %107, i32 %112, i32 %113)
  %115 = call i32 (...) @mytime()
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* @binlog_load_time, align 4
  %117 = call i32 (...) @clear_log()
  %118 = load i32, i32* @jump_log_pos, align 4
  %119 = load i32, i32* @jump_log_ts, align 4
  %120 = load i32, i32* @jump_log_crc32, align 4
  %121 = call i32 @init_log_data(i32 %118, i32 %119, i32 %120)
  %122 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %123 = call i32 @replay_log(i32 0, i32 1)
  store i32 %123, i32* %6, align 4
  %124 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %125 = call i32 (...) @mytime()
  %126 = load i32, i32* @binlog_load_time, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* @binlog_load_time, align 4
  %128 = load i32, i32* @binlog_disabled, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %101
  %131 = call i32 (...) @clear_read_log()
  br label %132

132:                                              ; preds = %130, %101
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %132
  %139 = call i32 (...) @clear_write_log()
  %140 = call i32 @time(i32 0)
  store i32 %140, i32* @start_time, align 4
  %141 = load i64, i64* @index_mode, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @save_index(i32 0)
  br label %147

145:                                              ; preds = %138
  %146 = call i32 (...) @start_server()
  br label %147

147:                                              ; preds = %145, %143
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %24
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @parse_option(i8*, i32, i32, i8 zeroext, i8*) #1

declare dso_local i32 @remove_parse_option(i32) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @engine_init(i32*, i32, i64) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @open_recent_snapshot(i32) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @load_index(...) #1

declare dso_local %struct.TYPE_12__* @open_binlog(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @save_index(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
