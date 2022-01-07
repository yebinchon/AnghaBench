; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_membership4.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_set_membership4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ip_mreq = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@UV_ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.sockaddr_in*, i8*, i32)* @uv__udp_set_membership4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__udp_set_membership4(%struct.TYPE_11__* %0, %struct.sockaddr_in* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_mreq, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 @memset(%struct.ip_mreq* %10, i32 0, i32 8)
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %10, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @uv_inet_pton(i32 %17, i8* %18, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %59

26:                                               ; preds = %16
  br label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @INADDR_ANY, align 4
  %29 = call i32 @htonl(i32 %28)
  %30 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %10, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %26
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %44 [
    i32 129, label %40
    i32 128, label %42
  ]

40:                                               ; preds = %32
  %41 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  store i32 %41, i32* %11, align 4
  br label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  store i32 %43, i32* %11, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @UV_EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %59

46:                                               ; preds = %42, %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPPROTO_IP, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @setsockopt(i32 %50, i32 %51, i32 %52, %struct.ip_mreq* %10, i32 8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i64, i64* @errno, align 8
  %57 = call i32 @UV__ERR(i64 %56)
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55, %44, %24
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.ip_mreq*, i32, i32) #1

declare dso_local i32 @uv_inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.ip_mreq*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
