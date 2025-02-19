; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_pthread-fixes.c_uv__pthread_sigmask.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_pthread-fixes.c_uv__pthread_sigmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__pthread_sigmask.workaround = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__pthread_sigmask(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @uv__pthread_sigmask.workaround, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @sigprocmask(i32 %12, i32* %13, i32* %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @pthread_sigmask(i32 %18, i32* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @sigprocmask(i32 %29, i32* %30, i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* @uv__pthread_sigmask.workaround, align 4
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %28, %24
  store i32 -1, i32* %4, align 4
  br label %38

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %34, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
