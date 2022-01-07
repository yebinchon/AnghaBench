; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_lookup.c_test_refs_branches_lookup__trying_to_retrieve_a_branch_with_an_invalid_name_returns_EINVALIDSPEC.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_lookup.c_test_refs_branches_lookup__trying_to_retrieve_a_branch_with_an_invalid_name_returns_EINVALIDSPEC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@branch = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"are/you/inv@{id\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"yes/i am\00", align 1
@GIT_BRANCH_REMOTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"inv al/id\00", align 1
@GIT_BRANCH_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_lookup__trying_to_retrieve_a_branch_with_an_invalid_name_returns_EINVALIDSPEC() #0 {
  %1 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %2 = load i32, i32* @repo, align 4
  %3 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %4 = call i32 @git_branch_lookup(i32* @branch, i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i32 @cl_assert_equal_i(i32 %1, i32 %4)
  %6 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %7 = load i32, i32* @repo, align 4
  %8 = load i32, i32* @GIT_BRANCH_REMOTE, align 4
  %9 = call i32 @git_branch_lookup(i32* @branch, i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call i32 @cl_assert_equal_i(i32 %6, i32 %9)
  %11 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %12 = load i32, i32* @repo, align 4
  %13 = load i32, i32* @GIT_BRANCH_ALL, align 4
  %14 = call i32 @git_branch_lookup(i32* @branch, i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = call i32 @cl_assert_equal_i(i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_branch_lookup(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
