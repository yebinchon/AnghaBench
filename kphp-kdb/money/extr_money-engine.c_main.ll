; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@max_binlog_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"a:b:c:dhi:l:p:rt:u:vB:H:MS:\00", align 1
@verbosity = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@special_acc_id = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@master_slave_mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%d,%d,%127[^:]:%d%n\00", align 1
@split_min = common dso_local global i32 0, align 4
@split_mod = common dso_local global i32 0, align 4
@master_host = common dso_local global i32 0, align 4
@master_port = common dso_local global i32 0, align 4
@split_max = common dso_local global i32 0, align 4
@logname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@daemonize = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"slave mode enabled: slice %d out of %d, master is at %s port %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@index_mode = common dso_local global i64 0, align 8
@settings_addr = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@log_ts_interval = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_snapshot_replica = common dso_local global i32 0, align 4
@Snapshot = common dso_local global %struct.TYPE_12__* null, align 8
@engine_snapshot_name = common dso_local global i8* null, align 8
@engine_snapshot_size = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"load index file %s (size %lld)\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"fatal: error %d while loading index file %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"load index: done, jump_log_pos=%lld, alloc_mem=%ld out of %ld, time %.06lfs\0A\00", align 1
@jump_log_pos = common dso_local global i64 0, align 8
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"starting reading binlog\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_14__* null, align 8
@Binlog = common dso_local global %struct.TYPE_13__* null, align 8
@.str.13 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"replaying binlog file %s (size %lld)\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@use_aio = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i64 0, align 8
@start_time = common dso_local global i32 0, align 4
@binlog_crc32_verbosity_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @set_debug_handlers()
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  store i64 4611686018427387904, i64* @max_binlog_size, align 8
  br label %14

14:                                               ; preds = %175, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %176

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %175 [
    i32 118, label %21
    i32 114, label %24
    i32 104, label %25
    i32 98, label %27
    i32 99, label %35
    i32 112, label %48
    i32 117, label %52
    i32 105, label %54
    i32 97, label %57
    i32 77, label %59
    i32 83, label %65
    i32 108, label %115
    i32 116, label %117
    i32 66, label %121
    i32 72, label %121
    i32 100, label %172
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %175

24:                                               ; preds = %19
  store i32 1, i32* @binlog_disabled, align 4
  br label %175

25:                                               ; preds = %19
  %26 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %388

27:                                               ; preds = %19
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @atoi(i8* %28)
  store i8* %29, i8** @backlog, align 8
  %30 = load i8*, i8** @backlog, align 8
  %31 = icmp ule i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** @BACKLOG, align 8
  store i8* %33, i8** @backlog, align 8
  br label %34

34:                                               ; preds = %32, %27
  br label %175

35:                                               ; preds = %19
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i8* @atoi(i8* %36)
  %38 = ptrtoint i8* %37 to i64
  store i64 %38, i64* @maxconn, align 8
  %39 = load i64, i64* @maxconn, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @maxconn, align 8
  %43 = load i64, i64* @MAX_CONNECTIONS, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %35
  %46 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %46, i64* @maxconn, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %175

48:                                               ; preds = %19
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i8* @atoi(i8* %49)
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* @port, align 8
  br label %175

52:                                               ; preds = %19
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** @username, align 8
  br label %175

54:                                               ; preds = %19
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @atoll(i8* %55)
  store i32 %56, i32* @special_acc_id, align 4
  br label %175

57:                                               ; preds = %19
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** @binlogname, align 8
  br label %175

59:                                               ; preds = %19
  %60 = load i64, i64* @master_slave_mode, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  store i64 1, i64* @master_slave_mode, align 8
  br label %175

65:                                               ; preds = %19
  %66 = load i64, i64* @master_slave_mode, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  store i64 -1, i64* @master_slave_mode, align 8
  store i32 -1, i32* %6, align 4
  %71 = load i8*, i8** @optarg, align 8
  %72 = load i32, i32* @master_host, align 4
  %73 = call i32 (i8*, i8*, ...) @sscanf(i8* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* @split_min, i32* @split_mod, i32 %72, i32* @master_port, i32* %6)
  %74 = icmp sge i32 %73, 4
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load i8*, i8** @optarg, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %79, %65
  %88 = phi i1 [ false, %65 ], [ %86, %79 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* @split_min, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i32, i32* @split_min, align 4
  %95 = load i32, i32* @split_mod, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @split_mod, align 4
  %99 = icmp sle i32 %98, 10000
  br label %100

100:                                              ; preds = %97, %93, %87
  %101 = phi i1 [ false, %93 ], [ false, %87 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* @split_min, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @split_max, align 4
  %106 = load i32, i32* @master_port, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @master_port, align 4
  %110 = icmp slt i32 %109, 65535
  br label %111

111:                                              ; preds = %108, %100
  %112 = phi i1 [ false, %100 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %175

115:                                              ; preds = %19
  %116 = load i8*, i8** @optarg, align 8
  store i8* %116, i8** @logname, align 8
  br label %175

117:                                              ; preds = %19
  %118 = load i8*, i8** @optarg, align 8
  %119 = call i8* @atoi(i8* %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %7, align 4
  br label %175

121:                                              ; preds = %19, %19
  store i8 0, i8* %9, align 1
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i32 (i8*, i8*, ...) @sscanf(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %8, i8* %9)
  %124 = icmp sge i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i8, i8* %9, align 1
  %128 = sext i8 %127 to i32
  %129 = or i32 %128, 32
  switch i32 %129, label %142 [
    i32 107, label %130
    i32 109, label %133
    i32 103, label %136
    i32 116, label %139
  ]

130:                                              ; preds = %121
  %131 = load i64, i64* %8, align 8
  %132 = shl i64 %131, 10
  store i64 %132, i64* %8, align 8
  br label %148

133:                                              ; preds = %121
  %134 = load i64, i64* %8, align 8
  %135 = shl i64 %134, 20
  store i64 %135, i64* %8, align 8
  br label %148

136:                                              ; preds = %121
  %137 = load i64, i64* %8, align 8
  %138 = shl i64 %137, 30
  store i64 %138, i64* %8, align 8
  br label %148

139:                                              ; preds = %121
  %140 = load i64, i64* %8, align 8
  %141 = shl i64 %140, 40
  store i64 %141, i64* %8, align 8
  br label %148

142:                                              ; preds = %121
  %143 = load i8, i8* %9, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %148

148:                                              ; preds = %142, %139, %136, %133, %130
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 66
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i64, i64* %8, align 8
  %153 = icmp sge i64 %152, 1024
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i64, i64* %8, align 8
  %156 = icmp slt i64 %155, 1152921504606846976
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i64, i64* %8, align 8
  store i64 %158, i64* @max_binlog_size, align 8
  br label %171

159:                                              ; preds = %154, %151, %148
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 72
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i64, i64* %8, align 8
  %164 = icmp sge i64 %163, 1048576
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i64, i64* %8, align 8
  %167 = icmp sle i64 %166, 214748364800
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i64, i64* %8, align 8
  store i64 %169, i64* @dynamic_data_buffer_size, align 8
  br label %170

170:                                              ; preds = %168, %165, %162, %159
  br label %171

171:                                              ; preds = %170, %157
  br label %175

172:                                              ; preds = %19
  %173 = load i32, i32* @daemonize, align 4
  %174 = xor i32 %173, 1
  store i32 %174, i32* @daemonize, align 4
  br label %175

175:                                              ; preds = %19, %172, %171, %117, %115, %111, %59, %57, %54, %52, %48, %47, %34, %24, %21
  br label %14

176:                                              ; preds = %14
  %177 = load i64, i64* @master_slave_mode, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i64, i64* @max_binlog_size, align 8
  %181 = icmp eq i64 %180, 4611686018427387904
  br label %182

182:                                              ; preds = %179, %176
  %183 = phi i1 [ true, %176 ], [ %181, %179 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @optind, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @optind, align 4
  %193 = add nsw i32 %192, 2
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %388

197:                                              ; preds = %190, %182
  %198 = load i64, i64* @master_slave_mode, align 8
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32, i32* @split_min, align 4
  %202 = load i32, i32* @split_mod, align 4
  %203 = load i32, i32* @master_host, align 4
  %204 = load i32, i32* @master_port, align 4
  %205 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %201, i32 %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %200, %197
  %207 = load i64, i64* @maxconn, align 8
  %208 = add nsw i64 %207, 16
  %209 = call i64 @raise_file_rlimit(i64 %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load i64, i64* @maxconn, align 8
  %213 = add nsw i64 %212, 16
  %214 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %213)
  %215 = call i32 @exit(i32 1) #3
  unreachable

216:                                              ; preds = %206
  %217 = load i64, i64* @port, align 8
  %218 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %219 = icmp slt i64 %217, %218
  br i1 %219, label %220, label %235

220:                                              ; preds = %216
  %221 = load i64, i64* @index_mode, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %220
  %224 = load i64, i64* @port, align 8
  %225 = load i32, i32* @settings_addr, align 4
  %226 = load i8*, i8** @backlog, align 8
  %227 = call i64 @server_socket(i64 %224, i32 %225, i8* %226, i32 0)
  store i64 %227, i64* @sfd, align 8
  %228 = load i64, i64* @sfd, align 8
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = load i64, i64* @port, align 8
  %232 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %231)
  %233 = call i32 @exit(i32 1) #3
  unreachable

234:                                              ; preds = %223
  br label %235

235:                                              ; preds = %234, %220, %216
  %236 = call i32 @aes_load_pwd_file(i32 0)
  %237 = load i8*, i8** @username, align 8
  %238 = call i64 @change_user(i8* %237)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %235
  %241 = load i8*, i8** @username, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load i8*, i8** @username, align 8
  br label %246

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %245, %243
  %247 = phi i8* [ %244, %243 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %245 ]
  %248 = ptrtoint i8* %247 to i64
  %249 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %248)
  %250 = call i32 @exit(i32 1) #3
  unreachable

251:                                              ; preds = %235
  %252 = call i32 (...) @init_dyn_data()
  store i64 0, i64* @log_ts_interval, align 8
  %253 = load i8**, i8*** %5, align 8
  %254 = load i32, i32* @optind, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** @binlogname, align 8
  %259 = call i64 @engine_preload_filelist(i8* %257, i8* %258)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %251
  %262 = load i8*, i8** @binlogname, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = load i8*, i8** @binlogname, align 8
  br label %272

266:                                              ; preds = %261
  %267 = load i8**, i8*** %5, align 8
  %268 = load i32, i32* @optind, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  %271 = load i8*, i8** %270, align 8
  br label %272

272:                                              ; preds = %266, %264
  %273 = phi i8* [ %265, %264 ], [ %271, %266 ]
  %274 = ptrtoint i8* %273 to i64
  %275 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %274)
  %276 = call i32 @exit(i32 1) #3
  unreachable

277:                                              ; preds = %251
  %278 = load i32, i32* @engine_snapshot_replica, align 4
  %279 = call %struct.TYPE_12__* @open_recent_snapshot(i32 %278)
  store %struct.TYPE_12__* %279, %struct.TYPE_12__** @Snapshot, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %281 = icmp ne %struct.TYPE_12__* %280, null
  br i1 %281, label %282, label %323

282:                                              ; preds = %277
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  store i8* %287, i8** @engine_snapshot_name, align 8
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* @engine_snapshot_size, align 8
  %293 = load i8*, i8** @engine_snapshot_name, align 8
  %294 = load i64, i64* @engine_snapshot_size, align 8
  %295 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %293, i64 %294)
  %296 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %297 = call i32 @get_utime(i32 %296)
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* @index_load_time, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Snapshot, align 8
  %300 = call i32 @load_index(%struct.TYPE_12__* %299)
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %302 = call i32 @get_utime(i32 %301)
  %303 = load i32, i32* @index_load_time, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* @index_load_time, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %282
  %308 = load i32, i32* @stderr, align 4
  %309 = load i32, i32* %6, align 4
  %310 = load i8*, i8** @engine_snapshot_name, align 8
  %311 = call i32 @fprintf(i32 %308, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %309, i8* %310)
  %312 = call i32 @exit(i32 1) #3
  unreachable

313:                                              ; preds = %282
  %314 = load i64, i64* @jump_log_pos, align 8
  %315 = load i64, i64* @dyn_cur, align 8
  %316 = load i64, i64* @dyn_first, align 8
  %317 = sub nsw i64 %315, %316
  %318 = load i64, i64* @dyn_last, align 8
  %319 = load i64, i64* @dyn_first, align 8
  %320 = sub nsw i64 %318, %319
  %321 = load i32, i32* @index_load_time, align 4
  %322 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0), i64 %314, i64 %317, i64 %320, i32 %321)
  br label %324

323:                                              ; preds = %277
  store i8* null, i8** @engine_snapshot_name, align 8
  store i64 0, i64* @engine_snapshot_size, align 8
  br label %324

324:                                              ; preds = %323, %313
  %325 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %327 = load i64, i64* @jump_log_pos, align 8
  %328 = call %struct.TYPE_13__* @open_binlog(%struct.TYPE_14__* %326, i64 %327)
  store %struct.TYPE_13__* %328, %struct.TYPE_13__** @Binlog, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %330 = icmp ne %struct.TYPE_13__* %329, null
  br i1 %330, label %339, label %331

331:                                              ; preds = %324
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** @engine_replica, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = load i64, i64* @jump_log_pos, align 8
  %337 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i64 %335, i64 %336)
  %338 = call i32 @exit(i32 1) #3
  unreachable

339:                                              ; preds = %324
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  store i8* %344, i8** @binlogname, align 8
  %345 = load i8*, i8** @binlogname, align 8
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* %345, i32 %350)
  %352 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %353 = call i32 @get_utime(i32 %352)
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* @binlog_load_time, align 4
  %355 = call i32 (...) @clear_log()
  %356 = load i64, i64* @jump_log_pos, align 8
  %357 = load i32, i32* @jump_log_ts, align 4
  %358 = load i32, i32* @jump_log_crc32, align 4
  %359 = call i32 @init_log_data(i64 %356, i32 %357, i32 %358)
  %360 = load i32, i32* @use_aio, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* @use_aio, align 4
  %362 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %363 = call i32 @replay_log(i32 0, i32 1)
  store i32 %363, i32* %6, align 4
  %364 = load i32, i32* @use_aio, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* @use_aio, align 4
  %366 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %367 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %368 = call i32 @get_utime(i32 %367)
  %369 = load i32, i32* @binlog_load_time, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* @binlog_load_time, align 4
  %371 = load i32, i32* @log_readto_pos, align 4
  %372 = sext i32 %371 to i64
  %373 = load i64, i64* @jump_log_pos, align 8
  %374 = sub nsw i64 %372, %373
  store i64 %374, i64* @binlog_loaded_size, align 8
  %375 = load i32, i32* @binlog_disabled, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %339
  %378 = call i32 (...) @clear_read_log()
  br label %379

379:                                              ; preds = %377, %339
  %380 = call i32 (...) @clear_write_log()
  %381 = call i32 @time(i32* null)
  store i32 %381, i32* @start_time, align 4
  %382 = load i64, i64* @index_mode, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  %385 = call i32 @write_index(i32 0)
  store i32 %385, i32* %3, align 4
  br label %388

386:                                              ; preds = %379
  store i32 6, i32* @binlog_crc32_verbosity_level, align 4
  %387 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %388

388:                                              ; preds = %386, %384, %195, %25
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @kprintf(i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i64, i32, i8*, i32) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @open_recent_snapshot(i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @load_index(%struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local %struct.TYPE_13__* @open_binlog(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @write_index(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
