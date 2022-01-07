; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_tcp_connector.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_tcp_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@server_port = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@tcp = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@connect_req = common dso_local global i32 0, align 4
@on_connect = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@connect_port = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tcp_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_connector() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca %struct.sockaddr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @server_port, align 4
  %6 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.sockaddr_in* %1)
  %7 = icmp eq i64 0, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i32, i32* @loop, align 4
  %11 = call i32 @uv_tcp_init(i32 %10, %struct.TYPE_5__* @tcp)
  store i32 %11, i32* %3, align 4
  store i32* @connect_req, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcp, i32 0, i32 0), align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %18 = load i32, i32* @on_connect, align 4
  %19 = call i32 @uv_tcp_connect(i32* @connect_req, %struct.TYPE_5__* @tcp, %struct.sockaddr* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  store i32 8, i32* %4, align 4
  %25 = call i32 @uv_tcp_getsockname(%struct.TYPE_5__* @tcp, %struct.sockaddr* %2, i32* %4)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %2, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = bitcast %struct.sockaddr* %2 to %struct.sockaddr_in*
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ntohs(i32 %39)
  store i64 %40, i64* @connect_port, align 8
  %41 = load i64, i64* @connect_port, align 8
  %42 = icmp sgt i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_init(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @uv_tcp_connect(i32*, %struct.TYPE_5__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_tcp_getsockname(%struct.TYPE_5__*, %struct.sockaddr*, i32*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
