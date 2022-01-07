; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__get_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@UV_ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32**)* @uv__get_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__get_handle(i64 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = call i32* (...) @GetCurrentProcess()
  %13 = load i32**, i32*** %7, align 8
  store i32* %12, i32** %13, align 8
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32* @OpenProcess(i32 %15, i32 %16, i64 %17)
  %19 = load i32**, i32*** %7, align 8
  store i32* %18, i32** %19, align 8
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = call i32 (...) @GetLastError()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @UV_ESRCH, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @uv_translate_sys_error(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31, %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @GetCurrentProcess(...) #1

declare dso_local i32* @OpenProcess(i32, i32, i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
