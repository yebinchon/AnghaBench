; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_hashfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_hashfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"file size overflow for 32-bit systems\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_hashfile(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @git_futils_open_ro(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @git_futils_filesize(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @git__is_sizet(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @GIT_ERROR_OS, align 4
  %27 = call i32 @git_error_set(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @p_close(i32 %28)
  store i32 -1, i32* %4, align 4
  br label %39

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @git_odb__hashfd(i32* %31, i32 %32, i64 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @p_close(i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %30, %25, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @git_futils_open_ro(i8*) #1

declare dso_local i64 @git_futils_filesize(i32) #1

declare dso_local i32 @git__is_sizet(i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @git_odb__hashfd(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
