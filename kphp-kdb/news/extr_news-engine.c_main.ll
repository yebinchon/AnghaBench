; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"days\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Number of days to keep news (default %d)\00", align 1
@MAX_NEWS_DAYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"reindex\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"metafiles-memory\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"memory for metafiles cache (default %lld)\00", align 1
@DEFAULT_MAX_ALLOCATED_METAFILES_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"check-index\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"check index mode\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"regenerate-index\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"regenerate index mode\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@regenerate_index_mode = common dso_local global i64 0, align 8
@check_index_mode = common dso_local global i64 0, align 8
@index_mode = common dso_local global i64 0, align 8
@news_engine = common dso_local global i32 0, align 4
@aes_pwd_file = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@log_ts_interval = common dso_local global i64 0, align 8
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_12__* null, align 8
@engine_snapshot_name = common dso_local global i8* null, align 8
@engine_snapshot_size = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@index_load_time = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"fatal: error %d while loading index file %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"load index: done, jump_log_pos=%lld, time %.06lfs\0A\00", align 1
@jump_log_pos = common dso_local global i64 0, align 8
@engine_replica = common dso_local global %struct.TYPE_14__* null, align 8
@Binlog = common dso_local global %struct.TYPE_13__* null, align 8
@.str.14 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@CD_INDEXER = common dso_local global i32 0, align 4
@CD_ENGINE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [75 x i8] c"replaying binlog file %s (size %lld) from position %lld (crc32=%u, ts=%d)\0A\00", align 1
@jump_log_crc32 = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@max_news_days = common dso_local global i32 0, align 4
@min_logevent_time = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@binlog_loaded_size = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [65 x i8] c"REPAIR: truncating %s at log position %lld (file position %lld)\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"truncate()\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@binlog_read = common dso_local global i32 0, align 4
@binlog_crc32_verbosity_level = common dso_local global i32 0, align 4
@start_time = common dso_local global i8* null, align 8
@last_collect_garbage_time = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @set_debug_handlers()
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  %12 = load i32, i32* @required_argument, align 4
  %13 = load i32, i32* @MAX_NEWS_DAYS, align 4
  %14 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12, i32 0, i8 signext 116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @no_argument, align 4
  %16 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 0, i8 signext 105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @required_argument, align 4
  %18 = load i64, i64* @DEFAULT_MAX_ALLOCATED_METAFILES_SIZE, align 8
  %19 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 0, i8 signext 67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @no_argument, align 4
  %21 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %20, i32 0, i8 signext 76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32, i32* @no_argument, align 4
  %23 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %22, i32 0, i8 signext 82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @f_parse_option, align 4
  %27 = call i32 @parse_engine_options_long(i32 %24, i8** %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @optind, align 4
  %35 = add nsw i32 %34, 2
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %283

39:                                               ; preds = %32, %2
  %40 = load i64, i64* @regenerate_index_mode, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 0, i64* @check_index_mode, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = icmp sge i32 %47, 5
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -5
  %60 = call i64 @memcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i64, i64* @index_mode, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* @index_mode, align 8
  br label %65

65:                                               ; preds = %62, %49, %43
  %66 = load i32, i32* @aes_pwd_file, align 4
  %67 = load i64, i64* @index_mode, align 8
  %68 = call i32 @engine_init(i32* @news_engine, i32 %66, i64 %67)
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* @optind, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** @binlogname, align 8
  %75 = call i64 @engine_preload_filelist(i8* %73, i8* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %65
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @binlogname, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8*, i8** @binlogname, align 8
  br label %89

83:                                               ; preds = %77
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  br label %89

89:                                               ; preds = %83, %81
  %90 = phi i8* [ %82, %81 ], [ %88, %83 ]
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %65
  store i64 0, i64* @log_ts_interval, align 8
  %94 = load i32, i32* @engine_snapshot_replica, align 4
  %95 = call %struct.TYPE_12__* @open_recent_snapshot(i32 %94)
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** @Snapshot, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %97 = icmp ne %struct.TYPE_12__* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** @engine_snapshot_name, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* @engine_snapshot_size, align 8
  %109 = load i64, i64* @verbosity, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8*, i8** @engine_snapshot_name, align 8
  %114 = load i64, i64* @engine_snapshot_size, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %113, i64 %114)
  br label %116

116:                                              ; preds = %111, %98
  br label %118

117:                                              ; preds = %93
  store i8* null, i8** @engine_snapshot_name, align 8
  store i64 0, i64* @engine_snapshot_size, align 8
  br label %118

118:                                              ; preds = %117, %116
  %119 = call i32 (...) @mytime()
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* @index_load_time, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %122 = call i32 @load_index(%struct.TYPE_12__* %121)
  store i32 %122, i32* %6, align 4
  %123 = call i32 (...) @mytime()
  %124 = load i32, i32* @index_load_time, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* @index_load_time, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %118
  %129 = load i32, i32* @stderr, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i8*, i8** @engine_snapshot_name, align 8
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %130, i8* %131)
  %133 = call i32 @exit(i32 1) #3
  unreachable

134:                                              ; preds = %118
  %135 = load i64, i64* @verbosity, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* @stderr, align 4
  %139 = load i64, i64* @jump_log_pos, align 8
  %140 = load i32, i32* @index_load_time, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %144 = load i64, i64* @jump_log_pos, align 8
  %145 = call %struct.TYPE_13__* @open_binlog(%struct.TYPE_14__* %143, i64 %144)
  store %struct.TYPE_13__* %145, %struct.TYPE_13__** @Binlog, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %147 = icmp ne %struct.TYPE_13__* %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @stderr, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i64, i64* @jump_log_pos, align 8
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i8* %152, i64 %153)
  %155 = call i32 @exit(i32 1) #3
  unreachable

156:                                              ; preds = %142
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** @binlogname, align 8
  %162 = load i64, i64* @index_mode, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @CD_INDEXER, align 4
  br label %168

166:                                              ; preds = %156
  %167 = load i32, i32* @CD_ENGINE, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = call i32 @init_common_data(i32 0, i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @cstatus_binlog_name(i8* %173)
  %175 = load i64, i64* @verbosity, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %168
  %178 = load i32, i32* @stderr, align 4
  %179 = load i8*, i8** @binlogname, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i64, i64* @jump_log_pos, align 8
  %186 = load i32, i32* @jump_log_crc32, align 4
  %187 = load i32, i32* @jump_log_ts, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i8* %179, i32 %184, i64 %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %177, %168
  %190 = call i32 (...) @mytime()
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* @binlog_load_time, align 4
  %192 = call i32 (...) @clear_log()
  %193 = load i64, i64* @jump_log_pos, align 8
  %194 = load i32, i32* @jump_log_ts, align 4
  %195 = load i32, i32* @jump_log_crc32, align 4
  %196 = call i32 @init_log_data(i64 %193, i32 %194, i32 %195)
  %197 = load i64, i64* @verbosity, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %189
  %203 = call i8* @time(i32 0)
  %204 = load i32, i32* @max_news_days, align 4
  %205 = add nsw i32 %204, 1
  %206 = mul nsw i32 %205, 86400
  %207 = sext i32 %206 to i64
  %208 = sub i64 0, %207
  %209 = getelementptr i8, i8* %203, i64 %208
  store i8* %209, i8** @min_logevent_time, align 8
  %210 = call i32 @replay_log(i32 0, i32 1)
  store i32 %210, i32* %6, align 4
  %211 = load i64, i64* @verbosity, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %202
  %214 = load i32, i32* @stderr, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %202
  %217 = call i32 (...) @mytime()
  %218 = load i32, i32* @binlog_load_time, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* @binlog_load_time, align 4
  %220 = load i64, i64* @log_readto_pos, align 8
  %221 = load i64, i64* @jump_log_pos, align 8
  %222 = sub nsw i64 %220, %221
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* @binlog_loaded_size, align 4
  %224 = load i32, i32* @binlog_disabled, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %216
  %227 = call i32 (...) @clear_read_log()
  br label %228

228:                                              ; preds = %226, %216
  %229 = load i32, i32* %6, align 4
  %230 = icmp eq i32 %229, -2
  br i1 %230, label %231, label %265

231:                                              ; preds = %228
  %232 = load i64, i64* @log_readto_pos, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = sub nsw i64 %232, %238
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %239, %242
  store i64 %243, i64* %7, align 8
  %244 = load i32, i32* @stderr, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = load i64, i64* @log_readto_pos, align 8
  %251 = load i64, i64* %7, align 8
  %252 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i8* %249, i64 %250, i64 %251)
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load i64, i64* %7, align 8
  %259 = call i64 @truncate(i8* %257, i64 %258)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %231
  %262 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %263 = call i32 @exit(i32 2) #3
  unreachable

264:                                              ; preds = %231
  br label %273

265:                                              ; preds = %228
  %266 = load i32, i32* %6, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i32, i32* @stderr, align 4
  %270 = call i32 (i32, i8*, ...) @fprintf(i32 %269, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %271 = call i32 @exit(i32 1) #3
  unreachable

272:                                              ; preds = %265
  br label %273

273:                                              ; preds = %272, %264
  store i32 1, i32* @binlog_read, align 4
  store i32 5, i32* @binlog_crc32_verbosity_level, align 4
  %274 = call i32 (...) @clear_write_log()
  %275 = call i8* @time(i32 0)
  store i8* %275, i8** @start_time, align 8
  store i8* %275, i8** @last_collect_garbage_time, align 8
  store i64 0, i64* @check_index_mode, align 8
  %276 = load i64, i64* @index_mode, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = call i32 @save_index(i32 0)
  br label %282

280:                                              ; preds = %273
  %281 = call i32 (...) @start_server()
  br label %282

282:                                              ; preds = %280, %278
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %282, %37
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @parse_option(i8*, i32, i32, i8 signext, i8*, ...) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @engine_init(i32*, i32, i64) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_12__* @open_recent_snapshot(i32) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @load_index(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @open_binlog(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @init_common_data(i32, i32) #1

declare dso_local i32 @cstatus_binlog_name(i8*) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i8* @time(i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i64 @truncate(i8*, i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @clear_write_log(...) #1

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
