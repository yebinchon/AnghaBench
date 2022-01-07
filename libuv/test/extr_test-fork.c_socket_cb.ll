; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fork.c_socket_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fork.c_socket_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@socket_cb_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Socket cb got events %d\0A\00", align 1
@UV_READABLE = common dso_local global i32 0, align 4
@socket_cb_read_fd = common dso_local global i64 0, align 8
@socket_cb_read_buf = common dso_local global i32 0, align 4
@socket_cb_read_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @socket_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_cb(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @socket_cb_called, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @socket_cb_called, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 0, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @UV_READABLE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @UV_READABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i64, i64* @socket_cb_read_fd, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load i64, i64* @socket_cb_read_fd, align 8
  %27 = load i32, i32* @socket_cb_read_buf, align 4
  %28 = load i64, i64* @socket_cb_read_size, align 8
  %29 = call i64 @read(i64 %26, i32 %27, i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @socket_cb_read_size, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  br label %35

35:                                               ; preds = %25, %3
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @uv_close(i32* %36, i32* null)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @read(i64, i32, i64) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
