; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i64, i32 }

@sfd = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@backlog = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"created listening socket at %s:%d, fd=%d\0A\00", align 1
@buf = common dso_local global i32 0, align 4
@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@ct_watchcat_engine_server = common dso_local global i32 0, align 4
@memcache_methods = common dso_local global i32 0, align 4
@hostname = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"fatal: cannot resolve hostname %s: %m\0A\00", align 1
@default_ct = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@queue_port = common dso_local global i32 0, align 4
@queue_conn = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@sigpoll_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Server started\0A\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"epoll_work(): %d out of %d connections, network bufers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@sigpoll_cnt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"after epoll_work(), sigpoll_cnt=%d\0A\00", align 1
@now = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"Quitting.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostent*, align 8
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %6 = load i64, i64* @sfd, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @port, align 4
  %10 = load i32, i32* @backlog, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings_addr, i32 0, i32 0), align 4
  %12 = call i64 @server_socket(i32 %9, i32 %11, i32 %10, i32 0)
  store i64 %12, i64* @sfd, align 8
  br label %13

13:                                               ; preds = %8, %0
  %14 = load i64, i64* @sfd, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @port, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @exit(i32 3) #4
  unreachable

21:                                               ; preds = %13
  %22 = load i32, i32* @verbosity, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings_addr, i32 0, i32 0), align 4
  %27 = load i32, i32* @buf, align 4
  %28 = call i8* @conv_addr(i32 %26, i32 %27)
  %29 = load i32, i32* @port, align 4
  %30 = load i64, i64* @sfd, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i64, i64* @daemonize, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @setsid()
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** @username, align 8
  %39 = call i64 @change_user(i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** @username, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** @username, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %47 ]
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = call i32 @exit(i32 1) #4
  unreachable

52:                                               ; preds = %37
  %53 = load i64, i64* @sfd, align 8
  %54 = call i32 @init_listening_connection(i64 %53, i32* @ct_watchcat_engine_server, i32* @memcache_methods)
  %55 = load i8*, i8** @hostname, align 8
  %56 = call %struct.hostent* @gethostbyname(i8* %55)
  store %struct.hostent* %56, %struct.hostent** %3, align 8
  %57 = icmp ne %struct.hostent* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.hostent*, %struct.hostent** %3, align 8
  %60 = getelementptr inbounds %struct.hostent, %struct.hostent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_INET, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = load %struct.hostent*, %struct.hostent** %3, align 8
  %66 = getelementptr inbounds %struct.hostent, %struct.hostent* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 4
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.hostent*, %struct.hostent** %3, align 8
  %71 = getelementptr inbounds %struct.hostent, %struct.hostent* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.hostent*, %struct.hostent** %3, align 8
  %76 = getelementptr inbounds %struct.hostent, %struct.hostent* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74, %69, %64, %58, %52
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** @hostname, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = call i32 @exit(i32 1) #4
  unreachable

84:                                               ; preds = %74
  %85 = load %struct.hostent*, %struct.hostent** %3, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.in_addr*
  %89 = bitcast %struct.in_addr* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.in_addr* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @default_ct, i32 0, i32 1) to i8*), i8* align 4 %89, i64 4, i1 false)
  %90 = load i32, i32* @queue_port, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @default_ct, i32 0, i32 0), align 4
  %91 = call i32 @create_target(%struct.TYPE_6__* @default_ct, i32 0)
  store i32 %91, i32* @queue_conn, align 4
  %92 = call i32 (...) @create_all_outbound_connections()
  %93 = load i32, i32* @SIGINT, align 4
  %94 = load i32, i32* @sigint_handler, align 4
  %95 = call i32 @signal(i32 %93, i32 %94)
  %96 = load i32, i32* @SIGTERM, align 4
  %97 = load i32, i32* @sigterm_handler, align 4
  %98 = call i32 @signal(i32 %96, i32 %97)
  %99 = load i32, i32* @SIGUSR1, align 4
  %100 = load i32, i32* @sigusr1_handler, align 4
  %101 = call i32 @signal(i32 %99, i32 %100)
  %102 = load i32, i32* @SIGPIPE, align 4
  %103 = load i32, i32* @SIG_IGN, align 4
  %104 = call i32 @signal(i32 %102, i32 %103)
  %105 = load i32, i32* @SIGPOLL, align 4
  %106 = load i32, i32* @sigpoll_handler, align 4
  %107 = call i32 @signal(i32 %105, i32 %106)
  %108 = load i64, i64* @daemonize, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %84
  %111 = load i32, i32* @SIGHUP, align 4
  %112 = load i32, i32* @sighup_handler, align 4
  %113 = call i32 @signal(i32 %111, i32 %112)
  %114 = call i32 (...) @reopen_logs()
  br label %115

115:                                              ; preds = %110, %84
  %116 = load i32, i32* @verbosity, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115
  store i32 0, i32* %1, align 4
  br label %122

122:                                              ; preds = %168, %121
  %123 = load i32, i32* @verbosity, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32, i32* %1, align 4
  %127 = and i32 %126, 255
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32, i32* @active_connections, align 4
  %132 = load i32, i32* @maxconn, align 4
  %133 = load i32, i32* @NB_used, align 4
  %134 = load i32, i32* @NB_alloc, align 4
  %135 = load i32, i32* @NB_max, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %129, %125, %122
  %138 = call i32 @epoll_work(i32 57)
  %139 = load i32, i32* @sigpoll_cnt, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32, i32* @verbosity, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* @stderr, align 4
  %146 = load i32, i32* @sigpoll_cnt, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %141
  store i32 0, i32* @sigpoll_cnt, align 4
  br label %149

149:                                              ; preds = %148, %137
  %150 = load i32, i32* @now, align 4
  %151 = load i32, i32* %2, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* @now, align 4
  store i32 %154, i32* %2, align 4
  %155 = call i32 (...) @cron()
  br label %156

156:                                              ; preds = %153, %149
  br i1 true, label %157, label %159

157:                                              ; preds = %156
  %158 = call i32 (...) @epoll_pre_event()
  br label %159

159:                                              ; preds = %157, %156
  %160 = load i64, i64* @quit_steps, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i64, i64* @quit_steps, align 8
  %164 = add nsw i64 %163, -1
  store i64 %164, i64* @quit_steps, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  br label %171

167:                                              ; preds = %162, %159
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %1, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %1, align 4
  br label %122

171:                                              ; preds = %166
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %174 = load i64, i64* @sfd, align 8
  %175 = call i32 @epoll_close(i64 %174)
  %176 = load i64, i64* @sfd, align 8
  %177 = call i64 @close(i64 %176)
  %178 = icmp sge i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i64 @server_socket(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @conv_addr(i32, i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_listening_connection(i64, i32*, i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @create_target(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_pre_event(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
