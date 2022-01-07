; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv__make_pipe.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv__make_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__make_pipe.no_pipe2 = internal global i32 0, align 4
@UV__O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@UV__F_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__make_pipe(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @uv__make_pipe.no_pipe2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %25

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UV__O_CLOEXEC, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @uv__pipe2(i32* %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %9
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOSYS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @UV__ERR(i64 %22)
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %17
  store i32 1, i32* @uv__make_pipe.no_pipe2, align 4
  br label %25

25:                                               ; preds = %24, %8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @pipe(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @UV__ERR(i64 %30)
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @uv__cloexec(i32 %35, i32 1)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uv__cloexec(i32 %39, i32 1)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @UV__F_NONBLOCK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @uv__nonblock(i32 %48, i32 1)
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @uv__nonblock(i32 %52, i32 1)
  br label %54

54:                                               ; preds = %45, %32
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %29, %21, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @uv__pipe2(i32*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local i32 @uv__nonblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
