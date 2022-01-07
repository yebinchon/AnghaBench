; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-threadpool-cancel.c_saturate_threadpool.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-threadpool-cancel.c_saturate_threadpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"UV_THREADPOOL_SIZE=%lu\00", align 1
@pause_reqs = common dso_local global i64 0, align 8
@pause_sems = common dso_local global i64 0, align 8
@work_cb = common dso_local global i32 0, align 4
@done_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @saturate_threadpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saturate_threadpool() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %5 = load i64, i64* @pause_reqs, align 8
  %6 = call i64 @ARRAY_SIZE(i64 %5)
  %7 = call i32 @snprintf(i8* %4, i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %9 = call i32 @putenv(i8* %8)
  %10 = call i32* (...) @uv_default_loop()
  store i32* %10, i32** %1, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %34, %0
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @pause_reqs, align 8
  %14 = call i64 @ARRAY_SIZE(i64 %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i64, i64* @pause_sems, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %17, %18
  %20 = call i64 @uv_sem_init(i64 %19, i32 0)
  %21 = icmp eq i64 0, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i64, i64* @pause_reqs, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %25, %26
  %28 = load i32, i32* @work_cb, align 4
  %29 = load i32, i32* @done_cb, align 4
  %30 = call i64 @uv_queue_work(i32* %24, i64 %27, i32 %28, i32 %29)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  br label %34

34:                                               ; preds = %16
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %11

37:                                               ; preds = %11
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_sem_init(i64, i32) #1

declare dso_local i64 @uv_queue_work(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
