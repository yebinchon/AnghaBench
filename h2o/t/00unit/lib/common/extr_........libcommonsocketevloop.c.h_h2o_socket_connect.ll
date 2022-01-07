; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_h2o_socket_connect.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_h2o_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.st_h2o_evloop_socket_t = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@H2O_SOCKET_FLAG_IS_CONNECTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @h2o_socket_connect(i32* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @cloexec_socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %47

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @F_SETFL, align 4
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = call i32 @fcntl(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @connect(i32 %24, %struct.sockaddr* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINPROGRESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @close(i32 %34)
  store i32* null, i32** %5, align 8
  br label %47

36:                                               ; preds = %29, %19
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @H2O_SOCKET_FLAG_IS_CONNECTING, align 4
  %40 = call %struct.st_h2o_evloop_socket_t* @create_socket_set_nodelay(i32* %37, i32 %38, i32 %39)
  store %struct.st_h2o_evloop_socket_t* %40, %struct.st_h2o_evloop_socket_t** %11, align 8
  %41 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %11, align 8
  %42 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @h2o_socket_notify_write(i32* %42, i32 %43)
  %45 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %11, align 8
  %46 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %45, i32 0, i32 0
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %36, %33, %18
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i32 @cloexec_socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.st_h2o_evloop_socket_t* @create_socket_set_nodelay(i32*, i32, i32) #1

declare dso_local i32 @h2o_socket_notify_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
