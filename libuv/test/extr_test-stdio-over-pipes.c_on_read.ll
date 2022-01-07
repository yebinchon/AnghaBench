; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-stdio-over-pipes.c_on_read.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-stdio-over-pipes.c_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EOF = common dso_local global i64 0, align 8
@output_used = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hello world\0A\00", align 1
@output = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@after_write = common dso_local global i32 0, align 4
@on_read_cb_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @UV_EOF, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @output_used, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* @output_used, align 4
  %28 = load i32, i32* @output_used, align 4
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* @output, align 4
  %32 = call i64 @memcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31, i32 12)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* @output, align 4
  %37 = load i32, i32* @output_used, align 4
  %38 = call i32 @uv_buf_init(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = call i32* @malloc(i32 4)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @after_write, align 4
  %42 = call i32 @uv_write(i32* %40, i32* @in, i32* %8, i32 1, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  br label %47

47:                                               ; preds = %30, %22
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* @on_read_cb_called, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @on_read_cb_called, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @uv_buf_init(i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @uv_write(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
