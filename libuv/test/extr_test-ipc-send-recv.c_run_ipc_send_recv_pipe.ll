; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_run_ipc_send_recv_pipe.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_run_ipc_send_recv_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@UV_NAMED_PIPE = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TEST_PIPENAME = common dso_local global i32 0, align 4
@TEST_PIPENAME_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @run_ipc_send_recv_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_ipc_send_recv_pipe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @UV_NAMED_PIPE, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 2), align 4
  %5 = call i32 (...) @uv_default_loop()
  %6 = call i32 @uv_pipe_init(i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1, i32 0), i32 1)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @TEST_PIPENAME, align 4
  %12 = call i32 @uv_pipe_bind(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1, i32 0), i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = call i32 (...) @uv_default_loop()
  %18 = call i32 @uv_pipe_init(i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 0, i32 0), i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* @TEST_PIPENAME_2, align 4
  %24 = call i32 @uv_pipe_bind(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 0, i32 0), i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @run_test(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_bind(i32*, i32) #1

declare dso_local i32 @run_test(i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
