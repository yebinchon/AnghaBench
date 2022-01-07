; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv__duplicate_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv__duplicate_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**)* @uv__duplicate_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__duplicate_handle(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, inttoptr (i64 -2 to i32*)
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %12, %3
  %19 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %20 = load i32**, i32*** %7, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %15
  %23 = call i32* (...) @GetCurrentProcess()
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %30 = call i32 @DuplicateHandle(i32* %24, i32* %25, i32* %26, i32** %27, i32 0, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %34 = load i32**, i32*** %7, align 8
  store i32* %33, i32** %34, align 8
  %35 = call i32 (...) @GetLastError()
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %32, %18
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32* @GetCurrentProcess(...) #1

declare dso_local i32 @DuplicateHandle(i32*, i32*, i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
