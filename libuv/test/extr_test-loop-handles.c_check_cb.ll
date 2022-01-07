; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-loop-handles.c_check_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-loop-handles.c_check_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CHECK_CB\0A\00", align 1
@check_handle = common dso_local global i32 0, align 4
@loop_iteration = common dso_local global i32 0, align 4
@ITERATIONS = common dso_local global i32 0, align 4
@IDLE_COUNT = common dso_local global i32 0, align 4
@idle_1_handles = common dso_local global i32* null, align 8
@idle_1_cb = common dso_local global i32 0, align 4
@idles_1_active = common dso_local global i32 0, align 4
@prepare_1_handle = common dso_local global i32 0, align 4
@prepare_1_close_cb = common dso_local global i32 0, align 4
@check_close_cb = common dso_local global i32 0, align 4
@prepare_2_handle = common dso_local global i32 0, align 4
@prepare_2_close_cb = common dso_local global i32 0, align 4
@idle_1_close_cb = common dso_local global i32 0, align 4
@idle_2_is_active = common dso_local global i64 0, align 8
@idle_2_handle = common dso_local global i32 0, align 4
@idle_2_close_cb = common dso_local global i32 0, align 4
@check_cb_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fflush(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, @check_handle
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* @loop_iteration, align 4
  %14 = load i32, i32* @ITERATIONS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @loop_iteration, align 4
  %20 = load i32, i32* @IDLE_COUNT, align 4
  %21 = srem i32 %19, %20
  %22 = add nsw i32 1, %21
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load i32*, i32** @idle_1_handles, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* @idle_1_cb, align 4
  %30 = call i32 @uv_idle_start(i32* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* @idles_1_active, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @idles_1_active, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %17

40:                                               ; preds = %17
  br label %69

41:                                               ; preds = %1
  %42 = load i32, i32* @prepare_1_close_cb, align 4
  %43 = call i32 @uv_close(i32* @prepare_1_handle, i32 %42)
  %44 = load i32, i32* @check_close_cb, align 4
  %45 = call i32 @uv_close(i32* @check_handle, i32 %44)
  %46 = load i32, i32* @prepare_2_close_cb, align 4
  %47 = call i32 @uv_close(i32* @prepare_2_handle, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %59, %41
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @IDLE_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32*, i32** @idle_1_handles, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @idle_1_close_cb, align 4
  %58 = call i32 @uv_close(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load i64, i64* @idle_2_is_active, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @idle_2_close_cb, align 4
  %67 = call i32 @uv_close(i32* @idle_2_handle, i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* @check_cb_called, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @check_cb_called, align 4
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_idle_start(i32*, i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
