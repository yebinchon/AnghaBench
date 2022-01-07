; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64, i8*, i32, i32, i64, i64 }
%struct.sigaction = type { i32, i32, i32 }
%struct.rlimit = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"progname: %s\0A\00", align 1
@progname = common dso_local global i64 0, align 8
@map_limit = common dso_local global i64 0, align 8
@max_virtual_memory = common dso_local global i64 0, align 8
@max_load_image_area = common dso_local global i32 0, align 4
@memory_limit = common dso_local global i32 0, align 4
@threads_limit = common dso_local global i32 0, align 4
@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@groupname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"fatal: cannot change user to %s, group to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@sfd = common dso_local global i32 0, align 4
@ct_image_engine_server = common dso_local global i32 0, align 4
@memcache_methods = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i64 0, align 8
@SIGCHLD = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i64 0, align 8
@main_sig_handler = common dso_local global i32 0, align 4
@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"sigaction (%d) failed. %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@stats_buffer = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Current working directory: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"got SIGCHLD.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"got SIGHUP.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"got SIGUSR1, rotate logs.\0A\00", align 1
@child_process = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@P = common dso_local global i64* null, align 8
@complete_tasks = common dso_local global i32 0, align 4
@RP = common dso_local global %struct.forth_request** null, align 8
@EXIT_FAILURE = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@not_zero_exit_code = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"WTERMSIG(status): %d, pid: %d\0A\00", align 1
@sigabrt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@sigsegv = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@sigkill = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"SIGKILL\00", align 1
@sigxcpu = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"SIGXCPU\00", align 1
@sigterm = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@sigother = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"SIGOTHER\00", align 1
@SHM = common dso_local global i32* null, align 8
@result_living_time = common dso_local global i64 0, align 8
@all_results_memory = common dso_local global i32 0, align 4
@max_process_number = common dso_local global i32 0, align 4
@queue_size = common dso_local global i32 0, align 4
@HEAP = common dso_local global %struct.forth_request** null, align 8
@sigterm_child_handler = common dso_local global i32 0, align 4
@sigsegv_child_handler = common dso_local global i32 0, align 4
@sigabrt_child_handler = common dso_local global i32 0, align 4
@RLIMIT_CPU = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"setrlimit (CPU_LIMIT (%lld,%lld)) fail. %m\00", align 1
@vmsize_limit = common dso_local global i32 0, align 4
@RLIMIT_AS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"setrlimit (RLIMIT_AS (%lld,%lld)) fail. %m\00", align 1
@job_nice = common dso_local global i64 0, align 8
@main_nice = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"nice (%d) fail. %m\0A\00", align 1
@REQ_RUNNING = common dso_local global i64 0, align 8
@quit_steps = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [52 x i8] c"Main process terminated (pending_signals: 0x%llx).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.forth_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.forth_request*, align 8
  %15 = alloca %struct.rlimit, align 4
  %16 = alloca %struct.rlimit, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = call i32 (...) @init_epoll()
  %20 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %21 = call i32 (...) @image_reserved_words_hashtable_init()
  %22 = load i64, i64* @progname, align 8
  %23 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i64 0, i64* @map_limit, align 8
  %24 = load i64, i64* @map_limit, align 8
  %25 = load i64, i64* @max_virtual_memory, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %0
  %28 = load i64, i64* @max_virtual_memory, align 8
  store i64 %28, i64* @map_limit, align 8
  br label %29

29:                                               ; preds = %27, %0
  %30 = load i64, i64* @progname, align 8
  %31 = load i32, i32* @max_load_image_area, align 4
  %32 = load i32, i32* @memory_limit, align 4
  %33 = load i64, i64* @map_limit, align 8
  %34 = load i32, i32* @threads_limit, align 4
  %35 = call i32 @image_init(i64 %30, i32 %31, i32 %32, i64 %33, i32 0, i32 %34)
  %36 = load i64, i64* @daemonize, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 (...) @setsid()
  %40 = call i32 (...) @reopen_logs()
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i8*, i8** @username, align 8
  %43 = load i8*, i8** @groupname, align 8
  %44 = call i64 @change_user_group(i8* %42, i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i8*, i8** @username, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8*, i8** @username, align 8
  br label %52

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %51 ]
  %54 = load i8*, i8** @groupname, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i8*, i8** @groupname, align 8
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %58 ]
  %61 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %41
  %64 = call i32 (...) @shared_memory_init()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %63
  %69 = load i32, i32* @sfd, align 4
  %70 = call i32 @init_listening_connection(i32 %69, i32* @ct_image_engine_server, i32* @memcache_methods)
  %71 = load i32, i32* @SIG_DFL, align 4
  %72 = call i32 @signal(i32 128, i32 %71)
  %73 = load i32, i32* @SIGPIPE, align 4
  %74 = load i32, i32* @SIG_IGN, align 4
  %75 = call i32 @signal(i32 %73, i32 %74)
  %76 = load i32, i32* @SIGIO, align 4
  %77 = load i32, i32* @SIG_IGN, align 4
  %78 = call i32 @signal(i32 %76, i32 %77)
  %79 = call i32 @sigemptyset(i32* %3)
  %80 = load i64, i64* @SIGINT, align 8
  %81 = call i32 @sigaddset(i32* %3, i64 %80)
  %82 = call i32 @sigaddset(i32* %3, i64 129)
  %83 = load i64, i64* @SIGUSR1, align 8
  %84 = call i32 @sigaddset(i32* %3, i64 %83)
  %85 = load i64, i64* @SIGCHLD, align 8
  %86 = call i32 @sigaddset(i32* %3, i64 %85)
  %87 = load i64, i64* @daemonize, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %68
  %90 = load i64, i64* @SIGHUP, align 8
  %91 = call i32 @sigaddset(i32* %3, i64 %90)
  br label %92

92:                                               ; preds = %89, %68
  %93 = load i32, i32* @main_sig_handler, align 4
  %94 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %3, align 4
  %96 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @SA_NOCLDSTOP, align 4
  %98 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  store i32 1, i32* %1, align 4
  br label %99

99:                                               ; preds = %117, %92
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* @SIGRTMAX, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i32, i32* %1, align 4
  %105 = call i64 @sigismember(i32* %3, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32, i32* %1, align 4
  %109 = call i64 @sigaction(i32 %108, %struct.sigaction* %4, i32* null)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %1, align 4
  %113 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %99

120:                                              ; preds = %99
  %121 = load i64, i64* @verbosity, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32, i32* @stats_buffer, align 4
  %125 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %126 = sub nsw i64 %125, 10
  %127 = call i8* @getcwd(i32 %124, i64 %126)
  store i8* %127, i8** %5, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %123
  br label %134

134:                                              ; preds = %133, %120
  store i32 0, i32* %1, align 4
  br label %135

135:                                              ; preds = %572, %134
  %136 = load i64, i64* @verbosity, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i32, i32* %1, align 4
  %140 = and i32 %139, 1023
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* @active_connections, align 4
  %144 = load i32, i32* @maxconn, align 4
  %145 = load i32, i32* @NB_used, align 4
  %146 = load i32, i32* @NB_alloc, align 4
  %147 = load i32, i32* @NB_max, align 4
  %148 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %142, %138, %135
  %150 = call i32 @epoll_work(i32 11)
  %151 = load i32, i32* @now, align 4
  %152 = load i32, i32* %2, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @now, align 4
  store i32 %155, i32* %2, align 4
  %156 = call i32 (...) @cron()
  br label %157

157:                                              ; preds = %154, %149
  %158 = call i64 (...) @interrupted_by_signal()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %575

161:                                              ; preds = %157
  %162 = load i64, i64* @pending_signals, align 8
  %163 = load i64, i64* @SIGCHLD, align 8
  %164 = shl i64 1, %163
  %165 = and i64 %162, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i64, i64* @SIGCHLD, align 8
  %169 = call i32 @pending_signals_clear_bit(i32* %3, i64 %168)
  %170 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %167, %161
  %172 = load i64, i64* @pending_signals, align 8
  %173 = load i64, i64* @SIGHUP, align 8
  %174 = shl i64 1, %173
  %175 = and i64 %172, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i64, i64* @SIGHUP, align 8
  %179 = call i32 @pending_signals_clear_bit(i32* %3, i64 %178)
  %180 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %181

181:                                              ; preds = %177, %171
  %182 = load i64, i64* @pending_signals, align 8
  %183 = load i64, i64* @SIGUSR1, align 8
  %184 = shl i64 1, %183
  %185 = and i64 %182, %184
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load i64, i64* @SIGUSR1, align 8
  %189 = call i32 @pending_signals_clear_bit(i32* %3, i64 %188)
  %190 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %191 = call i32 (...) @reopen_logs()
  br label %192

192:                                              ; preds = %187, %181
  br label %193

193:                                              ; preds = %380, %192
  %194 = load i32, i32* @child_process, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %381

196:                                              ; preds = %193
  %197 = load i32, i32* @WNOHANG, align 4
  %198 = call i64 @waitpid(i32 -1, i32* %6, i32 %197)
  store i64 %198, i64* %7, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp sle i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %381

202:                                              ; preds = %196
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %377, %202
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @child_process, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %380

207:                                              ; preds = %203
  %208 = load i64*, i64** @P, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %376

215:                                              ; preds = %207
  store i8* null, i8** %9, align 8
  %216 = load i32, i32* @complete_tasks, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @complete_tasks, align 4
  %218 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %218, i64 %220
  %222 = load %struct.forth_request*, %struct.forth_request** %221, align 8
  store %struct.forth_request* %222, %struct.forth_request** %10, align 8
  %223 = load i8*, i8** @EXIT_FAILURE, align 8
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %226 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %6, align 4
  %228 = call i64 @WIFEXITED(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %215
  %231 = load i32, i32* %6, align 4
  %232 = call i64 @WEXITSTATUS(i32 %231)
  %233 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %234 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %236 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @EXIT_SUCCESS, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %230
  %241 = load i8*, i8** @EXIT_FAILURE, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %244 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  %245 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %246 = call i32 @stat_failure_incr(i32* @not_zero_exit_code, %struct.forth_request* %245)
  br label %247

247:                                              ; preds = %240, %230
  br label %280

248:                                              ; preds = %215
  %249 = load i32, i32* %6, align 4
  %250 = call i64 @WIFSIGNALED(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %248
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @WTERMSIG(i32 %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i64, i64* %7, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %255, i32 %257)
  %259 = load i32, i32* %11, align 4
  switch i32 %259, label %275 [
    i32 132, label %260
    i32 130, label %263
    i32 131, label %266
    i32 128, label %269
    i32 129, label %272
  ]

260:                                              ; preds = %252
  %261 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %262 = call i32 @stat_failure_incr(i32* @sigabrt, %struct.forth_request* %261)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %278

263:                                              ; preds = %252
  %264 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %265 = call i32 @stat_failure_incr(i32* @sigsegv, %struct.forth_request* %264)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %278

266:                                              ; preds = %252
  %267 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %268 = call i32 @stat_failure_incr(i32* @sigkill, %struct.forth_request* %267)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %278

269:                                              ; preds = %252
  %270 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %271 = call i32 @stat_failure_incr(i32* @sigxcpu, %struct.forth_request* %270)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %278

272:                                              ; preds = %252
  %273 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %274 = call i32 @stat_failure_incr(i32* @sigterm, %struct.forth_request* %273)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %278

275:                                              ; preds = %252
  %276 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %277 = call i32 @stat_failure_incr(i32* @sigother, %struct.forth_request* %276)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %278

278:                                              ; preds = %275, %272, %269, %266, %263, %260
  br label %279

279:                                              ; preds = %278, %248
  br label %280

280:                                              ; preds = %279, %247
  %281 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %282 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %287 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @free(i8* %288)
  %290 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %291 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %290, i32 0, i32 4
  store i64 0, i64* %291, align 8
  br label %292

292:                                              ; preds = %285, %280
  %293 = load i32, i32* @child_process, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* @child_process, align 4
  %295 = load i64*, i64** @P, align 8
  %296 = load i32, i32* @child_process, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load i64*, i64** @P, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  store i64 %299, i64* %303, align 8
  %304 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %305 = load i32, i32* @child_process, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %304, i64 %306
  %308 = load %struct.forth_request*, %struct.forth_request** %307, align 8
  %309 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %309, i64 %311
  store %struct.forth_request* %308, %struct.forth_request** %312, align 8
  %313 = load i32*, i32** @SHM, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %12, align 4
  %318 = load i32*, i32** @SHM, align 8
  %319 = load i32, i32* @child_process, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** @SHM, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %322, i32* %326, align 4
  %327 = load i32, i32* %12, align 4
  %328 = load i32*, i32** @SHM, align 8
  %329 = load i32, i32* @child_process, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %327, i32* %331, align 4
  %332 = load i8*, i8** %9, align 8
  %333 = icmp eq i8* %332, null
  br i1 %333, label %334, label %345

334:                                              ; preds = %292
  %335 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %336 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** @SHM, align 8
  %339 = load i32, i32* @child_process, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %344 = call i32 @copy_shared_memory_output(i32 %337, i32 %342, %struct.forth_request* %343)
  br label %373

345:                                              ; preds = %292
  %346 = load i8*, i8** %9, align 8
  %347 = call i64 @strlen(i8* %346)
  %348 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %349 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %348, i32 0, i32 4
  store i64 %347, i64* %349, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = call i8* @strdup(i8* %350)
  %352 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %353 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %352, i32 0, i32 1
  store i8* %351, i8** %353, align 8
  %354 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %355 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @assert(i8* %356)
  %358 = load i32, i32* @now, align 4
  %359 = sext i32 %358 to i64
  %360 = load i64, i64* @result_living_time, align 8
  %361 = add nsw i64 %359, %360
  %362 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %363 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %362, i32 0, i32 5
  store i64 %361, i64* %363, align 8
  %364 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %365 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %364, i32 0, i32 4
  %366 = load i64, i64* %365, align 8
  %367 = add nsw i64 %366, 1
  %368 = load i32, i32* @all_results_memory, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %367
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* @all_results_memory, align 4
  %372 = call i32 (...) @forth_request_run_output_gc()
  br label %373

373:                                              ; preds = %345, %334
  %374 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %375 = call i32 @queue_add(%struct.forth_request* %374)
  br label %380

376:                                              ; preds = %207
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %8, align 4
  br label %203

380:                                              ; preds = %373, %203
  br label %193

381:                                              ; preds = %201, %193
  store i32 0, i32* %1, align 4
  br label %382

382:                                              ; preds = %436, %381
  %383 = load i32, i32* %1, align 4
  %384 = load i32, i32* @child_process, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %439

386:                                              ; preds = %382
  %387 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %388 = load i32, i32* %1, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %387, i64 %389
  %391 = load %struct.forth_request*, %struct.forth_request** %390, align 8
  %392 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %403, label %395

395:                                              ; preds = %386
  %396 = load i64*, i64** @P, align 8
  %397 = load i32, i32* %1, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %396, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = call i64 @child_check_limits(i64 %400)
  %402 = icmp sgt i64 %401, 0
  br i1 %402, label %403, label %435

403:                                              ; preds = %395, %386
  %404 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %405 = load i32, i32* %1, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %404, i64 %406
  %408 = load %struct.forth_request*, %struct.forth_request** %407, align 8
  %409 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %403
  %413 = load i64*, i64** @P, align 8
  %414 = load i32, i32* %1, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i64, i64* %413, i64 %415
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @kill(i64 %417, i32 131)
  br label %434

419:                                              ; preds = %403
  %420 = load i64*, i64** @P, align 8
  %421 = load i32, i32* %1, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %420, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = call i32 @kill(i64 %424, i32 129)
  %426 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %427 = load i32, i32* %1, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %426, i64 %428
  %430 = load %struct.forth_request*, %struct.forth_request** %429, align 8
  %431 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, 1
  store i32 %433, i32* %431, align 8
  br label %434

434:                                              ; preds = %419, %412
  br label %435

435:                                              ; preds = %434, %395
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %1, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %1, align 4
  br label %382

439:                                              ; preds = %382
  br label %440

440:                                              ; preds = %562, %439
  %441 = load i32, i32* @child_process, align 4
  %442 = load i32, i32* @max_process_number, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load i32, i32* @queue_size, align 4
  %446 = icmp sgt i32 %445, 0
  br label %447

447:                                              ; preds = %444, %440
  %448 = phi i1 [ false, %440 ], [ %446, %444 ]
  br i1 %448, label %449, label %563

449:                                              ; preds = %447
  %450 = call i64 (...) @fork()
  store i64 %450, i64* %13, align 8
  %451 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %452 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %451, i64 1
  %453 = load %struct.forth_request*, %struct.forth_request** %452, align 8
  store %struct.forth_request* %453, %struct.forth_request** %14, align 8
  %454 = load %struct.forth_request*, %struct.forth_request** %14, align 8
  %455 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %454, i32 0, i32 1
  %456 = load i8*, i8** %455, align 8
  %457 = call i32 @assert(i8* %456)
  %458 = load i32, i32* @queue_size, align 4
  %459 = add nsw i32 %458, -1
  store i32 %459, i32* @queue_size, align 4
  %460 = load i64, i64* %13, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %537, label %462

462:                                              ; preds = %449
  %463 = load i32, i32* @sigterm_child_handler, align 4
  %464 = call i32 @signal(i32 129, i32 %463)
  %465 = load i32, i32* @sigsegv_child_handler, align 4
  %466 = call i32 @signal(i32 130, i32 %465)
  %467 = load i32, i32* @sigabrt_child_handler, align 4
  %468 = call i32 @signal(i32 132, i32 %467)
  %469 = load i32, i32* @sfd, align 4
  %470 = call i32 @close(i32 %469)
  store i32 -1, i32* @sfd, align 4
  %471 = load i32, i32* @threads_limit, align 4
  %472 = mul nsw i32 20, %471
  %473 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 1
  store i32 %472, i32* %473, align 4
  %474 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0
  store i32 %472, i32* %474, align 4
  %475 = load i32, i32* @RLIMIT_CPU, align 4
  %476 = call i64 @setrlimit(i32 %475, %struct.rlimit* %16)
  %477 = icmp slt i64 %476, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %462
  %479 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i64 %481, i64 %484)
  br label %486

486:                                              ; preds = %478, %462
  %487 = load i32, i32* @vmsize_limit, align 4
  %488 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %15, i32 0, i32 1
  store i32 %487, i32* %488, align 4
  %489 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %15, i32 0, i32 0
  store i32 %487, i32* %489, align 4
  %490 = load i32, i32* @RLIMIT_AS, align 4
  %491 = call i64 @setrlimit(i32 %490, %struct.rlimit* %15)
  %492 = icmp slt i64 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %15, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %15, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = sext i32 %498 to i64
  %500 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i64 %496, i64 %499)
  br label %501

501:                                              ; preds = %493, %486
  %502 = load i64, i64* @job_nice, align 8
  %503 = load i64, i64* @main_nice, align 8
  %504 = icmp sgt i64 %502, %503
  br i1 %504, label %505, label %516

505:                                              ; preds = %501
  %506 = load i64, i64* @job_nice, align 8
  %507 = load i64, i64* @main_nice, align 8
  %508 = sub nsw i64 %506, %507
  %509 = call i64 @nice(i64 %508)
  %510 = icmp slt i64 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %505
  %512 = load i64, i64* @job_nice, align 8
  %513 = load i64, i64* @main_nice, align 8
  %514 = sub nsw i64 %512, %513
  %515 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i64 %514)
  br label %516

516:                                              ; preds = %511, %505, %501
  %517 = load %struct.forth_request*, %struct.forth_request** %14, align 8
  %518 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %517, i32 0, i32 1
  %519 = load i8*, i8** %518, align 8
  store i8* %519, i8** %17, align 8
  %520 = load %struct.forth_request*, %struct.forth_request** %14, align 8
  %521 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = load i8*, i8** %17, align 8
  %524 = load i8*, i8** %17, align 8
  %525 = call i64 @strlen(i8* %524)
  %526 = call i64 (...) @getpid()
  %527 = trunc i64 %526 to i32
  %528 = load i32*, i32** @SHM, align 8
  %529 = load i32, i32* @child_process, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @image_exec(i32 %522, i8* %523, i64 %525, i32 %527, i32 %532)
  store i32 %533, i32* %18, align 4
  %534 = call i32 (...) @image_done()
  %535 = load i32, i32* %18, align 4
  %536 = call i32 @exit(i32 %535) #3
  unreachable

537:                                              ; preds = %449
  %538 = load %struct.forth_request*, %struct.forth_request** %14, align 8
  %539 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %538, i32 0, i32 2
  store i32 0, i32* %539, align 8
  %540 = load i64, i64* %13, align 8
  %541 = load i64*, i64** @P, align 8
  %542 = load i32, i32* @child_process, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i64, i64* %541, i64 %543
  store i64 %540, i64* %544, align 8
  %545 = load %struct.forth_request*, %struct.forth_request** %14, align 8
  %546 = load %struct.forth_request**, %struct.forth_request*** @RP, align 8
  %547 = load i32, i32* @child_process, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %546, i64 %548
  store %struct.forth_request* %545, %struct.forth_request** %549, align 8
  %550 = load i32, i32* @child_process, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* @child_process, align 4
  %552 = load i64, i64* @REQ_RUNNING, align 8
  %553 = load %struct.forth_request*, %struct.forth_request** %14, align 8
  %554 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %553, i32 0, i32 0
  store i64 %552, i64* %554, align 8
  %555 = load %struct.forth_request**, %struct.forth_request*** @HEAP, align 8
  %556 = load i32, i32* @queue_size, align 4
  %557 = add nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %555, i64 %558
  %560 = load %struct.forth_request*, %struct.forth_request** %559, align 8
  %561 = call i32 @heapify_front(%struct.forth_request* %560, i32 1)
  br label %562

562:                                              ; preds = %537
  br label %440

563:                                              ; preds = %447
  %564 = load i64, i64* @quit_steps, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %563
  %567 = load i64, i64* @quit_steps, align 8
  %568 = add nsw i64 %567, -1
  store i64 %568, i64* @quit_steps, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %566
  br label %575

571:                                              ; preds = %566, %563
  br label %572

572:                                              ; preds = %571
  %573 = load i32, i32* %1, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %1, align 4
  br label %135

575:                                              ; preds = %570, %160
  %576 = load i32, i32* @sfd, align 4
  %577 = call i32 @epoll_close(i32 %576)
  %578 = load i32, i32* @sfd, align 4
  %579 = call i32 @close(i32 %578)
  %580 = call i32 (...) @image_done()
  %581 = load i64, i64* @pending_signals, align 8
  %582 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0), i64 %581)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @image_reserved_words_hashtable_init(...) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @image_init(i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i64 @change_user_group(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @shared_memory_init(...) #1

declare dso_local i32 @init_listening_connection(i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i64) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i8* @getcwd(i32, i64) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i64 @interrupted_by_signal(...) #1

declare dso_local i32 @pending_signals_clear_bit(i32*, i64) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @stat_failure_incr(i32*, %struct.forth_request*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @copy_shared_memory_output(i32, i32, %struct.forth_request*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @forth_request_run_output_gc(...) #1

declare dso_local i32 @queue_add(%struct.forth_request*) #1

declare dso_local i64 @child_check_limits(i64) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @nice(i64) #1

declare dso_local i32 @image_exec(i32, i8*, i64, i32, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @image_done(...) #1

declare dso_local i32 @heapify_front(%struct.forth_request*, i32) #1

declare dso_local i32 @epoll_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
