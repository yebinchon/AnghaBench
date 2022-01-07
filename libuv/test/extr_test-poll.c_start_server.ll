; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-poll.c_start_server.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-poll.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i32 0, align 4
@server_poll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_server() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @TEST_PORT, align 4
  %6 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.sockaddr_in* %2)
  %7 = icmp eq i64 0, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @create_bound_socket(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_3__* @create_server_context(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %1, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @listen(i32 %15, i32 100)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* @UV_READABLE, align 4
  %24 = load i32, i32* @server_poll_cb, align 4
  %25 = call i32 @uv_poll_start(i32* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @create_bound_socket(i32) #1

declare dso_local %struct.TYPE_3__* @create_server_context(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @uv_poll_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
