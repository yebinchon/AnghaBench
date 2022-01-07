; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_membership6.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_membership6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i64 }
%struct.ipv6_mreq = type { i32, i64 }

@UV_EINVAL = common dso_local global i32 0, align 4
@IPV6_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@IPV6_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@UV_ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.sockaddr_in6*, i8*, i32)* @uv__udp_set_membership6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__udp_set_membership6(%struct.TYPE_5__* %0, %struct.sockaddr_in6* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipv6_mreq, align 8
  %12 = alloca %struct.sockaddr_in6, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 @memset(%struct.ipv6_mreq* %11, i32 0, i32 16)
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @uv_ip6_addr(i8* %17, i32 0, %struct.sockaddr_in6* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @UV_EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %11, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  br label %28

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %11, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %28
  %35 = load i32, i32* @IPV6_ADD_MEMBERSHIP, align 4
  store i32 %35, i32* %10, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @IPV6_DROP_MEMBERSHIP, align 4
  store i32 %37, i32* %10, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @UV_EINVAL, align 4
  store i32 %39, i32* %5, align 4
  br label %53

40:                                               ; preds = %36, %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IPPROTO_IPV6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @setsockopt(i32 %44, i32 %45, i32 %46, %struct.ipv6_mreq* %11, i32 16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @UV__ERR(i64 %50)
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49, %38, %20
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.ipv6_mreq*, i32, i32) #1

declare dso_local i64 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.ipv6_mreq*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
