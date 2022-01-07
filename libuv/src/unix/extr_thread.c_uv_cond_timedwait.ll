; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_cond_timedwait.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_cond_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@UV_CLOCK_PRECISE = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@UV_ETIMEDOUT = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cond_timedwait(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @UV_CLOCK_PRECISE, align 4
  %11 = call i64 @uv__hrtime(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NANOSEC, align 4
  %18 = sdiv i32 %16, %17
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NANOSEC, align 4
  %22 = srem i32 %20, %21
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @pthread_cond_timedwait(i32* %24, i32* %25, %struct.timespec* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @UV_ETIMEDOUT, align 4
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @abort() #3
  unreachable

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @uv__hrtime(i32) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
