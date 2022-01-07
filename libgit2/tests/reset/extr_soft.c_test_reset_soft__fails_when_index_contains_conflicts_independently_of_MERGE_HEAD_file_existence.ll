; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__fails_when_index_contains_conflicts_independently_of_MERGE_HEAD_file_existence.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__fails_when_index_contains_conflicts_independently_of_MERGE_HEAD_file_existence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mergedrepo\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"MERGE_HEAD\00", align 1
@target = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@GIT_RESET_SOFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_soft__fails_when_index_contains_conflicts_independently_of_MERGE_HEAD_file_existence() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @cl_git_sandbox_cleanup()
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @repo, align 4
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_repository_path(i32 %7)
  %9 = call i32 @git_buf_joinpath(i32* %3, i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_buf_cstr(i32* %3)
  %12 = call i32 @p_unlink(i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_buf_dispose(i32* %3)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_repository_index(i32** %1, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_index_has_conflicts(i32* %18)
  %20 = call i32 @cl_assert_equal_i(i32 1, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_index_free(i32* %21)
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_repository_head(i32** %2, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %28 = call i32 @git_reference_peel(i32* @target, i32* %26, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_reference_free(i32* %30)
  %32 = load i32, i32* @GIT_EUNMERGED, align 4
  %33 = load i32, i32* @repo, align 4
  %34 = load i32, i32* @target, align 4
  %35 = load i32, i32* @GIT_RESET_SOFT, align 4
  %36 = call i32 @git_reset(i32 %33, i32 %34, i32 %35, i32* null)
  %37 = call i32 @cl_assert_equal_i(i32 %32, i32 %36)
  ret void
}

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_has_conflicts(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32*, i32*, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
