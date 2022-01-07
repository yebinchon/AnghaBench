; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloopepoll.c.h_evloop_do_on_socket_export.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloopepoll.c.h_evloop_do_on_socket_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_socket_t = type { i32, i32, i64 }
%struct.st_h2o_evloop_epoll_t = type { i32 }

@H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED = common dso_local global i32 0, align 4
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"socket_export: epoll(DEL) returned error %d (fd=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_evloop_socket_t*)* @evloop_do_on_socket_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evloop_do_on_socket_export(%struct.st_h2o_evloop_socket_t* %0) #0 {
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
  %13 = load i32, i32* @H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %44

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %34, %17
  %19 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %23 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %24 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @epoll_ctl(i32 %21, i32 %22, i32 %25, i32* null)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %18
  %33 = phi i1 [ false, %18 ], [ %31, %28 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %18

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %2, align 8
  %41 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %16, %38, %35
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
