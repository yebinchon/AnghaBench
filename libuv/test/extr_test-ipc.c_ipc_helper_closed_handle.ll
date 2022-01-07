; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper_closed_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper_closed_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = common dso_local global i32 0, align 4
@LARGE_SIZE = common dso_local global i32 0, align 4
@large_buf = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@closed_handle_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_helper_closed_handle() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @buffer, align 4
  %3 = load i32, i32* @LARGE_SIZE, align 4
  %4 = call i32 @memset(i32 %2, i8 signext 46, i32 %3)
  %5 = load i32, i32* @buffer, align 4
  %6 = load i32, i32* @LARGE_SIZE, align 4
  %7 = call i32 @uv_buf_init(i32 %5, i32 %6)
  store i32 %7, i32* @large_buf, align 4
  %8 = call i32 (...) @uv_default_loop()
  %9 = call i32 @uv_pipe_init(i32 %8, i32* @channel, i32 1)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 @uv_pipe_open(i32* @channel, i32 0)
  %15 = call i32 @uv_is_readable(i32* @channel)
  %16 = icmp eq i32 1, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i32 @uv_is_writable(i32* @channel)
  %20 = icmp eq i32 1, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = call i64 @uv_is_closing(i32* @channel)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i64 (...) @write_until_data_queued()
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %0
  %30 = call i32 (...) @send_handle_and_close()
  br label %31

31:                                               ; preds = %29, %0
  %32 = call i32 (...) @uv_default_loop()
  %33 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %34 = call i32 @uv_run(i32 %32, i32 %33)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* @closed_handle_write, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @uv_buf_init(i32, i32) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_open(i32*, i32) #1

declare dso_local i32 @uv_is_readable(i32*) #1

declare dso_local i32 @uv_is_writable(i32*) #1

declare dso_local i64 @uv_is_closing(i32*) #1

declare dso_local i64 @write_until_data_queued(...) #1

declare dso_local i32 @send_handle_and_close(...) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
