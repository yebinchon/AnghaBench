; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-loop-handles.c_idle_1_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-loop-handles.c_idle_1_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"IDLE_1_CB\0A\00", align 1
@idles_1_active = common dso_local global i64 0, align 8
@idle_2_is_active = common dso_local global i32 0, align 4
@idle_2_handle = common dso_local global i32 0, align 4
@idle_2_cb = common dso_local global i32 0, align 4
@idle_2_cb_started = common dso_local global i32 0, align 4
@idle_1_cb_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idle_1_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idle_1_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fflush(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i64, i64* @idles_1_active, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @idle_2_is_active, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %1
  %19 = call i32 @uv_is_closing(i32* @idle_2_handle)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @uv_default_loop()
  %23 = call i32 @uv_idle_init(i32 %22, i32* @idle_2_handle)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* @idle_2_cb, align 4
  %29 = call i32 @uv_idle_start(i32* @idle_2_handle, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  store i32 1, i32* @idle_2_is_active, align 4
  %34 = load i32, i32* @idle_2_cb_started, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @idle_2_cb_started, align 4
  br label %36

36:                                               ; preds = %21, %18, %1
  %37 = load i32, i32* @idle_1_cb_called, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @idle_1_cb_called, align 4
  %39 = load i32, i32* @idle_1_cb_called, align 4
  %40 = srem i32 %39, 5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @uv_idle_stop(i32* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i64, i64* @idles_1_active, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* @idles_1_active, align 8
  br label %51

51:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_is_closing(i32*) #1

declare dso_local i32 @uv_idle_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_idle_start(i32*, i32) #1

declare dso_local i32 @uv_idle_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
