; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_set_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_set_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@UV_EBUSY = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_PROTOCOL_INFOW = common dso_local global i32 0, align 4
@FILE_SKIP_SET_EVENT_ON_HANDLE = common dso_local global i32 0, align 4
@FILE_SKIP_COMPLETION_PORT_ON_SUCCESS = common dso_local global i32 0, align 4
@UV_HANDLE_SYNC_BYPASS_IOCP = common dso_local global i32 0, align 4
@uv_wsarecv_workaround = common dso_local global i32 0, align 4
@uv_wsarecvfrom_workaround = common dso_local global i32 0, align 4
@ERROR_INVALID_FUNCTION = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@UV_HANDLE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i64, i32)* @uv_udp_set_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_udp_set_socket(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INVALID_SOCKET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @UV_EBUSY, align 4
  store i32 %19, i32* %5, align 4
  br label %116

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @FIONBIO, align 4
  %23 = call i64 @ioctlsocket(i64 %21, i32 %22, i32* %10)
  %24 = load i64, i64* @SOCKET_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @WSAGetLastError()
  store i32 %27, i32* %5, align 4
  br label %116

28:                                               ; preds = %20
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %32 = call i32 @SetHandleInformation(i32 %30, i32 %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 (...) @GetLastError()
  store i32 %35, i32* %5, align 4
  br label %116

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32* @CreateIoCompletionPort(i32 %38, i32 %41, i32 %43, i32 0)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 (...) @GetLastError()
  store i32 %47, i32* %5, align 4
  br label %116

48:                                               ; preds = %36
  store i32 4, i32* %12, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @SOL_SOCKET, align 4
  %51 = load i32, i32* @SO_PROTOCOL_INFOW, align 4
  %52 = bitcast %struct.TYPE_10__* %11 to i8*
  %53 = call i64 @getsockopt(i64 %49, i32 %50, i32 %51, i8* %52, i32* %12)
  %54 = load i64, i64* @SOCKET_ERROR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (...) @GetLastError()
  store i32 %57, i32* %5, align 4
  br label %116

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @FILE_SKIP_SET_EVENT_ON_HANDLE, align 4
  %67 = load i32, i32* @FILE_SKIP_COMPLETION_PORT_ON_SUCCESS, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @SetFileCompletionNotificationModes(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i32, i32* @UV_HANDLE_SYNC_BYPASS_IOCP, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @uv_wsarecv_workaround, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @uv_wsarecvfrom_workaround, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %91

83:                                               ; preds = %63
  %84 = call i32 (...) @GetLastError()
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @ERROR_INVALID_FUNCTION, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @GetLastError()
  store i32 %89, i32* %5, align 4
  br label %116

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @AF_INET6, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %115

105:                                              ; preds = %92
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %115

115:                                              ; preds = %105, %99
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %88, %56, %46, %34, %26, %18
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @ioctlsocket(i64, i32, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @SetHandleInformation(i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @CreateIoCompletionPort(i32, i32, i32, i32) #1

declare dso_local i64 @getsockopt(i64, i32, i32, i8*, i32*) #1

declare dso_local i64 @SetFileCompletionNotificationModes(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
