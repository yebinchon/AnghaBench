; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@test_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@sfd = common dso_local global i32 0, align 4
@ct_mysql_server = common dso_local global i32 0, align 4
@db_proxy_inbound = common dso_local global i32 0, align 4
@memcache_port = common dso_local global i64 0, align 8
@memcache_sfd = common dso_local global i32 0, align 4
@ct_memcache_server = common dso_local global i32 0, align 4
@db_proxy_memcache_inbound = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@sigusr2_handler = common dso_local global i32 0, align 4
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
@precise_now = common dso_local global double 0.000000e+00, align 8
@now = common dso_local global i32 0, align 4
@need_reload_config = common dso_local global i64 0, align 8
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double 0.000000e+00, double* %3, align 8
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
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* @test_mode, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** @username, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** @username, align 8
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %14, %10
  %29 = load i32, i32* @sfd, align 4
  %30 = call i32 @init_listening_connection(i32 %29, i32* @ct_mysql_server, i32* @db_proxy_inbound)
  %31 = load i64, i64* @memcache_port, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @memcache_sfd, align 4
  %35 = call i32 @init_listening_connection(i32 %34, i32* @ct_memcache_server, i32* @db_proxy_memcache_inbound)
  br label %36

36:                                               ; preds = %33, %28
  %37 = call i32 (...) @create_all_outbound_connections()
  %38 = load i32, i32* @SIGINT, align 4
  %39 = load i32, i32* @sigint_handler, align 4
  %40 = call i32 @signal(i32 %38, i32 %39)
  %41 = load i32, i32* @SIGTERM, align 4
  %42 = load i32, i32* @sigterm_handler, align 4
  %43 = call i32 @signal(i32 %41, i32 %42)
  %44 = load i32, i32* @SIGUSR1, align 4
  %45 = load i32, i32* @sigusr1_handler, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  %47 = load i32, i32* @SIGUSR2, align 4
  %48 = load i32, i32* @sigusr2_handler, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32, i32* @SIGPIPE, align 4
  %51 = load i32, i32* @SIG_IGN, align 4
  %52 = call i32 @signal(i32 %50, i32 %51)
  %53 = load i64, i64* @daemonize, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load i32, i32* @SIGHUP, align 4
  %57 = load i32, i32* @sighup_handler, align 4
  %58 = call i32 @signal(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %36
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %108, %59
  %61 = load i64, i64* @verbosity, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %1, align 4
  %65 = and i32 %64, 255
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* @active_connections, align 4
  %70 = load i32, i32* @maxconn, align 4
  %71 = load i32, i32* @NB_used, align 4
  %72 = load i32, i32* @NB_alloc, align 4
  %73 = load i32, i32* @NB_max, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %63, %60
  %76 = call i32 @epoll_work(i32 50)
  %77 = load double, double* @precise_now, align 8
  %78 = load double, double* %3, align 8
  %79 = fcmp ogt double %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = call i32 (...) @create_all_outbound_connections()
  %82 = load double, double* @precise_now, align 8
  %83 = fadd double %82, 3.000000e-02
  %84 = call double (...) @drand48()
  %85 = fmul double 2.000000e-02, %84
  %86 = fadd double %83, %85
  store double %86, double* %3, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i32, i32* @now, align 4
  %89 = load i32, i32* %2, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @now, align 4
  store i32 %92, i32* %2, align 4
  %93 = call i32 (...) @cron()
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i64, i64* @need_reload_config, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @do_reload_config(i32 1)
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i64, i64* @quit_steps, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i64, i64* @quit_steps, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* @quit_steps, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %111

107:                                              ; preds = %102, %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %60

111:                                              ; preds = %106
  %112 = load i32, i32* @sfd, align 4
  %113 = call i32 @epoll_close(i32 %112)
  %114 = load i32, i32* @sfd, align 4
  %115 = call i32 @close(i32 %114)
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

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local double @drand48(...) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @do_reload_config(i32) #1

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
