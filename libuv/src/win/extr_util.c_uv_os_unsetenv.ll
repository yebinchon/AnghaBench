; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_unsetenv.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_unsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_unsetenv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @UV_EINVAL, align 4
  store i32 %9, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @uv__convert_utf8_to_utf16(i8* %11, i32 -1, i32** %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @SetEnvironmentVariableW(i32* %18, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @uv__free(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @uv_translate_sys_error(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24, %15, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @uv__convert_utf8_to_utf16(i8*, i32, i32**) #1

declare dso_local i32 @SetEnvironmentVariableW(i32*, i32*) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
