; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__retrieve_a_remote_tracking_reference_from_a_branch_with_no_remote_returns_GIT_ENOTFOUND.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__retrieve_a_remote_tracking_reference_from_a_branch_with_no_remote_returns_GIT_ENOTFOUND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"remoteless\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mergeless\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mergeandremoteless\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_upstream__retrieve_a_remote_tracking_reference_from_a_branch_with_no_remote_returns_GIT_ENOTFOUND() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @git_repository_head(i32** %1, i32* %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %10 = call i32 @git_reference_peel(i32** %3, i32* %8, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_reference_free(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @assert_merge_and_or_remote_key_missing(i32* %14, i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @assert_merge_and_or_remote_key_missing(i32* %17, i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @assert_merge_and_or_remote_key_missing(i32* %20, i32* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_commit_free(i32* %23)
  %25 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32*) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @assert_merge_and_or_remote_key_missing(i32*, i32*, i8*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
