; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_new_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_new_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @new_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_socket(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = call i32 @uv__socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @uv__stream_open(i32* %21, i32 %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @uv__close(i32 %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @UV_HANDLE_BOUND, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  store i32 4, i32* %9, align 4
  %37 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 4)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @uv__stream_fd(i32* %38)
  %40 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %41 = call i64 @getsockname(i32 %39, %struct.sockaddr* %40, i32* %9)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @uv__close(i32 %44)
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @UV__ERR(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %36
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @uv__stream_fd(i32* %49)
  %51 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @bind(i32 %50, %struct.sockaddr* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @uv__close(i32 %56)
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @UV__ERR(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %31
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %55, %43, %27, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @uv__socket(i32, i32, i32) #1

declare dso_local i32 @uv__stream_open(i32*, i32, i64) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @uv__stream_fd(i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
