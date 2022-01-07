; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_netlink_recv.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_netlink_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_nl = type { i32 }
%struct.msghdr = type { i32, i32, i32, i64, i32*, %struct.iovec*, i8* }
%struct.iovec = type { i64, i8* }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @netlink_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_recv(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_nl, align 4
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca %struct.iovec, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %33, %3
  %17 = bitcast %struct.sockaddr_nl* %8 to i8*
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 6
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 5
  store %struct.iovec* %10, %struct.iovec** %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @recvmsg(i32 %25, %struct.msghdr* %9, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %16

34:                                               ; preds = %29
  store i32 -2, i32* %4, align 4
  br label %44

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MSG_TRUNC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %41, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
