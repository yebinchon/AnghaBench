; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-poll.c_start_poll_test.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-poll.c_start_poll_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CLIENTS = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@spurious_writable_wakeups = common dso_local global i32 0, align 4
@valid_writable_wakeups = common dso_local global i32 0, align 4
@closed_connections = common dso_local global i32 0, align 4
@disconnects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_poll_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_poll_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @start_server()
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %10, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NUM_CLIENTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = call i32 (...) @start_client()
  br label %10

10:                                               ; preds = %8
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %4

13:                                               ; preds = %4
  %14 = call i32 (...) @uv_default_loop()
  %15 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %16 = call i32 @uv_run(i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* @spurious_writable_wakeups, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @valid_writable_wakeups, align 4
  %25 = load i32, i32* @spurious_writable_wakeups, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @spurious_writable_wakeups, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp sgt i32 %28, 20
  br label %30

30:                                               ; preds = %23, %13
  %31 = phi i1 [ true, %13 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @closed_connections, align 4
  %35 = load i32, i32* @NUM_CLIENTS, align 4
  %36 = mul nsw i32 %35, 2
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* @disconnects, align 4
  %41 = load i32, i32* @NUM_CLIENTS, align 4
  %42 = mul nsw i32 %41, 2
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret void
}

declare dso_local i32 @start_server(...) #1

declare dso_local i32 @start_client(...) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
