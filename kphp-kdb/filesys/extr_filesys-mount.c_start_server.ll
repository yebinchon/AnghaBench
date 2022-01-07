; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-mount.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-mount.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_sfd = common dso_local global i32 0, align 4
@ct_filesys_engine_server = common dso_local global i32 0, align 4
@memcache_methods = common dso_local global i32 0, align 4
@ff_stop_server = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @start_server(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @init_epoll()
  %7 = call i32 (...) @init_netbuffers()
  %8 = load i32, i32* @ff_sfd, align 4
  %9 = call i32 @init_listening_connection(i32 %8, i32* @ct_filesys_engine_server, i32* @memcache_methods)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i32, i32* @ff_stop_server, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i64, i64* @verbosity, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 255
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* @active_connections, align 4
  %24 = load i32, i32* @maxconn, align 4
  %25 = load i32, i32* @NB_used, align 4
  %26 = load i32, i32* @NB_alloc, align 4
  %27 = load i32, i32* @NB_max, align 4
  %28 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %17, %14
  %30 = call i32 @epoll_work(i32 67)
  %31 = load i32, i32* @now, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @now, align 4
  store i32 %35, i32* %5, align 4
  %36 = call i32 (...) @cron()
  br label %37

37:                                               ; preds = %34, %29
  br i1 true, label %38, label %40

38:                                               ; preds = %37
  %39 = call i32 (...) @epoll_pre_event()
  br label %40

40:                                               ; preds = %38, %37
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %10

44:                                               ; preds = %10
  %45 = load i32, i32* @ff_sfd, align 4
  %46 = call i32 @epoll_close(i32 %45)
  %47 = load i32, i32* @ff_sfd, align 4
  %48 = call i32 @close(i32 %47)
  %49 = call i32 @pthread_exit(i32* null)
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @init_listening_connection(i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_pre_event(...) #1

declare dso_local i32 @epoll_close(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
