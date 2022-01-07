; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_print.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@diff_print_patch_file = common dso_local global i32* null, align 8
@diff_print_patch_binary = common dso_local global i32* null, align 8
@diff_print_patch_hunk = common dso_local global i32* null, align 8
@diff_print_patch_line = common dso_local global i32* null, align 8
@diff_print_one_raw = common dso_local global i32* null, align 8
@diff_print_one_name_only = common dso_local global i32* null, align 8
@diff_print_one_name_status = common dso_local global i32* null, align 8
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unknown diff output format (%d)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"git_diff_print\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_print(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %11, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %32 [
    i32 130, label %19
    i32 129, label %24
    i32 128, label %26
    i32 132, label %28
    i32 131, label %30
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** @diff_print_patch_file, align 8
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** @diff_print_patch_binary, align 8
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** @diff_print_patch_hunk, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i32*, i32** @diff_print_patch_line, align 8
  store i32* %23, i32** %16, align 8
  br label %36

24:                                               ; preds = %4
  %25 = load i32*, i32** @diff_print_patch_file, align 8
  store i32* %25, i32** %13, align 8
  br label %36

26:                                               ; preds = %4
  %27 = load i32*, i32** @diff_print_one_raw, align 8
  store i32* %27, i32** %13, align 8
  br label %36

28:                                               ; preds = %4
  %29 = load i32*, i32** @diff_print_one_name_only, align 8
  store i32* %29, i32** %13, align 8
  br label %36

30:                                               ; preds = %4
  %31 = load i32*, i32** @diff_print_one_name_status, align 8
  store i32* %31, i32** %13, align 8
  br label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @git_error_set(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %5, align 4
  br label %59

36:                                               ; preds = %30, %28, %26, %24, %19
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @diff_print_info_init_fromdiff(i32* %12, i32* %11, i32* %37, i32 %38, i32* %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @git_diff_foreach(i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %12)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @git_error_set_after_callback_function(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %43
  br label %56

56:                                               ; preds = %55, %36
  %57 = call i32 @git_buf_dispose(i32* %11)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @diff_print_info_init_fromdiff(i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @git_diff_foreach(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_error_set_after_callback_function(i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
