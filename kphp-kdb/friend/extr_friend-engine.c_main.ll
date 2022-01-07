; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }

@SIGRTMAX = common dso_local global i32 0, align 4
@sigrtmax_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"test-mode\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"test mode\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ignore-delete-user\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"dump-lists\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"argument rem,mod. Dumps lists with specified rem mod mod\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"reverse friends mode\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index_mode = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"index mode\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"heap size\00", align 1
@progname = common dso_local global i8* null, align 8
@f_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@reverse_friends_mode = common dso_local global i64 0, align 8
@w_split_mod = common dso_local global i64 0, align 8
@maxconn = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@port = common dso_local global i64 0, align 8
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@aes_pwd_file = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@udp_enabled = common dso_local global i64 0, align 8
@binlogname = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@CD_INDEXER = common dso_local global i32 0, align 4
@CD_ENGINE = common dso_local global i32 0, align 4
@engine_replica = common dso_local global %struct.TYPE_15__* null, align 8
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_13__* null, align 8
@engine_snapshot_name = common dso_local global i8* null, align 8
@engine_snapshot_size = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [45 x i8] c"fatal: error %d while loading index file %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"load index: done, jump_log_pos=%lld, time %.06lfs\0A\00", align 1
@jump_log_pos = common dso_local global i32 0, align 4
@Binlog = common dso_local global %struct.TYPE_14__* null, align 8
@.str.18 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i32 0, align 4
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
  %7 = load i32, i32* @SIGRTMAX, align 4
  %8 = load i32, i32* @sigrtmax_handler, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call i32 (...) @set_debug_handlers()
  %11 = load i32, i32* @no_argument, align 4
  %12 = call i32 @parse_option(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null, i8 signext 84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @required_argument, align 4
  %14 = call i32 @parse_option(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32* null, i8 signext 73, i8* null)
  %15 = load i32, i32* @required_argument, align 4
  %16 = call i32 @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32* null, i8 signext 87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* @no_argument, align 4
  %18 = call i32 @parse_option(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %17, i32* null, i8 signext 65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32, i32* @no_argument, align 4
  %20 = call i32 @parse_option(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %19, i32* @index_mode, i8 signext 105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %21 = load i32, i32* @required_argument, align 4
  %22 = call i32 @parse_option(i8* null, i32 %21, i32* null, i8 signext 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** @progname, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @f_parse_option, align 4
  %29 = call i32 @parse_engine_options_long(i32 %26, i8** %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @optind, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @optind, align 4
  %37 = add nsw i32 %36, 2
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %297

41:                                               ; preds = %34, %2
  %42 = load i32, i32* @binlog_disabled, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @reverse_friends_mode, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  store i32 1, i32* @binlog_disabled, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = icmp sge i32 %52, 5
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -5
  %65 = call i64 @memcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 1, i32* @index_mode, align 4
  br label %68

68:                                               ; preds = %67, %54, %48
  %69 = load i64, i64* @w_split_mod, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @maxconn, align 4
  %73 = add nsw i32 %72, 16
  %74 = call i64 @raise_file_rlimit(i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* @test_mode, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* @maxconn, align 4
  %82 = add nsw i32 %81, 16
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %76, %71, %68
  %86 = load i64, i64* @w_split_mod, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @port, align 8
  %90 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i64, i64* @port, align 8
  %94 = load i32, i32* @settings_addr, align 4
  %95 = load i32, i32* @backlog, align 4
  %96 = call i64 @server_socket(i64 %93, i32 %94, i32 %95, i32 0)
  store i64 %96, i64* @sfd, align 8
  %97 = load i64, i64* @sfd, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* @stderr, align 4
  %101 = load i64, i64* @port, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i64 %101)
  %103 = call i32 @exit(i32 1) #3
  unreachable

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %88, %85
  %106 = load i32, i32* @aes_pwd_file, align 4
  %107 = call i32 @aes_load_pwd_file(i32 %106)
  %108 = load i64, i64* @w_split_mod, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* @binlog_disabled, align 4
  br label %111

111:                                              ; preds = %110, %105
  %112 = load i8*, i8** @username, align 8
  %113 = call i64 @change_user(i8* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** @username, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i8*, i8** @username, align 8
  br label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %121 ]
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %123)
  %125 = call i32 @exit(i32 1) #3
  unreachable

126:                                              ; preds = %111
  %127 = call i32 (...) @init_dyn_data()
  %128 = load i64, i64* @udp_enabled, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = call i32 (...) @get_my_ipv4()
  %132 = load i64, i64* @port, align 8
  %133 = call i32 @init_server_PID(i32 %131, i64 %132)
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* @optind, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** @binlogname, align 8
  %141 = call i64 @engine_preload_filelist(i8* %139, i8* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %134
  %144 = load i32, i32* @stderr, align 4
  %145 = load i8*, i8** @binlogname, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i8*, i8** @binlogname, align 8
  br label %155

149:                                              ; preds = %143
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* @optind, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  br label %155

155:                                              ; preds = %149, %147
  %156 = phi i8* [ %148, %147 ], [ %154, %149 ]
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %156)
  %158 = call i32 @exit(i32 1) #3
  unreachable

159:                                              ; preds = %134
  %160 = load i32, i32* @index_mode, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, i32* @CD_INDEXER, align 4
  br label %166

164:                                              ; preds = %159
  %165 = load i32, i32* @CD_ENGINE, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = call i32 @init_common_data(i32 0, i32 %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @cstatus_binlog_name(i8* %171)
  %173 = load i32, i32* @engine_snapshot_replica, align 4
  %174 = call %struct.TYPE_13__* @open_recent_snapshot(i32 %173)
  store %struct.TYPE_13__* %174, %struct.TYPE_13__** @Snapshot, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %176 = icmp ne %struct.TYPE_13__* %175, null
  br i1 %176, label %177, label %197

177:                                              ; preds = %166
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @strdup(i32 %182)
  store i8* %183, i8** @engine_snapshot_name, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* @engine_snapshot_size, align 8
  %189 = load i64, i64* @verbosity, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %177
  %192 = load i32, i32* @stderr, align 4
  %193 = load i8*, i8** @engine_snapshot_name, align 8
  %194 = load i64, i64* @engine_snapshot_size, align 8
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %193, i64 %194)
  br label %196

196:                                              ; preds = %191, %177
  br label %198

197:                                              ; preds = %166
  store i8* null, i8** @engine_snapshot_name, align 8
  store i64 0, i64* @engine_snapshot_size, align 8
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %200 = call i32 @get_utime(i32 %199)
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* @index_load_time, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %203 = call i32 @load_index(%struct.TYPE_13__* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %205 = call i32 @get_utime(i32 %204)
  %206 = load i32, i32* @index_load_time, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* @index_load_time, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %198
  %211 = load i32, i32* @stderr, align 4
  %212 = load i32, i32* %6, align 4
  %213 = load i8*, i8** @engine_snapshot_name, align 8
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 %212, i8* %213)
  %215 = call i32 @exit(i32 1) #3
  unreachable

216:                                              ; preds = %198
  %217 = load i64, i64* @verbosity, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load i32, i32* @stderr, align 4
  %221 = load i32, i32* @jump_log_pos, align 4
  %222 = load i32, i32* @index_load_time, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %219, %216
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Snapshot, align 8
  %226 = call i32 @close_snapshot(%struct.TYPE_13__* %225, i32 1)
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %228 = load i32, i32* @jump_log_pos, align 4
  %229 = call %struct.TYPE_14__* @open_binlog(%struct.TYPE_15__* %227, i32 %228)
  store %struct.TYPE_14__* %229, %struct.TYPE_14__** @Binlog, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %231 = icmp ne %struct.TYPE_14__* %230, null
  br i1 %231, label %239, label %232

232:                                              ; preds = %224
  %233 = load i32, i32* @stderr, align 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** @engine_replica, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i8* %236, i64 0)
  %238 = call i32 @exit(i32 1) #3
  unreachable

239:                                              ; preds = %224
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** @binlogname, align 8
  %245 = load i64, i64* @verbosity, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %239
  %248 = load i32, i32* @stderr, align 4
  %249 = load i8*, i8** @binlogname, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Binlog, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i32, i8*, ...) @fprintf(i32 %248, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i8* %249, i32 %254)
  br label %256

256:                                              ; preds = %247, %239
  %257 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %258 = call i32 @get_utime(i32 %257)
  store i32 %258, i32* @binlog_load_time, align 4
  %259 = call i32 (...) @clear_log()
  %260 = load i32, i32* @jump_log_pos, align 4
  %261 = load i32, i32* @jump_log_ts, align 4
  %262 = load i32, i32* @jump_log_crc32, align 4
  %263 = call i32 @init_log_data(i32 %260, i32 %261, i32 %262)
  %264 = call i32 @replay_log(i32 0, i32 1)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %256
  %268 = load i32, i32* @stderr, align 4
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %270 = call i32 @exit(i32 1) #3
  unreachable

271:                                              ; preds = %256
  %272 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %273 = call i32 @get_utime(i32 %272)
  %274 = load i32, i32* @binlog_load_time, align 4
  %275 = sub nsw i32 %273, %274
  store i32 %275, i32* @binlog_load_time, align 4
  %276 = load i32, i32* @log_readto_pos, align 4
  store i32 %276, i32* @binlog_loaded_size, align 4
  %277 = load i32, i32* @binlog_disabled, align 4
  %278 = icmp ne i32 %277, 1
  br i1 %278, label %279, label %281

279:                                              ; preds = %271
  %280 = call i32 (...) @clear_read_log()
  br label %281

281:                                              ; preds = %279, %271
  %282 = call i32 (...) @clear_write_log()
  %283 = call i32 @time(i32 0)
  store i32 %283, i32* @start_time, align 4
  %284 = load i64, i64* @w_split_mod, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i32, i32* @test_mode, align 4
  %288 = call i32 @dump_lists(i32 %287)
  store i32 0, i32* %3, align 4
  br label %297

289:                                              ; preds = %281
  %290 = load i32, i32* @index_mode, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = call i32 @save_index(i32 0)
  br label %296

294:                                              ; preds = %289
  %295 = call i32 (...) @start_server()
  br label %296

296:                                              ; preds = %294, %292
  store i32 0, i32* %3, align 4
  br label %297

297:                                              ; preds = %296, %286, %39
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @parse_option(i8*, i32, i32*, i8 signext, i8*) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i64, i32, i32, i32) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @init_server_PID(i32, i64) #1

declare dso_local i32 @get_my_ipv4(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @init_common_data(i32, i32) #1

declare dso_local i32 @cstatus_binlog_name(i8*) #1

declare dso_local %struct.TYPE_13__* @open_recent_snapshot(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @load_index(%struct.TYPE_13__*) #1

declare dso_local i32 @close_snapshot(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @open_binlog(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i32, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @dump_lists(i32) #1

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
