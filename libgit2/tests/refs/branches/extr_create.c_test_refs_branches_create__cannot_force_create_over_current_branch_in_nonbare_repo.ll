; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_create.c_test_refs_branches_create__cannot_force_create_over_current_branch_in_nonbare_repo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_create.c_test_refs_branches_create__cannot_force_create_over_current_branch_in_nonbare_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@repo = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@branch = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_create__cannot_force_create_over_current_branch_in_nonbare_repo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @cl_git_sandbox_cleanup()
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @repo, align 4
  %5 = load i32, i32* @repo, align 4
  %6 = call i32 @retrieve_known_commit(i32* @target, i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %9 = call i32 @git_branch_lookup(i32** %2, i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_reference_name(i32* %11)
  %13 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_branch_is_head(i32* %14)
  %16 = call i32 @cl_assert_equal_i(i32 1, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @git_reference_target(i32* %17)
  store i32* %18, i32** %1, align 8
  %19 = load i32, i32* @repo, align 4
  %20 = load i32, i32* @target, align 4
  %21 = call i32 @git_branch_create(i32** @branch, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 1)
  %22 = call i32 @cl_git_fail_with(i32 -1, i32 %21)
  store i32* null, i32** @branch, align 8
  %23 = load i32, i32* @repo, align 4
  %24 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %25 = call i32 @git_branch_lookup(i32** @branch, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** @branch, align 8
  %28 = call i32 @git_reference_name(i32* %27)
  %29 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** @branch, align 8
  %31 = call i32* @git_reference_target(i32* %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_oid_cmp(i32* %31, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_reference_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @retrieve_known_commit(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_branch_is_head(i32*) #1

declare dso_local i32* @git_reference_target(i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_branch_create(i32**, i32, i8*, i32, i32) #1

declare dso_local i32 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
