; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_async.c_uv__async_eventfd.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_async.c_uv__async_eventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__async_eventfd.no_eventfd2 = internal global i32 0, align 4
@uv__async_eventfd.no_eventfd = internal global i32 0, align 4
@UV__EFD_CLOEXEC = common dso_local global i32 0, align 4
@UV__EFD_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@UV_ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uv__async_eventfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__async_eventfd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @uv__async_eventfd.no_eventfd2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %23

6:                                                ; preds = %0
  %7 = load i32, i32* @UV__EFD_CLOEXEC, align 4
  %8 = load i32, i32* @UV__EFD_NONBLOCK, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @uv__eventfd2(i32 0, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %1, align 4
  br label %47

15:                                               ; preds = %6
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOSYS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @UV__ERR(i64 %20)
  store i32 %21, i32* %1, align 4
  br label %47

22:                                               ; preds = %15
  store i32 1, i32* @uv__async_eventfd.no_eventfd2, align 4
  br label %23

23:                                               ; preds = %22, %5
  %24 = load i32, i32* @uv__async_eventfd.no_eventfd, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %45

27:                                               ; preds = %23
  %28 = call i32 @uv__eventfd(i32 0)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @uv__cloexec(i32 %32, i32 1)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @uv__nonblock(i32 %34, i32 1)
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOSYS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 @UV__ERR(i64 %42)
  store i32 %43, i32* %1, align 4
  br label %47

44:                                               ; preds = %37
  store i32 1, i32* @uv__async_eventfd.no_eventfd, align 4
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %41, %31, %19, %13
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @uv__eventfd2(i32, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @uv__eventfd(i32) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local i32 @uv__nonblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
