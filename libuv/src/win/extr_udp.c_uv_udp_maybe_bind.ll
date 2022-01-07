; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_maybe_bind.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_maybe_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.sockaddr = type { i64 }

@UV_HANDLE_BOUND = common dso_local global i32 0, align 4
@UV_UDP_IPV6ONLY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@UV_UDP_REUSEADDR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@UV_HANDLE_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.sockaddr*, i32, i32)* @uv_udp_maybe_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_udp_maybe_bind(%struct.TYPE_4__* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %137

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @UV_UDP_IPV6ONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %34, i32* %5, align 4
  br label %137

35:                                               ; preds = %27, %22
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INVALID_SOCKET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @SOCK_DGRAM, align 4
  %46 = call i64 @socket(i64 %44, i32 %45, i32 0)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @INVALID_SOCKET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 (...) @WSAGetLastError()
  store i32 %51, i32* %5, align 4
  br label %137

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @uv_udp_set_socket(i32 %55, %struct.TYPE_4__* %56, i64 %57, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @closesocket(i64 %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %137

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  store i32 1, i32* %14, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @SOL_SOCKET, align 4
  %79 = load i32, i32* @SO_REUSEADDR, align 4
  %80 = bitcast i32* %14 to i8*
  %81 = call i32 @setsockopt(i64 %77, i32 %78, i32 %79, i8* %80, i32 4)
  %82 = load i32, i32* @SOCKET_ERROR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = call i32 (...) @WSAGetLastError()
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %137

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %90 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AF_INET6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %102 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AF_INET6, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @UV_UDP_IPV6ONLY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @IPPROTO_IPV6, align 4
  %116 = load i32, i32* @IPV6_V6ONLY, align 4
  %117 = bitcast i32* %12 to i8*
  %118 = call i32 @setsockopt(i64 %114, i32 %115, i32 %116, i8* %117, i32 4)
  br label %119

119:                                              ; preds = %111, %106, %100
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @bind(i64 %122, %struct.sockaddr* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @SOCKET_ERROR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = call i32 (...) @WSAGetLastError()
  store i32 %130, i32* %5, align 4
  br label %137

131:                                              ; preds = %119
  %132 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %131, %129, %84, %64, %50, %33, %21
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i64 @socket(i64, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @uv_udp_set_socket(i32, %struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
