; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@sfd = common dso_local global i32 0, align 4
@ct_spell_engine_server = common dso_local global i32 0, align 4
@memcache_methods = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %6 = load i64, i64* @daemonize, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @setsid()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i8*, i8** @username, align 8
  %12 = call i64 @change_user(i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @username, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** @username, align 8
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %20 ]
  %23 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %10
  %26 = load i32, i32* @sfd, align 4
  %27 = call i32 @init_listening_connection(i32 %26, i32* @ct_spell_engine_server, i32* @memcache_methods)
  %28 = load i32, i32* @SIGINT, align 4
  %29 = load i32, i32* @sigint_handler, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  %31 = load i32, i32* @SIGTERM, align 4
  %32 = load i32, i32* @sigterm_handler, align 4
  %33 = call i32 @signal(i32 %31, i32 %32)
  %34 = load i32, i32* @SIGUSR1, align 4
  %35 = load i32, i32* @sigusr1_handler, align 4
  %36 = call i32 @signal(i32 %34, i32 %35)
  %37 = load i32, i32* @SIGPIPE, align 4
  %38 = load i32, i32* @SIG_IGN, align 4
  %39 = call i32 @signal(i32 %37, i32 %38)
  %40 = load i32, i32* @SIGIO, align 4
  %41 = load i32, i32* @SIG_IGN, align 4
  %42 = call i32 @signal(i32 %40, i32 %41)
  %43 = load i64, i64* @daemonize, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load i32, i32* @SIGHUP, align 4
  %47 = load i32, i32* @sighup_handler, align 4
  %48 = call i32 @signal(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %25
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i32, i32* %1, align 4
  %52 = and i32 %51, 255
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @active_connections, align 4
  %56 = load i32, i32* @maxconn, align 4
  %57 = load i32, i32* @NB_used, align 4
  %58 = load i32, i32* @NB_alloc, align 4
  %59 = load i32, i32* @NB_max, align 4
  %60 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %50
  %62 = call i32 @epoll_work(i32 57)
  %63 = load i32, i32* @now, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @now, align 4
  store i32 %67, i32* %2, align 4
  %68 = call i32 (...) @cron()
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %81

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %50

81:                                               ; preds = %76
  %82 = load i32, i32* @sfd, align 4
  %83 = call i32 @epoll_close(i32 %82)
  %84 = load i32, i32* @sfd, align 4
  %85 = call i32 @close(i32 %84)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_listening_connection(i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
