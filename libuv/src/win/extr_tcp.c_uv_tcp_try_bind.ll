; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_try_bind.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_try_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.sockaddr = type { i64 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@UV_TCP_IPV6ONLY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEADDRINUSE = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.sockaddr*, i32, i32)* @uv_tcp_try_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_tcp_try_bind(%struct.TYPE_4__* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INVALID_SOCKET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @UV_TCP_IPV6ONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_INET6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %30, i32* %5, align 4
  br label %87

31:                                               ; preds = %23, %18
  %32 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SOCK_STREAM, align 4
  %36 = call i64 @socket(i64 %34, i32 %35, i32 0)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @INVALID_SOCKET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 (...) @WSAGetLastError()
  store i32 %41, i32* %5, align 4
  br label %87

42:                                               ; preds = %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @uv_tcp_set_socket(i32 %45, %struct.TYPE_4__* %46, i64 %47, i64 %50, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @closesocket(i64 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %87

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @bind(i64 %62, %struct.sockaddr* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @SOCKET_ERROR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %59
  %70 = call i32 (...) @WSAGetLastError()
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @WSAEADDRINUSE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %87

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %78, %54, %40, %29
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @socket(i64, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @uv_tcp_set_socket(i32, %struct.TYPE_4__*, i64, i64, i32) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
