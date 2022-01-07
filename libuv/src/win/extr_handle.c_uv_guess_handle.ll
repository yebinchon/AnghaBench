; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_handle.c_uv_guess_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_handle.c_uv_guess_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_UNKNOWN_HANDLE = common dso_local global i32 0, align 4
@UV_TTY = common dso_local global i32 0, align 4
@UV_FILE = common dso_local global i32 0, align 4
@UV_NAMED_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_guess_handle(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @uv__get_osfhandle(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GetFileType(i32 %13)
  switch i32 %14, label %27 [
    i32 130, label %15
    i32 128, label %23
    i32 129, label %25
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GetConsoleMode(i32 %16, i32* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @UV_TTY, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @UV_FILE, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %10
  %24 = load i32, i32* @UV_NAMED_PIPE, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %10
  %26 = load i32, i32* @UV_FILE, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @uv__get_osfhandle(i64) #1

declare dso_local i32 @GetFileType(i32) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
