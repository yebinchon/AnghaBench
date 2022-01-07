; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"6CDH:LM:P:T:Z:b:c:dhl:p:q:ru:v\00", align 1
@verbosity = common dso_local global i64 0, align 8
@double_send_recv = common dso_local global i32 0, align 4
@check_all_locations = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i32 0, align 4
@BACKLOG = common dso_local global i32 0, align 4
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@binlog_disabled = common dso_local global i32 0, align 4
@daemonize = common dso_local global i32 0, align 4
@aes_pwd_file = common dso_local global i8* null, align 8
@hostname = common dso_local global i8* null, align 8
@workers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@SM_IPV6 = common dso_local global i32 0, align 4
@enable_ipv6 = common dso_local global i32 0, align 4
@monitor_priority = common dso_local global i32 0, align 4
@ping_interval = common dso_local global i32 0, align 4
@PING_INTERVAL = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@PID = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@default_ct = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@default_target_port = common dso_local global i64 0, align 8
@hostname_len = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@settings_addr = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@config_filename = common dso_local global i8* null, align 8
@fd = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"config check failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"config loaded!\0A\00", align 1
@local_rbs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [72 x i8] c"nothing to do: no related binlogs found in %s for hostname %s, exiting\0A\00", align 1
@orig_local_rbs = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@RBStats = common dso_local global i32 0, align 4
@LR = common dso_local global %struct.TYPE_8__* null, align 8
@kdb_hosts_loaded = common dso_local global i32 0, align 4
@WStats = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"creating %d workers\0A\00", align 1
@worker_id = common dso_local global i32 0, align 4
@slave_mode = common dso_local global i32 0, align 4
@parent_pid = common dso_local global i32 0, align 4
@pids = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"fatal: do not have needed binlog files\0A\00", align 1
@start_time = common dso_local global i32 0, align 4
@last_handshake_id = common dso_local global i8* null, align 8
@last_session_id = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @set_debug_handlers()
  %14 = call i32 (...) @rdtsc()
  %15 = call i32 @srand48(i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @progname, align 8
  br label %19

19:                                               ; preds = %132, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %133

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %130 [
    i32 118, label %26
    i32 104, label %29
    i32 67, label %31
    i32 68, label %32
    i32 76, label %33
    i32 98, label %34
    i32 99, label %42
    i32 112, label %55
    i32 117, label %59
    i32 108, label %61
    i32 114, label %63
    i32 100, label %66
    i32 80, label %69
    i32 72, label %71
    i32 77, label %73
    i32 90, label %80
    i32 54, label %116
    i32 113, label %118
    i32 84, label %122
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* @verbosity, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @verbosity, align 8
  br label %132

29:                                               ; preds = %24
  %30 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %406

31:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %132

32:                                               ; preds = %24
  store i32 1, i32* @double_send_recv, align 4
  br label %132

33:                                               ; preds = %24
  store i32 1, i32* @check_all_locations, align 4
  br label %132

34:                                               ; preds = %24
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* @backlog, align 4
  %37 = load i32, i32* @backlog, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @BACKLOG, align 4
  store i32 %40, i32* @backlog, align 4
  br label %41

41:                                               ; preds = %39, %34
  br label %132

42:                                               ; preds = %24
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @atoi(i8* %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* @maxconn, align 8
  %46 = load i64, i64* @maxconn, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* @maxconn, align 8
  %50 = load i64, i64* @MAX_CONNECTIONS, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %42
  %53 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %53, i64* @maxconn, align 8
  br label %54

54:                                               ; preds = %52, %48
  br label %132

55:                                               ; preds = %24
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @atoi(i8* %56)
  %58 = sext i32 %57 to i64
  store i64 %58, i64* @port, align 8
  br label %132

59:                                               ; preds = %24
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @username, align 8
  br label %132

61:                                               ; preds = %24
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** @logname, align 8
  br label %132

63:                                               ; preds = %24
  %64 = load i32, i32* @binlog_disabled, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @binlog_disabled, align 4
  br label %132

66:                                               ; preds = %24
  %67 = load i32, i32* @daemonize, align 4
  %68 = xor i32 %67, 1
  store i32 %68, i32* @daemonize, align 4
  br label %132

69:                                               ; preds = %24
  %70 = load i8*, i8** @optarg, align 8
  store i8* %70, i8** @aes_pwd_file, align 8
  br label %132

71:                                               ; preds = %24
  %72 = load i8*, i8** @optarg, align 8
  store i8* %72, i8** @hostname, align 8
  br label %132

73:                                               ; preds = %24
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* @workers, align 4
  %76 = load i32, i32* @workers, align 4
  %77 = icmp sge i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %132

80:                                               ; preds = %24
  store i8 0, i8* %9, align 1
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i32 @sscanf(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %8, i8* %9)
  %83 = icmp sge i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i8, i8* %9, align 1
  %87 = sext i8 %86 to i32
  %88 = or i32 %87, 32
  switch i32 %88, label %101 [
    i32 107, label %89
    i32 109, label %92
    i32 103, label %95
    i32 116, label %98
  ]

89:                                               ; preds = %80
  %90 = load i64, i64* %8, align 8
  %91 = shl i64 %90, 10
  store i64 %91, i64* %8, align 8
  br label %107

92:                                               ; preds = %80
  %93 = load i64, i64* %8, align 8
  %94 = shl i64 %93, 20
  store i64 %94, i64* %8, align 8
  br label %107

95:                                               ; preds = %80
  %96 = load i64, i64* %8, align 8
  %97 = shl i64 %96, 30
  store i64 %97, i64* %8, align 8
  br label %107

98:                                               ; preds = %80
  %99 = load i64, i64* %8, align 8
  %100 = shl i64 %99, 40
  store i64 %100, i64* %8, align 8
  br label %107

101:                                              ; preds = %80
  %102 = load i8, i8* %9, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 32
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  br label %107

107:                                              ; preds = %101, %98, %95, %92, %89
  %108 = load i64, i64* %8, align 8
  %109 = icmp sge i64 %108, 1048576
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = icmp sle i64 %111, 107374182400
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* @dynamic_data_buffer_size, align 8
  br label %115

115:                                              ; preds = %113, %110, %107
  br label %132

116:                                              ; preds = %24
  %117 = load i32, i32* @SM_IPV6, align 4
  store i32 %117, i32* @enable_ipv6, align 4
  br label %132

118:                                              ; preds = %24
  %119 = load i8*, i8** @optarg, align 8
  %120 = call i32 @atoi(i8* %119)
  %121 = and i32 %120, 3
  store i32 %121, i32* @monitor_priority, align 4
  br label %132

122:                                              ; preds = %24
  %123 = load i8*, i8** @optarg, align 8
  %124 = call i32 @atof(i8* %123)
  store i32 %124, i32* @ping_interval, align 4
  %125 = load i32, i32* @ping_interval, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @PING_INTERVAL, align 4
  store i32 %128, i32* @ping_interval, align 4
  br label %129

129:                                              ; preds = %127, %122
  br label %132

130:                                              ; preds = %24
  %131 = call i32 @assert(i32 0)
  br label %132

132:                                              ; preds = %130, %129, %118, %116, %115, %73, %71, %69, %66, %63, %61, %59, %55, %54, %41, %33, %32, %31, %26
  br label %19

133:                                              ; preds = %19
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @optind, align 4
  %136 = add nsw i32 %135, 1
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %406

140:                                              ; preds = %133
  %141 = load i64, i64* @port, align 8
  store i64 %141, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @PID, i32 0, i32 0), align 8
  %142 = load i64, i64* @port, align 8
  store i64 %142, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_ct, i32 0, i32 0), align 8
  %143 = load i64, i64* @port, align 8
  store i64 %143, i64* @default_target_port, align 8
  %144 = call i32 (...) @detect_hostname()
  %145 = load i8*, i8** @hostname, align 8
  %146 = call i32 @strlen(i8* %145)
  store i32 %146, i32* @hostname_len, align 4
  %147 = load i64, i64* @maxconn, align 8
  %148 = add nsw i64 %147, 16
  %149 = call i64 @raise_file_rlimit(i64 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load i32, i32* @stderr, align 4
  %153 = load i64, i64* @maxconn, align 8
  %154 = add nsw i64 %153, 16
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  %156 = call i32 @exit(i32 1) #3
  unreachable

157:                                              ; preds = %140
  %158 = load i64, i64* @port, align 8
  %159 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load i64, i64* @port, align 8
  %163 = load i32, i32* @settings_addr, align 4
  %164 = load i32, i32* @backlog, align 4
  %165 = load i32, i32* @enable_ipv6, align 4
  %166 = call i64 @server_socket(i64 %162, i32 %163, i32 %164, i32 %165)
  store i64 %166, i64* @sfd, align 8
  %167 = load i64, i64* @sfd, align 8
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %161
  %170 = load i32, i32* @stderr, align 4
  %171 = load i64, i64* @port, align 8
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %171)
  %173 = call i32 @exit(i32 1) #3
  unreachable

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %157
  %176 = call i32 (...) @init_dyn_data()
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* @optind, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** @config_filename, align 8
  %182 = load i8*, i8** @config_filename, align 8
  %183 = call i32 @open_file(i32 0, i8* %182, i32 0)
  %184 = call i32 @parse_config(i32 0)
  store i32 %184, i32* %6, align 4
  %185 = load i32*, i32** @fd, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @close(i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %175
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %406

196:                                              ; preds = %175
  %197 = load i64, i64* @verbosity, align 8
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* @workers, align 4
  %204 = load i32, i32* @local_rbs, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* @local_rbs, align 4
  store i32 %207, i32* @workers, align 4
  br label %208

208:                                              ; preds = %206, %202
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %406

212:                                              ; preds = %208
  %213 = load i32, i32* @local_rbs, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* @stderr, align 4
  %217 = load i8*, i8** @config_filename, align 8
  %218 = load i8*, i8** @hostname, align 8
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i8* %217, i8* %218)
  %220 = call i32 @exit(i32 0) #3
  unreachable

221:                                              ; preds = %212
  %222 = load i32, i32* @daemonize, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load i32, i32* @workers, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = call i32 (...) @setsid()
  br label %229

229:                                              ; preds = %227, %224, %221
  %230 = load i32, i32* @local_rbs, align 4
  store i32 %230, i32* @orig_local_rbs, align 4
  %231 = load i32, i32* @local_rbs, align 4
  %232 = mul nsw i32 2, %231
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = trunc i64 %234 to i32
  %236 = load i32, i32* @PROT_READ, align 4
  %237 = load i32, i32* @PROT_WRITE, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @MAP_SHARED, align 4
  %240 = load i32, i32* @MAP_ANONYMOUS, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @mmap(i32 0, i32 %235, i32 %238, i32 %241, i32 -1, i32 0)
  store i32 %242, i32* @RBStats, align 4
  %243 = load i32, i32* @RBStats, align 4
  %244 = call i32 @assert(i32 %243)
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %259, %229
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @local_rbs, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %245
  %250 = load i32, i32* @RBStats, align 4
  %251 = load i32, i32* %6, align 4
  %252 = mul nsw i32 2, %251
  %253 = add nsw i32 %250, %252
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LR, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 8
  br label %259

259:                                              ; preds = %249
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %245

262:                                              ; preds = %245
  %263 = load i32, i32* @workers, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %362

265:                                              ; preds = %262
  %266 = load i32, i32* @kdb_hosts_loaded, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = call i32 (...) @kdb_load_hosts()
  br label %270

270:                                              ; preds = %268, %265
  store i32 0, i32* %6, align 4
  br label %271

271:                                              ; preds = %289, %270
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @local_rbs, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %292

275:                                              ; preds = %271
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LR, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  br label %289

289:                                              ; preds = %275
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %6, align 4
  br label %271

292:                                              ; preds = %271
  %293 = load i32, i32* @workers, align 4
  %294 = mul nsw i32 2, %293
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 4
  %297 = trunc i64 %296 to i32
  %298 = load i32, i32* @PROT_READ, align 4
  %299 = load i32, i32* @PROT_WRITE, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @MAP_SHARED, align 4
  %302 = load i32, i32* @MAP_ANONYMOUS, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @mmap(i32 0, i32 %297, i32 %300, i32 %303, i32 -1, i32 0)
  store i32 %304, i32* @WStats, align 4
  %305 = load i32, i32* @WStats, align 4
  %306 = call i32 @assert(i32 %305)
  %307 = call i32 (...) @kprintf_multiprocessing_mode_enable()
  %308 = load i32, i32* @workers, align 4
  %309 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %308)
  store i32 0, i32* %6, align 4
  br label %310

310:                                              ; preds = %358, %292
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @workers, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %361

314:                                              ; preds = %310
  %315 = call i32 (...) @fork()
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp sge i32 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i32 @assert(i32 %318)
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %351, label %322

322:                                              ; preds = %314
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %324

324:                                              ; preds = %328, %322
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* @local_rbs, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %343

328:                                              ; preds = %324
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LR, align 8
  %330 = load i32, i32* %12, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i64 %331
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LR, align 8
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i64 %335
  %337 = call i32 @memcpy(%struct.TYPE_8__* %332, %struct.TYPE_8__* %336, i32 4)
  %338 = load i32, i32* @workers, align 4
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* %11, align 4
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %12, align 4
  br label %324

343:                                              ; preds = %324
  %344 = load i32, i32* %6, align 4
  store i32 %344, i32* @worker_id, align 4
  %345 = load i32, i32* %12, align 4
  store i32 %345, i32* @local_rbs, align 4
  store i32 0, i32* @workers, align 4
  store i32 1, i32* @slave_mode, align 4
  %346 = call i32 (...) @getppid()
  store i32 %346, i32* @parent_pid, align 4
  %347 = load i32, i32* @parent_pid, align 4
  %348 = icmp sgt i32 %347, 1
  %349 = zext i1 %348 to i32
  %350 = call i32 @assert(i32 %349)
  br label %361

351:                                              ; preds = %314
  %352 = load i32, i32* %10, align 4
  %353 = load i32*, i32** @pids, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 %352, i32* %356, align 4
  br label %357

357:                                              ; preds = %351
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %6, align 4
  br label %310

361:                                              ; preds = %343, %310
  br label %362

362:                                              ; preds = %361, %262
  %363 = load i8*, i8** @aes_pwd_file, align 8
  %364 = call i32 @aes_load_pwd_file(i8* %363)
  %365 = load i8*, i8** @username, align 8
  %366 = call i64 @change_user(i8* %365)
  %367 = icmp slt i64 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %362
  %369 = load i32, i32* @stderr, align 4
  %370 = load i8*, i8** @username, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  %373 = load i8*, i8** @username, align 8
  br label %375

374:                                              ; preds = %368
  br label %375

375:                                              ; preds = %374, %372
  %376 = phi i8* [ %373, %372 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %374 ]
  %377 = call i32 (i32, i8*, ...) @fprintf(i32 %369, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %376)
  %378 = call i32 @exit(i32 1) #3
  unreachable

379:                                              ; preds = %362
  %380 = call i64 (...) @check_binlog_files()
  %381 = icmp sle i64 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %379
  %383 = load i32, i32* @workers, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %382
  %386 = load i32, i32* @stderr, align 4
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %386, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %388 = call i32 @exit(i32 3) #3
  unreachable

389:                                              ; preds = %382, %379
  %390 = load i32, i32* @workers, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  store i32 0, i32* @local_rbs, align 4
  br label %393

393:                                              ; preds = %392, %389
  %394 = call i32 @init_common_data(i32 0, i32 0)
  %395 = call i32 @time(i32 0)
  store i32 %395, i32* @start_time, align 4
  %396 = load i32, i32* @slave_mode, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* @monitor_priority, align 4
  %400 = call i32 @init_monitor(i32 %399)
  br label %401

401:                                              ; preds = %398, %393
  %402 = call i32 (...) @rescan_pid_table()
  %403 = call i8* (...) @lrand48()
  store i8* %403, i8** @last_handshake_id, align 8
  %404 = call i8* (...) @lrand48()
  store i8* %404, i8** @last_session_id, align 8
  %405 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %406

406:                                              ; preds = %401, %211, %191, %138, %29
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @detect_hostname(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i64, i32, i32, i32) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @parse_config(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kdb_load_hosts(...) #1

declare dso_local i32 @kprintf_multiprocessing_mode_enable(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @aes_load_pwd_file(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i64 @check_binlog_files(...) #1

declare dso_local i32 @init_common_data(i32, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @init_monitor(i32) #1

declare dso_local i32 @rescan_pid_table(...) #1

declare dso_local i8* @lrand48(...) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
