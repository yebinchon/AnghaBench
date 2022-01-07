; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_send_handle_and_close.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_send_handle_and_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@tcp_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@write_req = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@large_buf = common dso_local global i32 0, align 4
@closed_handle_write_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @send_handle_and_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_handle_and_close() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = call i32 (...) @uv_default_loop()
  %4 = call i32 @uv_tcp_init(i32 %3, i32* @tcp_server)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32, i32* @TEST_PORT, align 4
  %10 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.sockaddr_in* %2)
  %11 = icmp eq i64 0, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %15 = call i32 @uv_tcp_bind(i32* @tcp_server, %struct.sockaddr* %14, i32 0)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* @closed_handle_write_cb, align 4
  %21 = call i32 @uv_write2(i32* @write_req, i32* @channel, i32* @large_buf, i32 1, i32* @tcp_server, i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = call i32 @uv_close(i32* @tcp_server, i32* null)
  ret void
}

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_write2(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
