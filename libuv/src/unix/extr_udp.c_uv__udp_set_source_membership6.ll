; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_source_membership6.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_source_membership6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i64 }
%struct.group_source_req = type { i32, i32, i64 }

@AF_INET6 = common dso_local global i32 0, align 4
@UV_UDP_REUSEADDR = common dso_local global i32 0, align 4
@UV_JOIN_GROUP = common dso_local global i64 0, align 8
@MCAST_JOIN_SOURCE_GROUP = common dso_local global i32 0, align 4
@UV_LEAVE_GROUP = common dso_local global i64 0, align 8
@MCAST_LEAVE_SOURCE_GROUP = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.sockaddr_in6*, i8*, %struct.sockaddr_in6*, i64)* @uv__udp_set_source_membership6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__udp_set_source_membership6(%struct.TYPE_6__* %0, %struct.sockaddr_in6* %1, i8* %2, %struct.sockaddr_in6* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.group_source_req, align 8
  %13 = alloca %struct.sockaddr_in6, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.sockaddr_in6* %3, %struct.sockaddr_in6** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %19 = call i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_6__* %16, i32 %17, i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %75

24:                                               ; preds = %5
  %25 = call i32 @memset(%struct.group_source_req* %12, i32 0, i32 16)
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @uv_ip6_addr(i8* %29, i32 0, %struct.sockaddr_in6* %13)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %75

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %12, i32 0, i32 2
  store i64 %37, i64* %38, align 8
  br label %41

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %12, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %12, i32 0, i32 1
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %44 = call i32 @memcpy(i32* %42, %struct.sockaddr_in6* %43, i32 4)
  %45 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %12, i32 0, i32 0
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.sockaddr_in6* %46, i32 4)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @UV_JOIN_GROUP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @MCAST_JOIN_SOURCE_GROUP, align 4
  store i32 %52, i32* %14, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @UV_LEAVE_GROUP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @MCAST_LEAVE_SOURCE_GROUP, align 4
  store i32 %58, i32* %14, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @UV_EINVAL, align 4
  store i32 %60, i32* %6, align 4
  br label %75

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %51
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IPPROTO_IPV6, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @setsockopt(i32 %66, i32 %67, i32 %68, %struct.group_source_req* %12, i32 16)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @UV__ERR(i32 %72)
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %71, %59, %33, %22
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memset(%struct.group_source_req*, i32, i32) #1

declare dso_local i32 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_in6*, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.group_source_req*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
