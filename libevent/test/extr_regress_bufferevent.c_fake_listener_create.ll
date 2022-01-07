; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_bufferevent.c_fake_listener_create.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_bufferevent.c_fake_listener_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sockaddr_in*)* @fake_listener_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fake_listener_create(%struct.sockaddr_in* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %3, align 8
  %7 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %8 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %8, %struct.sockaddr** %4, align 8
  store i64 -1, i64* %5, align 8
  store i32 16, i32* %6, align 4
  %9 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %10 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 16)
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = call i32 @htonl(i32 2130706433)
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i64 @socket(i32 %22, i32 %23, i32 0)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @tt_assert(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @bind(i64 %29, %struct.sockaddr* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @tt_assert(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %38 = call i64 @getsockname(i64 %36, %struct.sockaddr* %37, i32* %6)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @tt_assert(i32 %40)
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %2, align 8
  br label %44

43:                                               ; No predecessors!
  store i64 -1, i64* %2, align 8
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
