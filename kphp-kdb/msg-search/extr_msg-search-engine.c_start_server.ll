; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@sdf = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@backlog = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"created listening socket at %s:%d, fd=%d\0A\00", align 1
@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@interactive = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i64 0, align 8
@fd = common dso_local global i32* null, align 8
@fsize = common dso_local global i32* null, align 8
@accept_new_connections = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %3, align 4
  %6 = load i64, i64* @sdf, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @port, align 4
  %10 = load i32, i32* @backlog, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %12 = call i64 @server_socket(i32 %9, i32 %11, i32 %10, i32 0)
  store i64 %12, i64* @sdf, align 8
  br label %13

13:                                               ; preds = %8, %0
  %14 = load i64, i64* @sdf, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @port, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @exit(i32 3) #3
  unreachable

21:                                               ; preds = %13
  %22 = load i64, i64* @verbosity, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %28 = call i8* @conv_addr(i32 %26, i8* %27)
  %29 = load i32, i32* @port, align 4
  %30 = load i64, i64* @sdf, align 8
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
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* @interactive, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @username, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** @username, align 8
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %50 ]
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %41, %37
  %56 = load i64, i64* @binlogname, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i64, i64* @binlogname, align 8
  %60 = call i32 @open_file(i32 2, i64 %59, i32 1)
  %61 = load i32*, i32** @fd, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @fsize, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_log_data(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i64, i64* @sdf, align 8
  %70 = load i32, i32* @accept_new_connections, align 4
  %71 = call i32 @epoll_sethandler(i64 %69, i32 -10, i32 %70, i32 0)
  %72 = load i64, i64* @sdf, align 8
  %73 = call i32 @epoll_insert(i64 %72, i32 7)
  %74 = load i32, i32* @SIGINT, align 4
  %75 = load i32, i32* @sigint_handler, align 4
  %76 = call i32 @signal(i32 %74, i32 %75)
  %77 = load i32, i32* @SIGTERM, align 4
  %78 = load i32, i32* @sigterm_handler, align 4
  %79 = call i32 @signal(i32 %77, i32 %78)
  %80 = load i32, i32* @SIGUSR1, align 4
  %81 = load i32, i32* @sigusr1_handler, align 4
  %82 = call i32 @signal(i32 %80, i32 %81)
  %83 = load i32, i32* @SIGPIPE, align 4
  %84 = load i32, i32* @SIG_IGN, align 4
  %85 = call i32 @signal(i32 %83, i32 %84)
  %86 = load i64, i64* @daemonize, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %68
  %89 = load i32, i32* @SIGHUP, align 4
  %90 = load i32, i32* @sighup_handler, align 4
  %91 = call i32 @signal(i32 %89, i32 %90)
  %92 = call i32 (...) @reopen_logs()
  br label %93

93:                                               ; preds = %88, %68
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i64, i64* @verbosity, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %2, align 4
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
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %97, %94
  %110 = call i32 @epoll_work(i32 1000)
  %111 = load i32, i32* @now, align 4
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @now, align 4
  store i32 %115, i32* %3, align 4
  %116 = call i32 (...) @cron()
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i64, i64* @quit_steps, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i64, i64* @quit_steps, align 8
  %122 = add nsw i64 %121, -1
  store i64 %122, i64* @quit_steps, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  br label %129

125:                                              ; preds = %120, %117
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %2, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %2, align 4
  br label %94

129:                                              ; preds = %124
  %130 = load i64, i64* @sdf, align 8
  %131 = call i32 @epoll_close(i64 %130)
  %132 = load i64, i64* @sdf, align 8
  %133 = call i32 @close(i64 %132)
  %134 = call i32 (...) @flush_binlog_ts()
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i64 @server_socket(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @conv_addr(i32, i8*) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @open_file(i32, i64, i32) #1

declare dso_local i32 @set_log_data(i32, i32) #1

declare dso_local i32 @epoll_sethandler(i64, i32, i32, i32) #1

declare dso_local i32 @epoll_insert(i64, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @flush_binlog_ts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
