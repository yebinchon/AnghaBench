; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_sock_connect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_sock_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pollfd = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, double)* @rpc_sock_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_sock_connect(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.pollfd, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %13 = call i32 @ADD_CNT(i32 (i32, i32, double)* @rpc_sock_connect)
  %14 = call i32 @START_TIMER(i32 (i32, i32, double)* @rpc_sock_connect)
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @END_TIMER(i32 (i32, i32, double)* @rpc_sock_connect)
  store i32 -1, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SOL_SOCKET, align 4
  %24 = load i32, i32* @SO_REUSEADDR, align 4
  %25 = call i32 @setsockopt(i32 %22, i32 %23, i32 %24, i32* %9, i32 4)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SOL_SOCKET, align 4
  %28 = load i32, i32* @SO_KEEPALIVE, align 4
  %29 = call i32 @setsockopt(i32 %26, i32 %27, i32 %28, i32* %9, i32 4)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IPPROTO_TCP, align 4
  %32 = load i32, i32* @TCP_NODELAY, align 4
  %33 = call i32 @setsockopt(i32 %30, i32 %31, i32 %32, i32* %9, i32 4)
  %34 = load i32, i32* @AF_INET, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @F_SETFL, align 4
  %45 = load i32, i32* @O_NONBLOCK, align 4
  %46 = call i32 @fcntl(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %49 = call i32 @connect(i32 %47, %struct.sockaddr* %48, i32 12)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %60

51:                                               ; preds = %21
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EINPROGRESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 @END_TIMER(i32 (i32, i32, double)* @rpc_sock_connect)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @close(i32 %57)
  store i32 -1, i32* %4, align 4
  br label %77

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @POLLOUT, align 4
  %64 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load double, double* %7, align 8
  %66 = call i32 @get_ms_timeout(double %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @poll(%struct.pollfd* %11, i32 1, i32 %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @close(i32 %71)
  %73 = call i32 @END_TIMER(i32 (i32, i32, double)* @rpc_sock_connect)
  store i32 -1, i32* %4, align 4
  br label %77

74:                                               ; preds = %60
  %75 = call i32 @END_TIMER(i32 (i32, i32, double)* @rpc_sock_connect)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %70, %55, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ADD_CNT(i32 (i32, i32, double)*) #1

declare dso_local i32 @START_TIMER(i32 (i32, i32, double)*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @END_TIMER(i32 (i32, i32, double)*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @get_ms_timeout(double) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
