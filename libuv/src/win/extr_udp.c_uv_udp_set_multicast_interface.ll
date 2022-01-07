; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_set_multicast_interface.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_set_multicast_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i64 }

@UV_HANDLE_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@UV_EBADF = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_IF = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_MULTICAST_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_set_multicast_interface(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_storage, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %9, %struct.sockaddr_in** %7, align 8
  %10 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = call i32 @memset(%struct.sockaddr_storage* %6, i32 0, i32 8)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i64, i64* @AF_INET6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %34

26:                                               ; preds = %13
  %27 = load i64, i64* @AF_INET, align 8
  %28 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @INADDR_ANY, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %21
  br label %51

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %38 = call i64 @uv_ip4_addr(i8* %36, i32 0, %struct.sockaddr_in* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %44 = call i64 @uv_ip6_addr(i8* %42, i32 0, %struct.sockaddr_in6* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @UV_EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %106

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INVALID_SOCKET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @UV_EBADF, align 4
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_INET, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @IPPROTO_IP, align 4
  %69 = load i32, i32* @IP_MULTICAST_IF, align 4
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 0
  %72 = bitcast %struct.TYPE_4__* %71 to i8*
  %73 = call i64 @setsockopt(i64 %67, i32 %68, i32 %69, i8* %72, i32 4)
  %74 = load i64, i64* @SOCKET_ERROR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = call i32 (...) @WSAGetLastError()
  %78 = call i32 @uv_translate_sys_error(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %106

79:                                               ; preds = %64
  br label %105

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AF_INET6, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @IPPROTO_IPV6, align 4
  %90 = load i32, i32* @IPV6_MULTICAST_IF, align 4
  %91 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %91, i32 0, i32 0
  %93 = bitcast i64* %92 to i8*
  %94 = call i64 @setsockopt(i64 %88, i32 %89, i32 %90, i8* %93, i32 8)
  %95 = load i64, i64* @SOCKET_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = call i32 (...) @WSAGetLastError()
  %99 = call i32 @uv_translate_sys_error(i32 %98)
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %85
  br label %104

101:                                              ; preds = %80
  %102 = call i32 @assert(i32 0)
  %103 = call i32 (...) @abort() #3
  unreachable

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %79
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %97, %76, %57, %47
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i64 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
