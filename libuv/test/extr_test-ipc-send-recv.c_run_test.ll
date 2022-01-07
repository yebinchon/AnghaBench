; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_run_test.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ipc_send_recv_helper_threadproc = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TEST_PIPENAME_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ipc_send_recv_helper\00", align 1
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@recv_cb_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i32, i32* @ipc_send_recv_helper_threadproc, align 4
  %10 = call i32 @uv_thread_create(i32* %4, i32 %9, i8* inttoptr (i64 42 to i8*))
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i32 @uv_sleep(i32 1000)
  %16 = call i32 (...) @uv_default_loop()
  %17 = call i32 @uv_pipe_init(i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 1), i32 1)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* @TEST_PIPENAME_3, align 4
  %23 = call i32 @uv_pipe_connect(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 1), i32 %22, i32 (i32*, i32)* @connect_cb)
  br label %27

24:                                               ; preds = %1
  %25 = call i32 @spawn_helper(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 1), i32* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @connect_cb(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), i32 0)
  br label %27

27:                                               ; preds = %24, %8
  %28 = call i32 (...) @uv_default_loop()
  %29 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %30 = call i32 @uv_run(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* @recv_cb_count, align 4
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = call i32 @uv_thread_join(i32* %4)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  br label %47

47:                                               ; preds = %41, %27
  ret i32 0
}

declare dso_local i32 @uv_thread_create(i32*, i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_sleep(i32) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_pipe_connect(i32*, i32*, i32, i32 (i32*, i32)*) #1

declare dso_local i32 @connect_cb(i32*, i32) #1

declare dso_local i32 @spawn_helper(i32*, i32*, i8*) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @uv_thread_join(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
