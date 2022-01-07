; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_p_realpath.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_p_realpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_WIN_PATH_UTF16 = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GIT_WIN_PATH_UTF8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @p_realpath(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @git_win32_path_from_utf8(i32 %8, i8* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %54

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GIT_WIN_PATH_UTF16, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GetFullPathNameW(i32 %14, i32 %15, i32 %16, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %24, i32* @errno, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  br label %27

27:                                               ; preds = %25, %23
  store i8* null, i8** %3, align 8
  br label %54

28:                                               ; preds = %13
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @GetFileAttributesW(i32 %29)
  %31 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %54

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @GIT_WIN_PATH_UTF8, align 4
  %40 = call i8* @git__malloc(i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %54

44:                                               ; preds = %38, %35
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @git_win32_path_to_utf8(i8* %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %54

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @git_path_mkposix(i8* %51)
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %50, %49, %42, %33, %27, %12
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #1

declare dso_local i32 @GetFullPathNameW(i32, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @GetFileAttributesW(i32) #1

declare dso_local i8* @git__malloc(i32) #1

declare dso_local i64 @git_win32_path_to_utf8(i8*, i32) #1

declare dso_local i32 @git_path_mkposix(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
