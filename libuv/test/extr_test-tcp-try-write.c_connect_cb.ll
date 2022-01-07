; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-try-write.c_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-try-write.c_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connect_cb_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@client = common dso_local global i32 0, align 4
@UV_EAGAIN = common dso_local global i32 0, align 4
@bytes_written = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @connect_cb_called, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @connect_cb_called, align 4
  br label %13

13:                                               ; preds = %33, %2
  %14 = call i32 @uv_buf_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %14, i32* %6, align 4
  %15 = call i32 @uv_try_write(i32* @client, i32* %6, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UV_EAGAIN, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ true, %13 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @bytes_written, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* @bytes_written, align 4
  br label %34

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  br i1 true, label %13, label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %38, %34
  %36 = call i32 @uv_buf_init(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %36, i32* %6, align 4
  %37 = call i32 @uv_try_write(i32* @client, i32* %6, i32 1)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %35, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @close_cb, align 4
  %43 = call i32 @uv_close(i32* @client, i32 %42)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_try_write(i32*, i32*, i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
