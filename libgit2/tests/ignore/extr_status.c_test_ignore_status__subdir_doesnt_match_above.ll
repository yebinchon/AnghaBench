; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__subdir_doesnt_match_above.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__subdir_doesnt_match_above.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/src\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"empty_standard_repo/src/src\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"empty_standard_repo/src/.gitignore\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"src\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"src/test.txt\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"src/src/test.txt\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"src/foo/test.txt\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"SRC/src/test.txt\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"src/SRC/test.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__subdir_doesnt_match_above() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_config_snapshot(i32** %4, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @git_config_get_bool(i32* %2, i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @git_config_free(i32* %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @GIT_ENOTFOUND, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @p_mkdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @p_mkdir(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @cl_assert_equal_i(i32 0, i32 %29)
  %31 = load i32, i32* @g_repo, align 4
  %32 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @cl_assert_equal_i(i32 1, i32 %34)
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @cl_assert_equal_i(i32 0, i32 %39)
  %41 = load i32, i32* @g_repo, align 4
  %42 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @cl_assert_equal_i(i32 %44, i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @cl_assert_equal_i(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #1

declare dso_local i32 @git_config_get_bool(i32*, i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_ignore_path_is_ignored(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
