; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/udp-dhcp/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/udp-dhcp/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@loop = common dso_local global i32 0, align 4
@recv_socket = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@UV_UDP_REUSEADDR = common dso_local global i32 0, align 4
@alloc_buffer = common dso_local global i32 0, align 4
@on_read = common dso_local global i32 0, align 4
@send_socket = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@on_send = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @uv_default_loop()
  store i32 %7, i32* @loop, align 4
  %8 = load i32, i32* @loop, align 4
  %9 = call i32 @uv_udp_init(i32 %8, i32* @recv_socket)
  %10 = call i32 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 68, %struct.sockaddr_in* %2)
  %11 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %12 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %13 = call i32 @uv_udp_bind(i32* @recv_socket, %struct.sockaddr* %11, i32 %12)
  %14 = load i32, i32* @alloc_buffer, align 4
  %15 = load i32, i32* @on_read, align 4
  %16 = call i32 @uv_udp_recv_start(i32* @recv_socket, i32 %14, i32 %15)
  %17 = load i32, i32* @loop, align 4
  %18 = call i32 @uv_udp_init(i32 %17, i32* @send_socket)
  %19 = call i32 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, %struct.sockaddr_in* %3)
  %20 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %21 = call i32 @uv_udp_bind(i32* @send_socket, %struct.sockaddr* %20, i32 0)
  %22 = call i32 @uv_udp_set_broadcast(i32* @send_socket, i32 1)
  %23 = call i32 (...) @make_discover_msg()
  store i32 %23, i32* %5, align 4
  %24 = call i32 @uv_ip4_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 67, %struct.sockaddr_in* %6)
  %25 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %26 = load i32, i32* @on_send, align 4
  %27 = call i32 @uv_udp_send(i32* %4, i32* @send_socket, i32* %5, i32 1, %struct.sockaddr* %25, i32 %26)
  %28 = load i32, i32* @loop, align 4
  %29 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %30 = call i32 @uv_run(i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_udp_init(i32, i32*) #1

declare dso_local i32 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_udp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_udp_recv_start(i32*, i32, i32) #1

declare dso_local i32 @uv_udp_set_broadcast(i32*, i32) #1

declare dso_local i32 @make_discover_msg(...) #1

declare dso_local i32 @uv_udp_send(i32*, i32*, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
