; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_websocket.c_create_listener.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_websocket.c_create_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SOMAXCONN = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@H2O_SOCKET_FLAG_DONT_READ = common dso_local global i32 0, align 4
@on_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_listener() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 1, i32* %4, align 4
  %6 = call i32 @memset(%struct.sockaddr_in* %2, i32 0, i32 12)
  %7 = load i32, i32* @AF_INET, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = call i32 @htonl(i32 2130706433)
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = call i32 @htons(i32 7890)
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %34, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEADDR, align 4
  %22 = call i64 @setsockopt(i32 %19, i32 %20, i32 %21, i32* %4, i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %27 = call i64 @bind(i32 %25, %struct.sockaddr* %26, i32 12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SOMAXCONN, align 4
  %32 = call i64 @listen(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24, %18, %0
  store i32 -1, i32* %1, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @H2O_SOCKET_FLAG_DONT_READ, align 4
  %39 = call i32* @h2o_evloop_socket_create(i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @on_accept, align 4
  %42 = call i32 @h2o_socket_read_start(i32* %40, i32 %41)
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32* @h2o_evloop_socket_create(i32, i32, i32) #1

declare dso_local i32 @h2o_socket_read_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
