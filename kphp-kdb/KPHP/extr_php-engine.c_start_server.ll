; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.conn_query* }
%struct.conn_query = type { i32 }

@run_once = common dso_local global i64 0, align 8
@master_flag = common dso_local global i64 0, align 8
@rpc_port = common dso_local global i32 0, align 4
@http_port = common dso_local global i32 0, align 4
@rpc_client_port = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i64 0, align 8
@daemonize = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i64 0, align 8
@sighup_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"master\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"rpc_port is ignored in master mode\0A\00", align 1
@http_sfd = common dso_local global i64 0, align 8
@logname_pattern = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get http_fd\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"try_get_http_fd after start_master\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"cannot open http server socket at port %d: %m\0A\00", align 1
@rpc_sfd = common dso_local global i64 0, align 8
@settings_addr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@backlog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"cannot open rpc server socket at port %d: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"created listening socket at %s:%d, fd=%d\0A\00", align 1
@port = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@ct_php_engine_http_server = common dso_local global i32 0, align 4
@http_methods = common dso_local global i32 0, align 4
@SM_SPECIAL = common dso_local global i32 0, align 4
@ct_php_engine_rpc_server = common dso_local global i32 0, align 4
@rpc_methods = common dso_local global i32 0, align 4
@no_sql = common dso_local global i64 0, align 8
@sql_target_id = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@db_ct = common dso_local global i32 0, align 4
@rpc_client_host = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"warning: only rpc_client_host or rpc_client_port is defined\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"create rpc client target: %s:%d\0A\00", align 1
@rpc_client_ct = common dso_local global i32 0, align 4
@rpc_client_target = common dso_local global i8* null, align 8
@rpc_main_target = common dso_local global i8* null, align 8
@rpc_client_methods = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ct_php_rpc_client = common dso_local global i32 0, align 4
@RPC_INVOKE_REQ = common dso_local global i32 0, align 4
@run_once_count = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i64 0, align 8
@sigterm_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@sigint_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i64 0, align 8
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i64 0, align 8
@sigpoll_handler = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i64 0, align 8
@SIGSTAT = common dso_local global i64 0, align 8
@SIGRTMAX = common dso_local global i64 0, align 8
@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@sigstats_handler = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"Server started\0A\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@precise_now = common dso_local global double 0.000000e+00, align 8
@spoll_send_stats = common dso_local global i64 0, align 8
@sigpoll_cnt = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"after epoll_work(), sigpoll_cnt=%d\0A\00", align 1
@now = common dso_local global i32 0, align 4
@sigterm_on = common dso_local global i64 0, align 8
@rpc_stopped = common dso_local global i32 0, align 4
@hts_stopped = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8
@sigterm_time = common dso_local global double 0.000000e+00, align 8
@php_worker_run_flag = common dso_local global i32 0, align 4
@pending_http_queue = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"Quitting because of sigterm\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Quitting because of pending signals = %llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double 0.000000e+00, double* %3, align 8
  %10 = load i64, i64* @run_once, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i64 0, i64* @master_flag, align 8
  store i32 -1, i32* @rpc_port, align 4
  store i32 -1, i32* @http_port, align 4
  store i32 -1, i32* @rpc_client_port, align 4
  br label %13

13:                                               ; preds = %12, %0
  store i64 0, i64* @pending_signals, align 8
  %14 = load i64, i64* @daemonize, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = call i32 (...) @setsid()
  %18 = load i64, i64* @SIGHUP, align 8
  %19 = load i32, i32* @sighup_handler, align 4
  %20 = call i32 @dl_signal(i64 %18, i32 %19)
  %21 = call i32 (...) @reopen_logs()
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i64, i64* @master_flag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @rpc_port, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @rpc_port, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %22
  %33 = call i32 (...) @init_netbuffers()
  %34 = call i32 (...) @init_epoll()
  %35 = load i64, i64* @master_flag, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* @http_port, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i64* @http_sfd, i64* null
  %42 = load i32, i32* @http_port, align 4
  %43 = call i32 @start_master(i64* %41, i64 (...)* @try_get_http_fd, i32 %42)
  %44 = load i32*, i32** @logname_pattern, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 (...) @reopen_logs()
  br label %48

48:                                               ; preds = %46, %37
  br label %49

49:                                               ; preds = %48, %32
  store i32 0, i32* %2, align 4
  %50 = load i32, i32* @http_port, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load i64, i64* @http_sfd, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load i64, i64* @master_flag, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @dl_assert(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* @master_flag, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %55
  %67 = call i64 (...) @try_get_http_fd()
  store i64 %67, i64* @http_sfd, align 8
  %68 = load i64, i64* @http_sfd, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @http_port, align 4
  %72 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %52, %49
  %76 = load i32, i32* @rpc_port, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i64, i64* @rpc_sfd, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* @rpc_port, align 4
  %83 = load i32, i32* @backlog, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings_addr, i32 0, i32 0), align 4
  %85 = call i64 @server_socket(i32 %82, i32 %84, i32 %83, i32 0)
  store i64 %85, i64* @rpc_sfd, align 8
  %86 = load i64, i64* @rpc_sfd, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @rpc_port, align 4
  %90 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %78, %75
  %94 = load i64, i64* @verbosity, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i64, i64* @http_sfd, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings_addr, i32 0, i32 0), align 4
  %101 = call i32 @conv_addr(i32 %100, i32* null)
  %102 = load i32, i32* @port, align 4
  %103 = load i64, i64* @http_sfd, align 8
  %104 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %99, %96, %93
  %106 = load i8*, i8** @username, align 8
  %107 = call i64 @change_user(i8* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i8*, i8** @username, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i8*, i8** @username, align 8
  br label %115

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i8* [ %113, %112 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %114 ]
  %117 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = call i32 @exit(i32 1) #3
  unreachable

119:                                              ; preds = %105
  %120 = load i64, i64* @http_sfd, align 8
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* @http_sfd, align 8
  %124 = load i32, i32* @SM_SPECIAL, align 4
  %125 = call i32 @init_listening_tcpv6_connection(i64 %123, i32* @ct_php_engine_http_server, i32* @http_methods, i32 %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i64, i64* @rpc_sfd, align 8
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, i64* @rpc_sfd, align 8
  %131 = call i32 @init_listening_connection(i64 %130, i32* @ct_php_engine_rpc_server, i32* @rpc_methods)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i64, i64* @no_sql, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 -1, i32* @sql_target_id, align 4
  br label %143

136:                                              ; preds = %132
  %137 = call i8* @get_target(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 3306, i32* @db_ct)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* @sql_target_id, align 4
  %139 = load i32, i32* @sql_target_id, align 4
  %140 = icmp ne i32 %139, -1
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  br label %143

143:                                              ; preds = %136, %135
  %144 = load i8*, i8** @rpc_client_host, align 8
  %145 = icmp ne i8* %144, null
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* @rpc_client_port, align 4
  %148 = icmp ne i32 %147, -1
  %149 = zext i1 %148 to i32
  %150 = xor i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %143
  %155 = load i8*, i8** @rpc_client_host, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i32, i32* @rpc_client_port, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i8*, i8** @rpc_client_host, align 8
  %162 = load i32, i32* @rpc_client_port, align 4
  %163 = call i32 (i32, i8*, ...) @vkprintf(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %161, i32 %162)
  %164 = load i8*, i8** @rpc_client_host, align 8
  %165 = load i32, i32* @rpc_client_port, align 4
  %166 = call i8* @get_target(i8* %164, i32 %165, i32* @rpc_client_ct)
  store i8* %166, i8** @rpc_client_target, align 8
  %167 = load i8*, i8** @rpc_client_target, align 8
  store i8* %167, i8** @rpc_main_target, align 8
  br label %168

168:                                              ; preds = %160, %157, %154
  %169 = load i64, i64* @run_once, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %204

171:                                              ; preds = %168
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %173 = call i32 @pipe(i32* %172)
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %5, align 4
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %6, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rpc_client_methods, i32 0, i32 0), align 8
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @create_pipe_reader(i32 %178, i32* @ct_php_rpc_client, %struct.TYPE_7__* @rpc_client_methods)
  store i32 24, i32* %8, align 4
  %180 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %181 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %180, i32* %181, align 8
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %200, %171
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @run_once_count, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  %188 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @prepare_rpc_query_raw(i32 %187, i32* %188, i32 %189)
  %191 = load i32, i32* %6, align 4
  %192 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = call i32 @write(i32 %191, i32* %192, i64 %194)
  %196 = load i32, i32* %8, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %182

203:                                              ; preds = %182
  br label %204

204:                                              ; preds = %203, %168
  %205 = call i32 (...) @get_utime_monotonic()
  %206 = load i64, i64* @SIGTERM, align 8
  %207 = load i32, i32* @sigterm_handler, align 4
  %208 = call i32 @dl_signal(i64 %206, i32 %207)
  %209 = load i64, i64* @SIGPIPE, align 8
  %210 = load i32, i32* @SIG_IGN, align 4
  %211 = call i32 @dl_signal(i64 %209, i32 %210)
  %212 = load i64, i64* @SIGINT, align 8
  %213 = load i32, i32* @sigint_handler, align 4
  %214 = call i32 @dl_signal(i64 %212, i32 %213)
  %215 = load i64, i64* @SIGUSR1, align 8
  %216 = load i32, i32* @sigusr1_handler, align 4
  %217 = call i32 @dl_signal(i64 %215, i32 %216)
  %218 = load i64, i64* @SIGPOLL, align 8
  %219 = load i32, i32* @sigpoll_handler, align 4
  %220 = call i32 @dl_signal(i64 %218, i32 %219)
  %221 = load i64, i64* @SIGRTMIN, align 8
  %222 = load i64, i64* @SIGSTAT, align 8
  %223 = icmp sle i64 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %204
  %225 = load i64, i64* @SIGSTAT, align 8
  %226 = load i64, i64* @SIGRTMAX, align 8
  %227 = icmp sle i64 %225, %226
  br label %228

228:                                              ; preds = %224, %204
  %229 = phi i1 [ false, %204 ], [ %227, %224 ]
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load i64, i64* @SIGSTAT, align 8
  %233 = call i32 (...) @dl_get_empty_sigset()
  %234 = load i32, i32* @SA_SIGINFO, align 4
  %235 = load i32, i32* @SA_ONSTACK, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @SA_RESTART, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @sigstats_handler, align 4
  %240 = call i32 @dl_sigaction(i64 %232, i32* null, i32 %233, i32 %238, i32 %239)
  %241 = call i32 (...) @dl_allow_all_signals()
  %242 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %243

243:                                              ; preds = %370, %228
  %244 = load i64, i64* @pending_signals, align 8
  %245 = load i64, i64* @SIGUSR1, align 8
  %246 = shl i64 1, %245
  %247 = load i64, i64* @SIGHUP, align 8
  %248 = shl i64 1, %247
  %249 = or i64 %246, %248
  %250 = xor i64 %249, -1
  %251 = and i64 %244, %250
  %252 = icmp ne i64 %251, 0
  %253 = xor i1 %252, true
  br i1 %253, label %254, label %373

254:                                              ; preds = %243
  %255 = load i64, i64* @verbosity, align 8
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %254
  %258 = load i32, i32* %1, align 4
  %259 = and i32 %258, 255
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* @active_connections, align 4
  %263 = load i32, i32* @maxconn, align 4
  %264 = load i32, i32* @NB_used, align 4
  %265 = load i32, i32* @NB_alloc, align 4
  %266 = load i32, i32* @NB_max, align 4
  %267 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.13, i64 0, i64 0), i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %261, %257, %254
  %269 = call i32 @epoll_work(i32 57)
  %270 = load double, double* @precise_now, align 8
  %271 = load double, double* %3, align 8
  %272 = fcmp ogt double %270, %271
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = call i32 (...) @create_all_outbound_connections()
  %275 = load double, double* @precise_now, align 8
  %276 = fadd double %275, 3.000000e-02
  %277 = call double (...) @drand48()
  %278 = fmul double 2.000000e-02, %277
  %279 = fadd double %276, %278
  store double %279, double* %3, align 8
  br label %280

280:                                              ; preds = %273, %268
  br label %281

281:                                              ; preds = %284, %280
  %282 = load i64, i64* @spoll_send_stats, align 8
  %283 = icmp sgt i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = call i32 (...) @write_full_stats_to_pipe()
  %286 = load i64, i64* @spoll_send_stats, align 8
  %287 = add nsw i64 %286, -1
  store i64 %287, i64* @spoll_send_stats, align 8
  br label %281

288:                                              ; preds = %281
  %289 = load i64, i64* @sigpoll_cnt, align 8
  %290 = icmp sgt i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i64, i64* @sigpoll_cnt, align 8
  %293 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i64 %292)
  store i64 0, i64* @sigpoll_cnt, align 8
  br label %294

294:                                              ; preds = %291, %288
  %295 = load i64, i64* @pending_signals, align 8
  %296 = load i64, i64* @SIGHUP, align 8
  %297 = shl i64 1, %296
  %298 = and i64 %295, %297
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %294
  %301 = load i64, i64* @SIGHUP, align 8
  %302 = shl i64 1, %301
  %303 = xor i64 %302, -1
  %304 = load i64, i64* @pending_signals, align 8
  %305 = and i64 %304, %303
  store i64 %305, i64* @pending_signals, align 8
  br label %306

306:                                              ; preds = %300, %294
  %307 = load i64, i64* @pending_signals, align 8
  %308 = load i64, i64* @SIGUSR1, align 8
  %309 = shl i64 1, %308
  %310 = and i64 %307, %309
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %306
  %313 = load i64, i64* @SIGUSR1, align 8
  %314 = shl i64 1, %313
  %315 = xor i64 %314, -1
  %316 = load i64, i64* @pending_signals, align 8
  %317 = and i64 %316, %315
  store i64 %317, i64* @pending_signals, align 8
  %318 = call i32 (...) @reopen_logs()
  br label %319

319:                                              ; preds = %312, %306
  %320 = load i32, i32* @now, align 4
  %321 = load i32, i32* %2, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = load i32, i32* @now, align 4
  store i32 %324, i32* %2, align 4
  %325 = call i32 (...) @cron()
  br label %326

326:                                              ; preds = %323, %319
  %327 = call i32 (...) @lease_cron()
  %328 = load i64, i64* @sigterm_on, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = load i32, i32* @rpc_stopped, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = call i32 (...) @rpcc_stop()
  br label %335

335:                                              ; preds = %333, %330, %326
  %336 = load i64, i64* @sigterm_on, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %335
  %339 = load i32, i32* @hts_stopped, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %338
  %342 = call i32 (...) @hts_stop()
  br label %343

343:                                              ; preds = %341, %338, %335
  br i1 true, label %344, label %346

344:                                              ; preds = %343
  %345 = call i32 (...) @epoll_pre_event()
  br label %346

346:                                              ; preds = %344, %343
  %347 = load i64, i64* @quit_steps, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %346
  %350 = load i64, i64* @quit_steps, align 8
  %351 = add nsw i64 %350, -1
  store i64 %351, i64* @quit_steps, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %349
  br label %373

354:                                              ; preds = %349, %346
  %355 = load i64, i64* @sigterm_on, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %369

357:                                              ; preds = %354
  %358 = load double, double* @precise_now, align 8
  %359 = load double, double* @sigterm_time, align 8
  %360 = fcmp ogt double %358, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %357
  %362 = load i32, i32* @php_worker_run_flag, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %361
  %365 = load %struct.conn_query*, %struct.conn_query** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pending_http_queue, i32 0, i32 0), align 8
  %366 = icmp eq %struct.conn_query* %365, bitcast (%struct.TYPE_8__* @pending_http_queue to %struct.conn_query*)
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %373

369:                                              ; preds = %364, %361, %357, %354
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %1, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %1, align 4
  br label %243

373:                                              ; preds = %367, %353, %243
  %374 = load i64, i64* @verbosity, align 8
  %375 = icmp sgt i64 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = load i64, i64* @pending_signals, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i64, i64* @pending_signals, align 8
  %381 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i64 %380)
  br label %382

382:                                              ; preds = %379, %376, %373
  %383 = load i64, i64* @http_sfd, align 8
  %384 = icmp sge i64 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %382
  %386 = load i64, i64* @http_sfd, align 8
  %387 = call i32 @epoll_close(i64 %386)
  %388 = load i64, i64* @http_sfd, align 8
  %389 = call i64 @close(i64 %388)
  %390 = icmp sge i64 %389, 0
  %391 = zext i1 %390 to i32
  %392 = call i32 @assert(i32 %391)
  br label %393

393:                                              ; preds = %385, %382
  ret void
}

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @dl_signal(i64, i32) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @start_master(i64*, i64 (...)*, i32) #1

declare dso_local i64 @try_get_http_fd(...) #1

declare dso_local i32 @dl_assert(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i32, i32, i32, i32) #1

declare dso_local i32 @conv_addr(i32, i32*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_listening_tcpv6_connection(i64, i32*, i32*, i32) #1

declare dso_local i32 @init_listening_connection(i64, i32*, i32*) #1

declare dso_local i8* @get_target(i8*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @create_pipe_reader(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @prepare_rpc_query_raw(i32, i32*, i32) #1

declare dso_local i32 @write(i32, i32*, i64) #1

declare dso_local i32 @get_utime_monotonic(...) #1

declare dso_local i32 @dl_sigaction(i64, i32*, i32, i32, i32) #1

declare dso_local i32 @dl_get_empty_sigset(...) #1

declare dso_local i32 @dl_allow_all_signals(...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local double @drand48(...) #1

declare dso_local i32 @write_full_stats_to_pipe(...) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @lease_cron(...) #1

declare dso_local i32 @rpcc_stop(...) #1

declare dso_local i32 @hts_stop(...) #1

declare dso_local i32 @epoll_pre_event(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i64 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
