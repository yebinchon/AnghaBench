; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_winsock.c_uv_winsock_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_winsock.c_uv_winsock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@uv_addr_ip4_any_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@uv_addr_ip6_any_ = common dso_local global i32 0, align 4
@SM_CLEANBOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"WSAStartup\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_PROTOCOL_INFOW = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@XP1_IFS_HANDLES = common dso_local global i32 0, align 4
@uv_tcp_non_ifs_lsp_ipv4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"closesocket\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@uv_tcp_non_ifs_lsp_ipv6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_winsock_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca i32, align 4
  %6 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32* @uv_addr_ip4_any_)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @abort() #3
  unreachable

10:                                               ; preds = %0
  %11 = call i64 @uv_ip6_addr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* @uv_addr_ip6_any_)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %10
  %16 = load i32, i32* @SM_CLEANBOOT, align 4
  %17 = call i32 @GetSystemMetrics(i32 %16)
  %18 = icmp eq i32 1, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %114

20:                                               ; preds = %15
  %21 = call i32 @MAKEWORD(i32 2, i32 2)
  %22 = call i32 @WSAStartup(i32 %21, i32* %1)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @uv_fatal_error(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @AF_INET, align 4
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = load i32, i32* @IPPROTO_IP, align 4
  %32 = call i64 @socket(i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @INVALID_SOCKET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %28
  store i32 4, i32* %5, align 4
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* @SOL_SOCKET, align 4
  %39 = load i32, i32* @SO_PROTOCOL_INFOW, align 4
  %40 = bitcast %struct.TYPE_2__* %4 to i8*
  %41 = call i64 @getsockopt(i64 %37, i32 %38, i32 %39, i8* %40, i32* %5)
  %42 = load i64, i64* @SOCKET_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 (...) @WSAGetLastError()
  %46 = call i32 @uv_fatal_error(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %36
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XP1_IFS_HANDLES, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 1, i32* @uv_tcp_non_ifs_lsp_ipv4, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @closesocket(i64 %55)
  %57 = load i64, i64* @SOCKET_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call i32 (...) @WSAGetLastError()
  %61 = call i32 @uv_fatal_error(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  br label %71

63:                                               ; preds = %28
  %64 = call i32 (...) @WSAGetLastError()
  %65 = call i32 @error_means_no_support(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = call i32 (...) @WSAGetLastError()
  %69 = call i32 @uv_fatal_error(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* @AF_INET6, align 4
  %73 = load i32, i32* @SOCK_STREAM, align 4
  %74 = load i32, i32* @IPPROTO_IP, align 4
  %75 = call i64 @socket(i32 %72, i32 %73, i32 %74)
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @INVALID_SOCKET, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %71
  store i32 4, i32* %5, align 4
  %80 = load i64, i64* %3, align 8
  %81 = load i32, i32* @SOL_SOCKET, align 4
  %82 = load i32, i32* @SO_PROTOCOL_INFOW, align 4
  %83 = bitcast %struct.TYPE_2__* %4 to i8*
  %84 = call i64 @getsockopt(i64 %80, i32 %81, i32 %82, i8* %83, i32* %5)
  %85 = load i64, i64* @SOCKET_ERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = call i32 (...) @WSAGetLastError()
  %89 = call i32 @uv_fatal_error(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %79
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @XP1_IFS_HANDLES, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 1, i32* @uv_tcp_non_ifs_lsp_ipv6, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i64, i64* %3, align 8
  %99 = call i64 @closesocket(i64 %98)
  %100 = load i64, i64* @SOCKET_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = call i32 (...) @WSAGetLastError()
  %104 = call i32 @uv_fatal_error(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %97
  br label %114

106:                                              ; preds = %71
  %107 = call i32 (...) @WSAGetLastError()
  %108 = call i32 @error_means_no_support(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = call i32 (...) @WSAGetLastError()
  %112 = call i32 @uv_fatal_error(i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %19, %113, %105
  ret void
}

declare dso_local i64 @uv_ip4_addr(i8*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @uv_ip6_addr(i8*, i32, i32*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @getsockopt(i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i64 @closesocket(i64) #1

declare dso_local i32 @error_means_no_support(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
