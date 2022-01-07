; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@sfd = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@daemonize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i64 0, align 8
@binlogname = common dso_local global i64 0, align 8
@binlog_disabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"log_readto_pos: %lld\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@Binlog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"found %d running transactions\0A\00", align 1
@ct_copyexec_engine_server = common dso_local global i32 0, align 4
@memcache_methods = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i64 0, align 8
@SIGCHLD = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i64 0, align 8
@copyexec_main_sig_handler = common dso_local global i32 0, align 4
@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"sigaction (%d) failed. %m\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"got SIGCHLD.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"got SIGHUP.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"got SIGUSR1, rotate logs.\0A\00", align 1
@results_client_pid = common dso_local global i64 0, align 8
@results_client_creation_time = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"Main process terminated (pending_signals: 0x%llx).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %6 = call i32 (...) @init_epoll()
  %7 = load i64, i64* @sfd, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* @port, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i64, i64* @port, align 8
  %14 = load i32, i32* @settings_addr, align 4
  %15 = load i32, i32* @backlog, align 4
  %16 = call i64 @server_socket(i64 %13, i32 %14, i32 %15, i32 0)
  store i64 %16, i64* @sfd, align 8
  %17 = load i64, i64* @sfd, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i64, i64* @port, align 8
  %21 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = call i32 @exit(i32 3) #3
  unreachable

23:                                               ; preds = %12
  %24 = call i32 (...) @init_netbuffers()
  br label %25

25:                                               ; preds = %23, %9, %0
  %26 = load i64, i64* @daemonize, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 (...) @setsid()
  %30 = call i32 (...) @reopen_logs()
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* @FullVersionStr, align 8
  %33 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* @binlogname, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32, i32* @binlog_disabled, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @log_readto_pos, align 8
  %41 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @Binlog, align 4
  %43 = call i64 @append_to_binlog(i32 %42)
  %44 = load i64, i64* @log_readto_pos, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %39, %36, %31
  %49 = call i32 (...) @find_running_transactions()
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = call i32 (...) @copyexec_aux_binlog_seek()
  %54 = load i64, i64* @sfd, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* @sfd, align 8
  %58 = call i32 @init_listening_connection(i64 %57, i32* @ct_copyexec_engine_server, i32* @memcache_methods)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32, i32* @SIGPIPE, align 4
  %61 = load i32, i32* @SIG_IGN, align 4
  %62 = call i32 @signal(i32 %60, i32 %61)
  %63 = load i32, i32* @SIGIO, align 4
  %64 = load i32, i32* @SIG_IGN, align 4
  %65 = call i32 @signal(i32 %63, i32 %64)
  %66 = call i32 @sigemptyset(i32* %3)
  %67 = load i64, i64* @SIGINT, align 8
  %68 = call i32 @sigaddset(i32* %3, i64 %67)
  %69 = load i64, i64* @SIGTERM, align 8
  %70 = call i32 @sigaddset(i32* %3, i64 %69)
  %71 = load i64, i64* @SIGUSR1, align 8
  %72 = call i32 @sigaddset(i32* %3, i64 %71)
  %73 = load i64, i64* @SIGCHLD, align 8
  %74 = call i32 @sigaddset(i32* %3, i64 %73)
  %75 = load i64, i64* @daemonize, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i64, i64* @SIGHUP, align 8
  %79 = call i32 @sigaddset(i32* %3, i64 %78)
  br label %80

80:                                               ; preds = %77, %59
  %81 = load i32, i32* @copyexec_main_sig_handler, align 4
  %82 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @SA_NOCLDSTOP, align 4
  %86 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  store i32 1, i32* %1, align 4
  br label %87

87:                                               ; preds = %105, %80
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* @SIGRTMAX, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i32, i32* %1, align 4
  %93 = call i64 @sigismember(i32* %3, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* %1, align 4
  %97 = call i64 @sigaction(i32 %96, %struct.sigaction* %4, i32* null)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %1, align 4
  %101 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %87

108:                                              ; preds = %87
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %195, %108
  %110 = load i32, i32* %1, align 4
  %111 = and i32 %110, 1023
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @active_connections, align 4
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* @maxconn, align 4
  %117 = load i32, i32* @NB_used, align 4
  %118 = load i32, i32* @NB_alloc, align 4
  %119 = load i32, i32* @NB_max, align 4
  %120 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i64 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %109
  %122 = call i32 @epoll_work(i32 77)
  %123 = call i64 (...) @interrupted_by_signal()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %198

126:                                              ; preds = %121
  %127 = load i64, i64* @pending_signals, align 8
  %128 = load i64, i64* @SIGCHLD, align 8
  %129 = shl i64 1, %128
  %130 = and i64 %127, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i64, i64* @SIGCHLD, align 8
  %134 = call i32 @pending_signals_clear_bit(i32* %3, i64 %133)
  %135 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %136 = call i32 (...) @transaction_check_child_status()
  br label %137

137:                                              ; preds = %132, %126
  %138 = load i64, i64* @pending_signals, align 8
  %139 = load i64, i64* @SIGHUP, align 8
  %140 = shl i64 1, %139
  %141 = and i64 %138, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i64, i64* @SIGHUP, align 8
  %145 = call i32 @pending_signals_clear_bit(i32* %3, i64 %144)
  %146 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %147 = call i32 @sync_binlog(i32 2)
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i64, i64* @pending_signals, align 8
  %150 = load i64, i64* @SIGUSR1, align 8
  %151 = shl i64 1, %150
  %152 = and i64 %149, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %148
  %155 = load i64, i64* @SIGUSR1, align 8
  %156 = call i32 @pending_signals_clear_bit(i32* %3, i64 %155)
  %157 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %158 = call i32 (...) @reopen_logs()
  %159 = load i64, i64* @SIGUSR1, align 8
  %160 = call i32 @transaction_child_kill(i64 %159)
  %161 = load i64, i64* @SIGUSR1, align 8
  %162 = call i32 @transaction_auto_kill(i64 %161)
  %163 = load i64, i64* @results_client_pid, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %154
  %166 = load i64, i64* @results_client_creation_time, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i64, i64* @results_client_creation_time, align 8
  %170 = load i64, i64* @results_client_pid, align 8
  %171 = call i64 @get_process_creation_time(i64 %170)
  %172 = icmp eq i64 %169, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i64, i64* @results_client_pid, align 8
  %175 = load i64, i64* @SIGUSR1, align 8
  %176 = call i32 @kill(i64 %174, i64 %175)
  br label %177

177:                                              ; preds = %173, %168, %165, %154
  %178 = call i32 @sync_binlog(i32 2)
  br label %179

179:                                              ; preds = %177, %148
  %180 = load i32, i32* @now, align 4
  %181 = load i32, i32* %2, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* @now, align 4
  store i32 %184, i32* %2, align 4
  %185 = call i32 (...) @cron()
  br label %186

186:                                              ; preds = %183, %179
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  br label %198

194:                                              ; preds = %189, %186
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %1, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %1, align 4
  br label %109

198:                                              ; preds = %193, %125
  %199 = load i64, i64* @sfd, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i64, i64* @sfd, align 8
  %203 = call i32 @epoll_close(i64 %202)
  %204 = load i64, i64* @sfd, align 8
  %205 = call i32 @close(i64 %204)
  br label %206

206:                                              ; preds = %201, %198
  %207 = call i32 (...) @flush_binlog_last()
  %208 = call i32 @sync_binlog(i32 2)
  %209 = load i64, i64* @pending_signals, align 8
  %210 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i64 %209)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i64 @server_socket(i64, i32, i32, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @append_to_binlog(i32) #1

declare dso_local i32 @find_running_transactions(...) #1

declare dso_local i32 @copyexec_aux_binlog_seek(...) #1

declare dso_local i32 @init_listening_connection(i64, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i64) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i64 @interrupted_by_signal(...) #1

declare dso_local i32 @pending_signals_clear_bit(i32*, i64) #1

declare dso_local i32 @transaction_check_child_status(...) #1

declare dso_local i32 @sync_binlog(i32) #1

declare dso_local i32 @transaction_child_kill(i64) #1

declare dso_local i32 @transaction_auto_kill(i64) #1

declare dso_local i64 @get_process_creation_time(i64) #1

declare dso_local i32 @kill(i64, i64) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @flush_binlog_last(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
