; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__cleans_up_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__cleans_up_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MERGE_HEAD\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"beefbeefbeefbeefbeefbeefbeefbeefbeefbeef\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MERGE_MSG\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Merge commit 0017bd4ab1ec30440b17bae1680cff124ab5f1f6\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MERGE_MODE\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ORIG_HEAD\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"0017bd4ab1ec30440b17bae1680cff124ab5f1f6\00", align 1
@target = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"0017bd4\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_hard__cleans_up_merge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_repository_path(i32 %9)
  %11 = call i32 @git_buf_joinpath(i32* %1, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_buf_cstr(i32* %1)
  %14 = call i32 @cl_git_mkfile(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_repository_path(i32 %15)
  %17 = call i32 @git_buf_joinpath(i32* %2, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_buf_cstr(i32* %2)
  %20 = call i32 @cl_git_mkfile(i32 %19, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @repo, align 4
  %22 = call i32 @git_repository_path(i32 %21)
  %23 = call i32 @git_buf_joinpath(i32* %3, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_buf_cstr(i32* %3)
  %26 = call i32 @cl_git_mkfile(i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @repo, align 4
  %28 = call i32 @git_repository_path(i32 %27)
  %29 = call i32 @git_buf_joinpath(i32* %4, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_buf_cstr(i32* %4)
  %32 = call i32 @cl_git_mkfile(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %33 = load i32, i32* @repo, align 4
  %34 = call i32 @git_revparse_single(i32* @target, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @repo, align 4
  %37 = load i32, i32* @target, align 4
  %38 = load i32, i32* @GIT_RESET_HARD, align 4
  %39 = call i32 @git_reset(i32 %36, i32 %37, i32 %38, i32* null)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @git_buf_cstr(i32* %1)
  %42 = call i32 @git_path_exists(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @cl_assert(i32 %45)
  %47 = call i32 @git_buf_cstr(i32* %2)
  %48 = call i32 @git_path_exists(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = call i32 @git_buf_cstr(i32* %3)
  %54 = call i32 @git_path_exists(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  %59 = call i32 @git_buf_cstr(i32* %4)
  %60 = call i32 @git_path_exists(i32 %59)
  %61 = call i32 @cl_assert(i32 %60)
  %62 = call i32 @git_buf_cstr(i32* %4)
  %63 = call i32 @p_unlink(i32 %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = call i32 @git_buf_dispose(i32* %1)
  %66 = call i32 @git_buf_dispose(i32* %2)
  %67 = call i32 @git_buf_dispose(i32* %3)
  %68 = call i32 @git_buf_dispose(i32* %4)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @cl_git_mkfile(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i32) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
