; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_check_interfaces.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_check_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.sockaddr_in6 = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.sockaddr = type { i32 }

@have_checked_interfaces = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"18.244.0.188\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"2001:4860:b002::68\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @evutil_check_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evutil_check_interfaces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca %struct.sockaddr_in6, align 8
  %6 = alloca %struct.sockaddr_in6, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 -1, i64* %2, align 8
  store i32 48, i32* %7, align 4
  store i32 48, i32* %8, align 4
  %10 = load i32, i32* @have_checked_interfaces, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %92

13:                                               ; preds = %0
  store i32 1, i32* @have_checked_interfaces, align 4
  %14 = call i64 (...) @evutil_check_ifaddrs()
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %92

17:                                               ; preds = %13
  %18 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr_in6*
  %19 = call i32 @memset(%struct.sockaddr_in6* %18, i32 0, i32 48)
  %20 = load i8*, i8** @AF_INET, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = call i8* @htons(i32 53)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @AF_INET, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 3
  %26 = call i32 @evutil_inet_pton(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @EVUTIL_ASSERT(i32 %27)
  %29 = call i32 @memset(%struct.sockaddr_in6* %5, i32 0, i32 48)
  %30 = load i8*, i8** @AF_INET6, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = call i8* @htons(i32 53)
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @AF_INET6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %36 = call i32 @evutil_inet_pton(i8* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @EVUTIL_ASSERT(i32 %37)
  %39 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr_in6*
  %40 = call i32 @memset(%struct.sockaddr_in6* %39, i32 0, i32 48)
  %41 = call i32 @memset(%struct.sockaddr_in6* %6, i32 0, i32 48)
  %42 = load i8*, i8** @AF_INET, align 8
  %43 = load i32, i32* @SOCK_DGRAM, align 4
  %44 = load i32, i32* @IPPROTO_UDP, align 4
  %45 = call i64 @socket(i8* %42, i32 %43, i32 %44)
  store i64 %45, i64* %2, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %17
  %48 = load i64, i64* %2, align 8
  %49 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %50 = call i64 @connect(i64 %48, %struct.sockaddr* %49, i32 48)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i64, i64* %2, align 8
  %54 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %55 = call i64 @getsockname(i64 %53, %struct.sockaddr* %54, i32* %7)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %59 = call i32 @evutil_found_ifaddr(%struct.sockaddr* %58)
  br label %60

60:                                               ; preds = %57, %52, %47, %17
  %61 = load i64, i64* %2, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* %2, align 8
  %65 = call i32 @evutil_closesocket(i64 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** @AF_INET6, align 8
  %68 = load i32, i32* @SOCK_DGRAM, align 4
  %69 = load i32, i32* @IPPROTO_UDP, align 4
  %70 = call i64 @socket(i8* %67, i32 %68, i32 %69)
  store i64 %70, i64* %2, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i64, i64* %2, align 8
  %74 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %75 = call i64 @connect(i64 %73, %struct.sockaddr* %74, i32 48)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i64, i64* %2, align 8
  %79 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  %80 = call i64 @getsockname(i64 %78, %struct.sockaddr* %79, i32* %8)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  %84 = call i32 @evutil_found_ifaddr(%struct.sockaddr* %83)
  br label %85

85:                                               ; preds = %82, %77, %72, %66
  %86 = load i64, i64* %2, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @evutil_closesocket(i64 %89)
  br label %91

91:                                               ; preds = %88, %85
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %16, %12
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i64 @evutil_check_ifaddrs(...) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @evutil_inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @socket(i8*, i32, i32) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evutil_found_ifaddr(%struct.sockaddr*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
