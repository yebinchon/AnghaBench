; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_client_socket_ipv6.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_client_socket_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@SM_IPV6 = common dso_local global i32 0, align 4
@SM_UDP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@tcp_maximize_buffers = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"connect()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_socket_ipv6(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in6, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SM_IPV6, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %76

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @new_socket(i32 %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %76

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SM_UDP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @maximize_sndbuf(i32 %27, i32 0)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @maximize_rcvbuf(i32 %29, i32 0)
  br label %52

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SOL_SOCKET, align 4
  %34 = load i32, i32* @SO_REUSEADDR, align 4
  %35 = call i32 @setsockopt(i32 %32, i32 %33, i32 %34, i32* %10, i32 4)
  %36 = load i64, i64* @tcp_maximize_buffers, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @maximize_sndbuf(i32 %39, i32 0)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @maximize_rcvbuf(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SOL_SOCKET, align 4
  %46 = load i32, i32* @SO_KEEPALIVE, align 4
  %47 = call i32 @setsockopt(i32 %44, i32 %45, i32 %46, i32* %10, i32 4)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IPPROTO_TCP, align 4
  %50 = load i32, i32* @TCP_NODELAY, align 4
  %51 = call i32 @setsockopt(i32 %48, i32 %49, i32 %50, i32* %10, i32 4)
  br label %52

52:                                               ; preds = %43, %26
  %53 = call i32 @memset(%struct.sockaddr_in6* %9, i32 0, i32 12)
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @htons(i32 %56)
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @memcpy(i32* %59, i8* %60, i32 16)
  %62 = load i32, i32* %8, align 4
  %63 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  %64 = call i32 @connect(i32 %62, %struct.sockaddr* %63, i32 12)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINPROGRESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @close(i32 %72)
  store i32 -1, i32* %4, align 4
  br label %76

74:                                               ; preds = %66, %52
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %70, %20, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @new_socket(i32, i32) #1

declare dso_local i32 @maximize_sndbuf(i32, i32) #1

declare dso_local i32 @maximize_rcvbuf(i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
