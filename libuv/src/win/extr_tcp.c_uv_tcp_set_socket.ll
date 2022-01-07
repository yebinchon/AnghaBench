; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_set_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_set_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@UV_EBUSY = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4
@UV_HANDLE_EMULATE_IOCP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@uv_tcp_non_ifs_lsp_ipv6 = common dso_local global i32 0, align 4
@uv_tcp_non_ifs_lsp_ipv4 = common dso_local global i32 0, align 4
@FILE_SKIP_SET_EVENT_ON_HANDLE = common dso_local global i32 0, align 4
@FILE_SKIP_COMPLETION_PORT_ON_SUCCESS = common dso_local global i32 0, align 4
@UV_HANDLE_SYNC_BYPASS_IOCP = common dso_local global i32 0, align 4
@UV_HANDLE_TCP_NODELAY = common dso_local global i32 0, align 4
@UV_HANDLE_TCP_KEEPALIVE = common dso_local global i32 0, align 4
@UV_HANDLE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i64, i32, i32)* @uv_tcp_set_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_tcp_set_socket(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INVALID_SOCKET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @UV_EBUSY, align 4
  store i32 %22, i32* %6, align 4
  br label %152

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @FIONBIO, align 4
  %26 = call i64 @ioctlsocket(i64 %24, i32 %25, i32* %12)
  %27 = load i64, i64* @SOCKET_ERROR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @WSAGetLastError()
  store i32 %30, i32* %6, align 4
  br label %152

31:                                               ; preds = %23
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %35 = call i32 @SetHandleInformation(i32 %33, i32 %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 (...) @GetLastError()
  store i32 %38, i32* %6, align 4
  br label %152

39:                                               ; preds = %31
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32* @CreateIoCompletionPort(i32 %41, i32 %44, i32 %46, i32 0)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @UV_HANDLE_EMULATE_IOCP, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %60

58:                                               ; preds = %49
  %59 = call i32 (...) @GetLastError()
  store i32 %59, i32* %6, align 4
  br label %152

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @AF_INET6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @uv_tcp_non_ifs_lsp_ipv6, align 4
  store i32 %66, i32* %13, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @uv_tcp_non_ifs_lsp_ipv4, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @UV_HANDLE_EMULATE_IOCP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @FILE_SKIP_SET_EVENT_ON_HANDLE, align 4
  %81 = load i32, i32* @FILE_SKIP_COMPLETION_PORT_ON_SUCCESS, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %15, align 4
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @SetFileCompletionNotificationModes(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = call i32 (...) @GetLastError()
  store i32 %89, i32* %6, align 4
  br label %152

90:                                               ; preds = %79
  %91 = load i32, i32* @UV_HANDLE_SYNC_BYPASS_IOCP, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %76, %69
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @UV_HANDLE_TCP_NODELAY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @uv__tcp_nodelay(%struct.TYPE_7__* %104, i64 %105, i32 1)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %6, align 4
  br label %152

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @UV_HANDLE_TCP_KEEPALIVE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @uv__tcp_keepalive(%struct.TYPE_7__* %120, i64 %121, i32 1, i32 60)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %6, align 4
  br label %152

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %112
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @AF_INET6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %151

141:                                              ; preds = %128
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  br label %151

151:                                              ; preds = %141, %135
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %125, %109, %88, %58, %37, %29, %21
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i64 @ioctlsocket(i64, i32, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @SetHandleInformation(i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @CreateIoCompletionPort(i32, i32, i32, i32) #1

declare dso_local i32 @SetFileCompletionNotificationModes(i32, i32) #1

declare dso_local i32 @uv__tcp_nodelay(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @uv__tcp_keepalive(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
