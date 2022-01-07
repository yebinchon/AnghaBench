; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@interactive = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@sfd = common dso_local global i32 0, align 4
@ct_rpc_server = common dso_local global i32 0, align 4
@memcache_rpc_server = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i32 0, align 4
@sigrtmax_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @init_epoll()
  %4 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* @daemonize, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @setsid()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i8*, i8** @username, align 8
  %11 = call i64 @change_user(i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i32, i32* @interactive, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @username, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8*, i8** @username, align 8
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %13, %9
  %28 = load i32, i32* @sfd, align 4
  %29 = call i32 @init_listening_connection(i32 %28, i32* @ct_rpc_server, i32* @memcache_rpc_server)
  %30 = load i32, i32* @SIGINT, align 4
  %31 = load i32, i32* @sigint_handler, align 4
  %32 = call i32 @signal(i32 %30, i32 %31)
  %33 = load i32, i32* @SIGTERM, align 4
  %34 = load i32, i32* @sigterm_handler, align 4
  %35 = call i32 @signal(i32 %33, i32 %34)
  %36 = load i32, i32* @SIGUSR1, align 4
  %37 = load i32, i32* @sigusr1_handler, align 4
  %38 = call i32 @signal(i32 %36, i32 %37)
  %39 = load i32, i32* @SIGRTMAX, align 4
  %40 = load i32, i32* @sigrtmax_handler, align 4
  %41 = call i32 @signal(i32 %39, i32 %40)
  %42 = load i32, i32* @SIGPIPE, align 4
  %43 = load i32, i32* @SIG_IGN, align 4
  %44 = call i32 @signal(i32 %42, i32 %43)
  %45 = load i64, i64* @daemonize, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %27
  %48 = load i32, i32* @SIGHUP, align 4
  %49 = load i32, i32* @sighup_handler, align 4
  %50 = call i32 @signal(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %27
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i64, i64* @verbosity, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* %1, align 4
  %57 = and i32 %56, 255
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* @active_connections, align 4
  %62 = load i32, i32* @maxconn, align 4
  %63 = load i32, i32* @NB_used, align 4
  %64 = load i32, i32* @NB_alloc, align 4
  %65 = load i32, i32* @NB_max, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %55, %52
  %68 = call i32 @epoll_work(i32 57)
  %69 = load i32, i32* @now, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @now, align 4
  store i32 %73, i32* %2, align 4
  %74 = call i32 (...) @cron()
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i64, i64* @quit_steps, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* @quit_steps, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* @quit_steps, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %87

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %52

87:                                               ; preds = %82
  %88 = load i32, i32* @sfd, align 4
  %89 = call i32 @epoll_close(i32 %88)
  %90 = load i32, i32* @sfd, align 4
  %91 = call i64 @close(i32 %90)
  %92 = icmp sge i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_listening_connection(i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
