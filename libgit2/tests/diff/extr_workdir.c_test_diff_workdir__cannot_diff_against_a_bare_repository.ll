; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__cannot_diff_against_a_bare_repository.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__cannot_diff_against_a_bare_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_EBAREREPO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__cannot_diff_against_a_bare_repository() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %4, i32* %1, align 4
  store i32* null, i32** %2, align 8
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @GIT_EBAREREPO, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %7, i32* null, i32* %1)
  %9 = call i32 @cl_assert_equal_i(i32 %6, i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_repository_head_tree(i32** %3, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @GIT_EBAREREPO, align 4
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_diff_tree_to_workdir(i32** %2, i32 %14, i32* %15, i32* %1)
  %17 = call i32 @cl_assert_equal_i(i32 %13, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_tree_free(i32* %18)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head_tree(i32**, i32) #1

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
