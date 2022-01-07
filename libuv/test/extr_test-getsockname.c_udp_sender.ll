; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_udp_sender.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_udp_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@loop = common dso_local global i32 0, align 4
@udp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@server_port = common dso_local global i32 0, align 4
@send_req = common dso_local global i32 0, align 4
@udp_send = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udp_sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_sender() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @loop, align 4
  %5 = call i32 @uv_udp_init(i32 %4, i32* @udp)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = call i32 @uv_buf_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @server_port, align 4
  %13 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12, %struct.sockaddr_in* %1)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %18 = load i32, i32* @udp_send, align 4
  %19 = call i32 @uv_udp_send(i32* @send_req, i32* @udp, i32* %2, i32 1, %struct.sockaddr* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  ret void
}

declare dso_local i32 @uv_udp_init(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_udp_send(i32*, i32*, i32*, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
