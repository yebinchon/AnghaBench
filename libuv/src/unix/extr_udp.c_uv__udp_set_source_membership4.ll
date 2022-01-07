; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_source_membership4.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_source_membership4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ip_mreq_source = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@UV_UDP_REUSEADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@UV_JOIN_GROUP = common dso_local global i64 0, align 8
@IP_ADD_SOURCE_MEMBERSHIP = common dso_local global i32 0, align 4
@UV_LEAVE_GROUP = common dso_local global i64 0, align 8
@IP_DROP_SOURCE_MEMBERSHIP = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.sockaddr_in*, i8*, %struct.sockaddr_in*, i64)* @uv__udp_set_source_membership4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__udp_set_source_membership4(%struct.TYPE_14__* %0, %struct.sockaddr_in* %1, i8* %2, %struct.sockaddr_in* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ip_mreq_source, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %18 = call i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_14__* %15, i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %83

23:                                               ; preds = %5
  %24 = call i32 @memset(%struct.ip_mreq_source* %12, i32 0, i32 12)
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* @AF_INET, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %12, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @uv_inet_pton(i32 %28, i8* %29, i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %83

37:                                               ; preds = %27
  br label %43

38:                                               ; preds = %23
  %39 = load i32, i32* @INADDR_ANY, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %12, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %12, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @UV_JOIN_GROUP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @IP_ADD_SOURCE_MEMBERSHIP, align 4
  store i32 %60, i32* %13, align 4
  br label %70

61:                                               ; preds = %43
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @UV_LEAVE_GROUP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @IP_DROP_SOURCE_MEMBERSHIP, align 4
  store i32 %66, i32* %13, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @UV_EINVAL, align 4
  store i32 %68, i32* %6, align 4
  br label %83

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IPPROTO_IP, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @setsockopt(i32 %74, i32 %75, i32 %76, %struct.ip_mreq_source* %12, i32 12)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @UV__ERR(i32 %80)
  store i32 %81, i32* %6, align 4
  br label %83

82:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %79, %67, %35, %21
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memset(%struct.ip_mreq_source*, i32, i32) #1

declare dso_local i32 @uv_inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.ip_mreq_source*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
