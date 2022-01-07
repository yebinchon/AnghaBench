; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_error.c_git_win32_get_error_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_error.c_git_win32_get_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@WINHTTP_ERROR_BASE = common dso_local global i32 0, align 4
@WINHTTP_ERROR_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_win32_get_error_message(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %9 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @GIT_UNUSED(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @LANG_NEUTRAL, align 4
  %32 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %33 = call i32 @MAKELANGID(i32 %31, i32 %32)
  %34 = bitcast i32** %4 to i32*
  %35 = call i64 @FormatMessageW(i32 %28, i32* %29, i32 %30, i32 %33, i32* %34, i32 0, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @git__utf16_to_8_alloc(i8** %6, i32* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* null, i8** %6, align 8
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @LocalFree(i32* %43)
  br label %45

45:                                               ; preds = %42, %27
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i64 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i64 @git__utf16_to_8_alloc(i8**, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
