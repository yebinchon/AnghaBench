; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_create_bind_socket_nonblock.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_create_bind_socket_nonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i64, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@EVUTIL_SOCK_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evutil_addrinfo*, i32)* @create_bind_socket_nonblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_bind_socket_nonblock(%struct.evutil_addrinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evutil_addrinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evutil_addrinfo* %0, %struct.evutil_addrinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %10 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %11 = icmp ne %struct.evutil_addrinfo* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %14 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AF_INET, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ]
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @evutil_socket_(i32 %19, i32 %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @event_sock_warn(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_KEEPALIVE, align 4
  %34 = bitcast i32* %7 to i8*
  %35 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i8* %34, i32 4)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %66

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @evutil_make_listen_socket_reuseable(i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %66

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %49 = icmp ne %struct.evutil_addrinfo* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %53 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %56 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @bind(i32 %51, i32 %54, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %66

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %62, %45, %37
  %67 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @evutil_closesocket(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %70)
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %64, %28
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @evutil_socket_(i32, i32, i32) #1

declare dso_local i32 @event_sock_warn(i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @evutil_make_listen_socket_reuseable(i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
