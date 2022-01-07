; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloopepoll.c.h_h2o_evloop_create.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloopepoll.c.h_h2o_evloop_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_epoll_t = type { i32, i32 }

@cloexec_mutex = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"h2o_evloop_create: failed to set FD_CLOEXEC: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @h2o_evloop_create() #0 {
  %1 = alloca %struct.st_h2o_evloop_epoll_t*, align 8
  %2 = alloca [128 x i8], align 16
  %3 = call i64 @create_evloop(i32 8)
  %4 = inttoptr i64 %3 to %struct.st_h2o_evloop_epoll_t*
  store %struct.st_h2o_evloop_epoll_t* %4, %struct.st_h2o_evloop_epoll_t** %1, align 8
  %5 = call i32 @pthread_mutex_lock(i32* @cloexec_mutex)
  %6 = call i32 @epoll_create(i32 10)
  %7 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %1, align 8
  %8 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  br label %9

9:                                                ; preds = %26, %0
  %10 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %1, align 8
  %11 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @F_SETFD, align 4
  %14 = load i32, i32* @FD_CLOEXEC, align 4
  %15 = call i32 @fcntl(i32 %12, i32 %13, i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EAGAIN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %24 = call i32 @h2o_strerror_r(i64 %22, i8* %23, i32 128)
  %25 = call i32 @h2o_fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  br label %9

27:                                               ; preds = %9
  %28 = call i32 @pthread_mutex_unlock(i32* @cloexec_mutex)
  %29 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %1, align 8
  %30 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %29, i32 0, i32 0
  ret i32* %30
}

declare dso_local i64 @create_evloop(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @epoll_create(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @h2o_fatal(i8*, i32) #1

declare dso_local i32 @h2o_strerror_r(i64, i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
