; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_client_socket.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_client_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@SM_IPV6 = common dso_local global i32 0, align 4
@SM_UDP = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_RECVERR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@tcp_maximize_buffers = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"connect()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_socket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SM_IPV6, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %80

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @new_socket(i32 %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %80

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SM_UDP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @maximize_sndbuf(i32 %27, i32 0)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @maximize_rcvbuf(i32 %29, i32 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SOL_IP, align 4
  %33 = load i32, i32* @IP_RECVERR, align 4
  %34 = call i32 @setsockopt(i32 %31, i32 %32, i32 %33, i32* %10, i32 4)
  br label %56

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SOL_SOCKET, align 4
  %38 = load i32, i32* @SO_REUSEADDR, align 4
  %39 = call i32 @setsockopt(i32 %36, i32 %37, i32 %38, i32* %10, i32 4)
  %40 = load i64, i64* @tcp_maximize_buffers, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @maximize_sndbuf(i32 %43, i32 0)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @maximize_rcvbuf(i32 %45, i32 0)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SOL_SOCKET, align 4
  %50 = load i32, i32* @SO_KEEPALIVE, align 4
  %51 = call i32 @setsockopt(i32 %48, i32 %49, i32 %50, i32* %10, i32 4)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IPPROTO_TCP, align 4
  %54 = load i32, i32* @TCP_NODELAY, align 4
  %55 = call i32 @setsockopt(i32 %52, i32 %53, i32 %54, i32* %10, i32 4)
  br label %56

56:                                               ; preds = %47, %26
  %57 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 12)
  %58 = load i32, i32* @AF_INET, align 4
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @htons(i32 %60)
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %68 = call i32 @connect(i32 %66, %struct.sockaddr* %67, i32 12)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @EINPROGRESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @close(i32 %76)
  store i32 -1, i32* %4, align 4
  br label %80

78:                                               ; preds = %70, %56
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %74, %20, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @new_socket(i32, i32) #1

declare dso_local i32 @maximize_sndbuf(i32, i32) #1

declare dso_local i32 @maximize_rcvbuf(i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
