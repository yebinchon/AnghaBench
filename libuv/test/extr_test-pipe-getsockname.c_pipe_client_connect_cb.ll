; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-pipe-getsockname.c_pipe_client_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-pipe-getsockname.c_pipe_client_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connect_req = common dso_local global i32 0, align 4
@pipe_client = common dso_local global i32 0, align 4
@TEST_PIPENAME = common dso_local global i32 0, align 4
@pipe_client_connect_cb_called = common dso_local global i32 0, align 4
@pipe_close_cb = common dso_local global i32 0, align 4
@pipe_server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pipe_client_connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_client_connect_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, @connect_req
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  store i64 1024, i64* %6, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %17 = call i32 @uv_pipe_getpeername(i32* @pipe_client, i8* %16, i64* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %31 = load i32, i32* @TEST_PIPENAME, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @memcmp(i8* %30, i32 %31, i64 %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  store i64 1024, i64* %6, align 8
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %38 = call i32 @uv_pipe_getsockname(i32* @pipe_client, i8* %37, i64* %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %41, %2
  %45 = phi i1 [ false, %2 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load i32, i32* @pipe_client_connect_cb_called, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @pipe_client_connect_cb_called, align 4
  %50 = load i32, i32* @pipe_close_cb, align 4
  %51 = call i32 @uv_close(i32* @pipe_client, i32 %50)
  %52 = load i32, i32* @pipe_close_cb, align 4
  %53 = call i32 @uv_close(i32* @pipe_server, i32 %52)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_getpeername(i32*, i8*, i64*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @uv_pipe_getsockname(i32*, i8*, i64*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
