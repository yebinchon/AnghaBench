; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-write-queue-order.c_start_server.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-write-queue-order.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@connection_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_server() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = load i32, i32* @TEST_PORT, align 4
  %3 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %2, %struct.sockaddr_in* %1)
  %4 = icmp eq i64 0, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = call i32 (...) @uv_default_loop()
  %8 = call i64 @uv_tcp_init(i32 %7, i32* @server)
  %9 = icmp eq i64 0, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %13 = call i64 @uv_tcp_bind(i32* @server, %struct.sockaddr* %12, i32 0)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32, i32* @connection_cb, align 4
  %18 = call i64 @uv_listen(i32* @server, i32 128, i32 %17)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i64 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i64 @uv_listen(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
