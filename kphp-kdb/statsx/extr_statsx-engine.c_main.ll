; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@index_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"statsx-index\00", align 1
@auto_create_new_versions = common dso_local global i32 0, align 4
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"=memcache_auto_answer_mode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"test mode\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"no-user-id\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ignore user id\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"reindex\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"high-memory\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"memory usage to reindex\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"no-version\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"counters are valid until disabled by hands\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"custom-version\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"use yyyymmdd as counter version. Includes [--no-version]\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"monthly\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"enable monthly stat\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"no-set-timezone\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ignore all set timezone events\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"day-start-version\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"use unixtime at 0:00 as counter version\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"counter-growth\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [52 x i8] c"counter hash table growth in percents (default %lf)\00", align 1
@max_counters_growth_percent = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"default-timezone\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"default timezone (hours offset from GMT)\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"cyclic-binlog\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"use binlog in cyclic mode\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [27 x i8] c"Starting in index mode...\0A\00", align 1
@maxconn = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@port = common dso_local global i64 0, align 8
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@username = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@MAX_ZALLOC = common dso_local global i64 0, align 8
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@udp_enabled = common dso_local global i64 0, align 8
@binlogname = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@log_ts_interval = common dso_local global i32 0, align 4
@today_start = common dso_local global i32 0, align 4
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_13__* null, align 8
@engine_snapshot_name = common dso_local global i8* null, align 8
@engine_snapshot_size = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [45 x i8] c"fatal: error %d while loading index file %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"Reading binlog from position %lld\0A\00", align 1
@jump_log_pos = common dso_local global i64 0, align 8
@reverse_index_mode = common dso_local global i64 0, align 8
@STATS_SCHEMA_V1 = common dso_local global i32 0, align 4
@reverse_index_pos = common dso_local global i64 0, align 8
@engine_replica = common dso_local global %struct.TYPE_15__* null, align 8
@now = common dso_local global i32 0, align 4
@Binlog = common dso_local global %struct.TYPE_14__* null, align 8
@.str.35 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i64 0, align 8
@binlog_disabled = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [17 x i8] c"Saving index...\0A\00", align 1
@start_time = common dso_local global i8* null, align 8

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
  %8 = call i32 (...) @set_debug_handlers()
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  store i32 0, i32* @index_mode, align 4
  %12 = load i8*, i8** @progname, align 8
  %13 = call i32* @strstr(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* @index_mode, align 4
  br label %16

16:                                               ; preds = %15, %2
  store i32 1, i32* @auto_create_new_versions, align 4
  %17 = load i32, i32* @no_argument, align 4
  %18 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* null, i32 %17, i32 0, i32 102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @no_argument, align 4
  %20 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 0, i32 84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @no_argument, align 4
  %22 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 0, i32 109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* @no_argument, align 4
  %24 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %23, i32 0, i32 105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32, i32* @no_argument, align 4
  %26 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %25, i32 0, i32 77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %27 = load i32, i32* @no_argument, align 4
  %28 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %27, i32 0, i32 121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %29 = load i32, i32* @no_argument, align 4
  %30 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %29, i32 0, i32 120, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  %31 = load i32, i32* @no_argument, align 4
  %32 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %31, i32 0, i32 69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %33 = load i32, i32* @no_argument, align 4
  %34 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %33, i32 0, i32 116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %35 = load i32, i32* @no_argument, align 4
  %36 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %35, i32 0, i32 68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  %37 = load i32, i32* @required_argument, align 4
  %38 = load i32, i32* @max_counters_growth_percent, align 4
  %39 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %37, i32 0, i32 80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @required_argument, align 4
  %41 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %40, i32 0, i32 83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  %42 = load i32, i32* @required_argument, align 4
  %43 = call i32 (i8*, i32, i32, i32, i8*, ...) @parse_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %42, i32 0, i32 1000, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @f_parse_option, align 4
  %47 = call i32 @parse_engine_options_long(i32 %44, i8** %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @optind, align 4
  %50 = add nsw i32 %49, 1
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %16
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @optind, align 4
  %55 = add nsw i32 %54, 2
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %318

59:                                               ; preds = %52, %16
  %60 = load i32, i32* @verbosity, align 4
  %61 = icmp sge i32 %60, 3
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* @index_mode, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* @maxconn, align 4
  %71 = add nsw i32 %70, 16
  %72 = call i64 @raise_file_rlimit(i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* @test_mode, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* @maxconn, align 4
  %80 = add nsw i32 %79, 16
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 %80)
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %74, %69
  %84 = load i64, i64* @port, align 8
  %85 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i64, i64* @port, align 8
  %89 = load i32, i32* @settings_addr, align 4
  %90 = load i32, i32* @backlog, align 4
  %91 = call i64 @server_socket(i64 %88, i32 %89, i32 %90, i32 0)
  store i64 %91, i64* @sfd, align 8
  %92 = load i64, i64* @sfd, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32, i32* @stderr, align 4
  %96 = load i64, i64* @port, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i64 %96)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %83
  %101 = call i32 @aes_load_pwd_file(i32 0)
  %102 = load i8*, i8** @username, align 8
  %103 = call i64 @change_user(i8* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i32, i32* @test_mode, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @stderr, align 4
  %110 = load i8*, i8** @username, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i8*, i8** @username, align 8
  br label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i8* [ %113, %112 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), %114 ]
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* %116)
  %118 = call i32 @exit(i32 1) #3
  unreachable

119:                                              ; preds = %105, %100
  %120 = load i64, i64* @MAX_ZALLOC, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %124

123:                                              ; preds = %119
  store i32 8388608, i32* @dynamic_data_buffer_size, align 4
  br label %124

124:                                              ; preds = %123, %122
  %125 = call i32 (...) @init_dyn_data()
  %126 = load i64, i64* @udp_enabled, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = call i32 (...) @get_my_ipv4()
  %130 = load i64, i64* @port, align 8
  %131 = call i32 @init_server_PID(i32 %129, i64 %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* @optind, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** @binlogname, align 8
  %139 = call i64 @engine_preload_filelist(i8* %137, i8* %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %132
  %142 = load i32, i32* @stderr, align 4
  %143 = load i8*, i8** @binlogname, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i8*, i8** @binlogname, align 8
  br label %153

147:                                              ; preds = %141
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* @optind, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  br label %153

153:                                              ; preds = %147, %145
  %154 = phi i8* [ %146, %145 ], [ %152, %147 ]
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0), i8* %154)
  %156 = call i32 @exit(i32 1) #3
  unreachable

157:                                              ; preds = %132
  store i32 10, i32* @log_ts_interval, align 4
  %158 = call i8* @time(i32 0)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %7, align 4
  store i32 %159, i32* @today_start, align 4
  %160 = load i32, i32* %7, align 4
  %161 = srem i32 %160, 86400
  %162 = load i32, i32* @today_start, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* @today_start, align 4
  %164 = load i32, i32* @engine_snapshot_replica, align 4
  %165 = call %struct.TYPE_13__* @open_recent_snapshot(i32 %164)
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** @Snapshot, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %167 = icmp ne %struct.TYPE_13__* %166, null
  br i1 %167, label %168, label %187

168:                                              ; preds = %157
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** @engine_snapshot_name, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* @engine_snapshot_size, align 8
  %179 = load i32, i32* @verbosity, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %168
  %182 = load i32, i32* @stderr, align 4
  %183 = load i8*, i8** @engine_snapshot_name, align 8
  %184 = load i64, i64* @engine_snapshot_size, align 8
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i8* %183, i64 %184)
  br label %186

186:                                              ; preds = %181, %168
  br label %188

187:                                              ; preds = %157
  store i8* null, i8** @engine_snapshot_name, align 8
  store i64 0, i64* @engine_snapshot_size, align 8
  br label %188

188:                                              ; preds = %187, %186
  %189 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %190 = call i32 @get_utime(i32 %189)
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* @index_load_time, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %193 = call i32 @load_index(%struct.TYPE_13__* %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %195 = call i32 @get_utime(i32 %194)
  %196 = load i32, i32* @index_load_time, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* @index_load_time, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %188
  %201 = load i32, i32* @stderr, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load i8*, i8** @engine_snapshot_name, align 8
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0), i32 %202, i8* %203)
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %188
  %207 = load i32, i32* @verbosity, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i32, i32* @stderr, align 4
  %211 = load i64, i64* @jump_log_pos, align 8
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i64 0, i64 0), i64 %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i64, i64* @reverse_index_mode, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %213
  %217 = load i32, i32* @STATS_SCHEMA_V1, align 4
  %218 = call i64 @init_stats_data(i32 %217)
  %219 = icmp sge i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i64, i64* @reverse_index_pos, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i64, i64* @reverse_index_pos, align 8
  store i64 %225, i64* @jump_log_pos, align 8
  br label %230

226:                                              ; preds = %216
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %228 = call i64 @get_binlog_start_pos(%struct.TYPE_15__* %227, i32 0, i32 0)
  %229 = add nsw i64 %228, 36
  store i64 %229, i64* @jump_log_pos, align 8
  br label %230

230:                                              ; preds = %226, %224
  br label %231

231:                                              ; preds = %230, %213
  store i32 10, i32* @log_ts_interval, align 4
  %232 = call i8* @time(i32 0)
  %233 = ptrtoint i8* %232 to i32
  store i32 %233, i32* @now, align 4
  store i32 %233, i32* @today_start, align 4
  %234 = load i32, i32* @now, align 4
  %235 = srem i32 %234, 86400
  %236 = load i32, i32* @today_start, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* @today_start, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %239 = load i64, i64* @jump_log_pos, align 8
  %240 = call %struct.TYPE_14__* @open_binlog(%struct.TYPE_15__* %238, i64 %239)
  store %struct.TYPE_14__* %240, %struct.TYPE_14__** @Binlog, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %242 = icmp ne %struct.TYPE_14__* %241, null
  br i1 %242, label %251, label %243

243:                                              ; preds = %231
  %244 = load i32, i32* @stderr, align 4
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = load i64, i64* @jump_log_pos, align 8
  %249 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0), i8* %247, i64 %248)
  %250 = call i32 @exit(i32 1) #3
  unreachable

251:                                              ; preds = %231
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  store i8* %256, i8** @binlogname, align 8
  %257 = load i32, i32* @verbosity, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %251
  %260 = load i32, i32* @stderr, align 4
  %261 = load i8*, i8** @binlogname, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0), i8* %261, i32 %266)
  br label %268

268:                                              ; preds = %259, %251
  %269 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %270 = call i32 @get_utime(i32 %269)
  store i32 %270, i32* @binlog_load_time, align 4
  %271 = call i32 (...) @clear_log()
  %272 = load i64, i64* @jump_log_pos, align 8
  %273 = load i32, i32* @jump_log_ts, align 4
  %274 = load i32, i32* @jump_log_crc32, align 4
  %275 = call i32 @init_log_data(i64 %272, i32 %273, i32 %274)
  %276 = call i32 @replay_log(i32 0, i32 1)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %268
  %280 = load i32, i32* @stderr, align 4
  %281 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0))
  %282 = call i32 @exit(i32 1) #3
  unreachable

283:                                              ; preds = %268
  %284 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %285 = call i32 @get_utime(i32 %284)
  %286 = load i32, i32* @binlog_load_time, align 4
  %287 = sub nsw i32 %285, %286
  store i32 %287, i32* @binlog_load_time, align 4
  %288 = load i32, i32* @log_readto_pos, align 4
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* @jump_log_pos, align 8
  %291 = sub nsw i64 %289, %290
  store i64 %291, i64* @binlog_loaded_size, align 8
  %292 = load i32, i32* @binlog_disabled, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %283
  %295 = call i32 (...) @clear_read_log()
  br label %296

296:                                              ; preds = %294, %283
  %297 = load i32, i32* @index_mode, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %313

299:                                              ; preds = %296
  %300 = load i32, i32* @verbosity, align 4
  %301 = icmp sge i32 %300, 1
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32, i32* @stderr, align 4
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %303, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i64, i64* @reverse_index_mode, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = call i32 (...) @save_index()
  br label %312

310:                                              ; preds = %305
  %311 = call i32 @assert(i32 0)
  br label %312

312:                                              ; preds = %310, %308
  br label %317

313:                                              ; preds = %296
  %314 = call i32 (...) @clear_write_log()
  %315 = call i8* @time(i32 0)
  store i8* %315, i8** @start_time, align 8
  %316 = call i32 (...) @start_server()
  br label %317

317:                                              ; preds = %313, %312
  store i32 0, i32* %3, align 4
  br label %318

318:                                              ; preds = %317, %57
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @parse_option(i8*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i64, i32, i32, i32) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @init_server_PID(i32, i64) #1

declare dso_local i32 @get_my_ipv4(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i8* @time(i32) #1

declare dso_local %struct.TYPE_13__* @open_recent_snapshot(i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @load_index(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @init_stats_data(i32) #1

declare dso_local i64 @get_binlog_start_pos(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @open_binlog(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @save_index(...) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
