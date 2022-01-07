; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@sfd = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
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
@ct_rpc_server = common dso_local global i32 0, align 4
@rpc_methods = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i64 0, align 8
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i64 0, align 8
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i64 0, align 8
@sigpoll_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i64 0, align 8
@sighup_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Server started\0A\00", align 1
@pending_signals = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [89 x i8] c"epoll_work(): %d out of %d connections, network bufers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@sigpoll_cnt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"after epoll_work(), sigpoll_cnt=%d\0A\00", align 1
@now = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"Quitting because of pending signals = %llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @init_epoll()
  %4 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* @sfd, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @port, align 4
  %9 = load i32, i32* @backlog, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %11 = call i64 @server_socket(i32 %8, i32 %10, i32 %9, i32 0)
  store i64 %11, i64* @sfd, align 8
  br label %12

12:                                               ; preds = %7, %0
  %13 = load i64, i64* @sfd, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* @port, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @exit(i32 3) #3
  unreachable

20:                                               ; preds = %12
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %26 = load i32, i32* @buf, align 4
  %27 = call i8* @conv_addr(i32 %25, i32 %26)
  %28 = load i32, i32* @port, align 4
  %29 = load i64, i64* @sfd, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i64, i64* @daemonize, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @setsid()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i8*, i8** @username, align 8
  %38 = call i64 @change_user(i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** @username, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8*, i8** @username, align 8
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %46 ]
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %36
  %52 = load i64, i64* @sfd, align 8
  %53 = call i32 @init_listening_connection(i64 %52, i32* @ct_rpc_server, i32* @rpc_methods)
  %54 = load i64, i64* @SIGINT, align 8
  %55 = load i32, i32* @sigint_handler, align 4
  %56 = call i32 @signal(i64 %54, i32 %55)
  %57 = load i64, i64* @SIGTERM, align 8
  %58 = load i32, i32* @sigterm_handler, align 4
  %59 = call i32 @signal(i64 %57, i32 %58)
  %60 = load i64, i64* @SIGUSR1, align 8
  %61 = load i32, i32* @sigusr1_handler, align 4
  %62 = call i32 @signal(i64 %60, i32 %61)
  %63 = load i64, i64* @SIGPIPE, align 8
  %64 = load i32, i32* @SIG_IGN, align 4
  %65 = call i32 @signal(i64 %63, i32 %64)
  %66 = load i64, i64* @SIGPOLL, align 8
  %67 = load i32, i32* @sigpoll_handler, align 4
  %68 = call i32 @signal(i64 %66, i32 %67)
  %69 = load i64, i64* @daemonize, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %51
  %72 = load i64, i64* @SIGHUP, align 8
  %73 = load i32, i32* @sighup_handler, align 4
  %74 = call i32 @signal(i64 %72, i32 %73)
  %75 = call i32 (...) @reopen_logs()
  br label %76

76:                                               ; preds = %71, %51
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %165, %82
  %84 = load i64, i64* @pending_signals, align 8
  %85 = load i64, i64* @SIGUSR1, align 8
  %86 = shl i64 1, %85
  %87 = load i64, i64* @SIGHUP, align 8
  %88 = shl i64 1, %87
  %89 = or i64 %86, %88
  %90 = xor i64 %89, -1
  %91 = and i64 %84, %90
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %168

94:                                               ; preds = %83
  %95 = load i32, i32* @verbosity, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %1, align 4
  %99 = and i32 %98, 255
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* @active_connections, align 4
  %104 = load i32, i32* @maxconn, align 4
  %105 = load i32, i32* @NB_used, align 4
  %106 = load i32, i32* @NB_alloc, align 4
  %107 = load i32, i32* @NB_max, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %97, %94
  %110 = call i32 @epoll_work(i32 57)
  %111 = load i32, i32* @sigpoll_cnt, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* @verbosity, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* @sigpoll_cnt, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  store i32 0, i32* @sigpoll_cnt, align 4
  br label %121

121:                                              ; preds = %120, %109
  %122 = load i64, i64* @pending_signals, align 8
  %123 = load i64, i64* @SIGHUP, align 8
  %124 = shl i64 1, %123
  %125 = and i64 %122, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i64, i64* @SIGHUP, align 8
  %129 = shl i64 1, %128
  %130 = xor i64 %129, -1
  %131 = load i64, i64* @pending_signals, align 8
  %132 = and i64 %131, %130
  store i64 %132, i64* @pending_signals, align 8
  %133 = call i32 @flush_all(i32 1)
  br label %134

134:                                              ; preds = %127, %121
  %135 = load i64, i64* @pending_signals, align 8
  %136 = load i64, i64* @SIGUSR1, align 8
  %137 = shl i64 1, %136
  %138 = and i64 %135, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i64, i64* @SIGUSR1, align 8
  %142 = shl i64 1, %141
  %143 = xor i64 %142, -1
  %144 = load i64, i64* @pending_signals, align 8
  %145 = and i64 %144, %143
  store i64 %145, i64* @pending_signals, align 8
  %146 = call i32 (...) @reopen_logs()
  %147 = call i32 @flush_all(i32 1)
  br label %148

148:                                              ; preds = %140, %134
  %149 = call i32 (...) @tl_restart_all_ready()
  %150 = load i32, i32* @now, align 4
  %151 = load i32, i32* %2, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @now, align 4
  store i32 %154, i32* %2, align 4
  %155 = call i32 (...) @cron()
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i64, i64* @quit_steps, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i64, i64* @quit_steps, align 8
  %161 = add nsw i64 %160, -1
  store i64 %161, i64* @quit_steps, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %168

164:                                              ; preds = %159, %156
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %1, align 4
  br label %83

168:                                              ; preds = %163, %83
  %169 = load i32, i32* @verbosity, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i64, i64* @pending_signals, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = load i64, i64* @pending_signals, align 8
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %176)
  br label %178

178:                                              ; preds = %174, %171, %168
  %179 = load i64, i64* @sfd, align 8
  %180 = call i32 @epoll_close(i64 %179)
  %181 = load i64, i64* @sfd, align 8
  %182 = call i64 @close(i64 %181)
  %183 = icmp sge i64 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
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

declare dso_local i32 @signal(i64, i32) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @flush_all(i32) #1

declare dso_local i32 @tl_restart_all_ready(...) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
