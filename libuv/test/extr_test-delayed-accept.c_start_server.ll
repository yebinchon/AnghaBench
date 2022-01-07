; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-delayed-accept.c_start_server.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-delayed-accept.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@connection_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_server() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @malloc(i32 4)
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** %2, align 8
  %6 = load i32, i32* @TEST_PORT, align 4
  %7 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.sockaddr_in* %1)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i32 (...) @uv_default_loop()
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @uv_tcp_init(i32 %15, i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %24 = call i32 @uv_tcp_bind(i32* %22, %struct.sockaddr* %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @connection_cb, align 4
  %31 = call i32 @uv_listen(i32* %29, i32 128, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
