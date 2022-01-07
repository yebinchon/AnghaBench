; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketevloopepoll.c.h_evloop_do_on_socket_close.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketevloopepoll.c.h_evloop_do_on_socket_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_socket_t = type { i32, i32, i64 }
%struct.st_h2o_evloop_epoll_t = type { i32 }

@H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED = common dso_local global i32 0, align 4
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"socket_close: epoll(DEL) returned error %d (fd=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_evloop_socket_t*)* @evloop_do_on_socket_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evloop_do_on_socket_close(%struct.st_h2o_evloop_socket_t* %0) #0 {
  %2 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  %3 = alloca %struct.st_h2o_evloop_epoll_t*, align 8
  %4 = alloca i32, align 4
  store %struct.st_h2o_evloop_socket_t* %0, %struct.st_h2o_evloop_socket_t** %2, align 8
  %5 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %6 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.st_h2o_evloop_epoll_t*
  store %struct.st_h2o_evloop_epoll_t* %9, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %10 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %11 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %17 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %50

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %40, %23
  %25 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %26 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %29 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %30 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @epoll_ctl(i32 %27, i32 %28, i32 %31, i32* null)
  store i32 %32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %24
  %39 = phi i1 [ false, %24 ], [ %37, %34 ]
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %24

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* @errno, align 8
  %46 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %47 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %14, %22, %44, %41
  ret void
}

declare dso_local i32 @epoll_ctl(i32, i32, i32, i32*) #1

declare dso_local i32 @h2o_error_printf(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
