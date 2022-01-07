; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__can_delete_a_branch_pointed_at_by_detached_HEAD.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__can_delete_a_branch_pointed_at_by_detached_HEAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_delete__can_delete_a_branch_pointed_at_by_detached_HEAD() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @repo, align 4
  %4 = load i32, i32* @GIT_HEAD_FILE, align 4
  %5 = call i32 @git_reference_lookup(i32** %1, i32 %3, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_reference_type(i32* %8)
  %10 = call i32 @cl_assert_equal_i(i32 %7, i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_reference_symbolic_target(i32* %11)
  %13 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_reference_free(i32* %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_repository_detach_head(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %20 = call i32 @git_branch_lookup(i32** %2, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_branch_delete(i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_reference_free(i32* %25)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reference_type(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_repository_detach_head(i32) #1

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #1

declare dso_local i32 @git_branch_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
