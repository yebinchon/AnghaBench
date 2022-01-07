; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_patch_print.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_patch_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@diff_print_patch_file = common dso_local global i32 0, align 4
@diff_print_patch_binary = common dso_local global i32 0, align 4
@diff_print_patch_hunk = common dso_local global i32 0, align 4
@diff_print_patch_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"git_patch_print\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_patch_print(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @diff_print_info_init_frompatch(i32* %9, i32* %8, i32* %20, i32 %21, i64 %22, i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @diff_print_patch_file, align 4
  %29 = load i32, i32* @diff_print_patch_binary, align 4
  %30 = load i32, i32* @diff_print_patch_hunk, align 4
  %31 = load i32, i32* @diff_print_patch_line, align 4
  %32 = call i32 @git_patch__invoke_callbacks(i32* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %9)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @git_error_set_after_callback_function(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38, %16
  %40 = call i32 @git_buf_dispose(i32* %8)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diff_print_info_init_frompatch(i32*, i32*, i32*, i32, i64, i8*) #1

declare dso_local i32 @git_patch__invoke_callbacks(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @git_error_set_after_callback_function(i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
