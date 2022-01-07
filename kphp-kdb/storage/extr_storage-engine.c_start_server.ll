; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }

@daemonize = common dso_local global i64 0, align 8
@append_to_binlog_time = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@volumes = common dso_local global i32 0, align 4
@Volumes = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [57 x i8] c"[v%lld] storage_append_to_binlog returns error code %d.\0A\00", align 1
@Connections = common dso_local global %struct.connection* null, align 8
@sfd = common dso_local global i64 0, align 8
@ct_rpc_server = common dso_local global i32 0, align 4
@storage_rpc_server = common dso_local global i32 0, align 4
@http_sfd = common dso_local global i64 0, align 8
@ct_http_server = common dso_local global i32 0, align 4
@http_methods = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@sigpoll_handler = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i32 0, align 4
@sigrtmax_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@booting_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@force_interrupt = common dso_local global i64 0, align 8
@save_index_process = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Waiting write threads terminates.\0A\00", align 1
@active_write_threads = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"%d threads has been terminated.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Start sync.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Sync has been completed.\0A\00", align 1
@force_reopen_logs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"reopen_logs (), force_reopen_logs counter is equal to %d.\0A\00", align 1
@sigpoll_cnt = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"after epoll_work(), sigpoll_cnt=%d\0A\00", align 1
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %8 = call i32 (...) @init_epoll()
  %9 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %10 = load i64, i64* @daemonize, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 (...) @setsid()
  %14 = call i32 (...) @reopen_logs()
  br label %15

15:                                               ; preds = %12, %0
  %16 = call i32 (...) @mytime()
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* @append_to_binlog_time, align 4
  %18 = load i32, i32* @binlog_disabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @volumes, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @Volumes, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @storage_append_to_binlog(%struct.TYPE_3__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @Volumes, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %21

49:                                               ; preds = %21
  br label %50

50:                                               ; preds = %49, %15
  %51 = call i32 (...) @mytime()
  %52 = load i32, i32* @append_to_binlog_time, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* @append_to_binlog_time, align 4
  %54 = load %struct.connection*, %struct.connection** @Connections, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i64 0
  store %struct.connection* %55, %struct.connection** %5, align 8
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  store i32 2147483647, i32* %57, align 4
  %58 = load i64, i64* @sfd, align 8
  %59 = call i32 @init_listening_connection(i64 %58, i32* @ct_rpc_server, i32* @storage_rpc_server)
  %60 = load i64, i64* @http_sfd, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i64, i64* @http_sfd, align 8
  %64 = call i32 @init_listening_connection(i64 %63, i32* @ct_http_server, i32* @http_methods)
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i32, i32* @SIGINT, align 4
  %67 = load i32, i32* @sigint_handler, align 4
  %68 = call i32 @signal(i32 %66, i32 %67)
  %69 = load i32, i32* @SIGTERM, align 4
  %70 = load i32, i32* @sigterm_handler, align 4
  %71 = call i32 @signal(i32 %69, i32 %70)
  %72 = load i32, i32* @SIGUSR1, align 4
  %73 = load i32, i32* @sigusr1_handler, align 4
  %74 = call i32 @signal(i32 %72, i32 %73)
  %75 = load i32, i32* @SIGPIPE, align 4
  %76 = load i32, i32* @SIG_IGN, align 4
  %77 = call i32 @signal(i32 %75, i32 %76)
  %78 = load i32, i32* @SIGIO, align 4
  %79 = load i32, i32* @SIG_IGN, align 4
  %80 = call i32 @signal(i32 %78, i32 %79)
  %81 = load i32, i32* @SIGPOLL, align 4
  %82 = load i32, i32* @sigpoll_handler, align 4
  %83 = call i32 @signal(i32 %81, i32 %82)
  %84 = load i32, i32* @SIGRTMAX, align 4
  %85 = load i32, i32* @sigrtmax_handler, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  %87 = load i64, i64* @daemonize, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %65
  %90 = load i32, i32* @SIGHUP, align 4
  %91 = load i32, i32* @sighup_handler, align 4
  %92 = call i32 @signal(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %65
  store i32 0, i32* %6, align 4
  %94 = call i32 (...) @mytime()
  %95 = load i32, i32* @booting_time, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* @booting_time, align 4
  store i32 0, i32* %1, align 4
  br label %97

97:                                               ; preds = %170, %93
  %98 = load i32, i32* %1, align 4
  %99 = and i32 %98, 255
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @active_connections, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* @maxconn, align 4
  %105 = load i32, i32* @NB_used, align 4
  %106 = load i32, i32* @NB_alloc, align 4
  %107 = load i32, i32* @NB_max, align 4
  %108 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %97
  %110 = call i32 @epoll_work(i32 57)
  %111 = load i64, i64* @force_interrupt, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load i32, i32* @save_index_process, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %121, %116
  %119 = load i32*, i32** @active_write_threads, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = call i32 @sleep(i32 1)
  %123 = call i64 (...) @write_thread_check_all_completions()
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  br label %118

128:                                              ; preds = %118
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %132 = call i32 (...) @sync()
  %133 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %128, %113
  %135 = call i32 @exit(i32 0) #3
  unreachable

136:                                              ; preds = %109
  %137 = load i32, i32* @force_reopen_logs, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i32, i32* @force_reopen_logs, align 4
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = call i32 (...) @reopen_logs()
  br label %145

145:                                              ; preds = %140, %136
  %146 = load i64, i64* @sigpoll_cnt, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i64, i64* @sigpoll_cnt, align 8
  %150 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %149)
  store i64 0, i64* @sigpoll_cnt, align 8
  br label %151

151:                                              ; preds = %148, %145
  %152 = call i32 (...) @check_all_aio_completions()
  %153 = call i64 (...) @write_thread_check_all_completions()
  %154 = call i32 (...) @forward_query_check_all_completions()
  %155 = load i32, i32* @now, align 4
  %156 = load i32, i32* %2, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i32, i32* @now, align 4
  store i32 %159, i32* %2, align 4
  %160 = call i32 (...) @cron()
  br label %161

161:                                              ; preds = %158, %151
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %173

169:                                              ; preds = %164, %161
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %1, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %1, align 4
  br label %97

173:                                              ; preds = %168
  %174 = load i64, i64* @sfd, align 8
  %175 = call i32 @epoll_close(i64 %174)
  %176 = load i64, i64* @sfd, align 8
  %177 = call i32 @close(i64 %176)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @storage_append_to_binlog(%struct.TYPE_3__*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_listening_connection(i64, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @write_thread_check_all_completions(...) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @check_all_aio_completions(...) #1

declare dso_local i32 @forward_query_check_all_completions(...) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
