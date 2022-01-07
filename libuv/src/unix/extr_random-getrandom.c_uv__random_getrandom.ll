; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_random-getrandom.c_uv__random_getrandom.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_random-getrandom.c_uv__random_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@UV_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__random_getrandom(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @uv__random_getrandom_init()
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 256
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 256, i64* %6, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @uv__getrandom(i8* %30, i64 %31, i32 0)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %20, label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 @UV__ERR(i64 %46)
  store i32 %47, i32* %3, align 4
  br label %59

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @UV_EIO, align 4
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %7, align 8
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %51, %45, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @uv__random_getrandom_init(...) #1

declare dso_local i64 @uv__getrandom(i8*, i64, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
