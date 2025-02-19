; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_open.c_test_worktree_open__repository_with_nonexistent_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_open.c_test_worktree_open__repository_with_nonexistent_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fixture = common dso_local global i32 0, align 4
@WORKTREE_REPO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c".gitted\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_open__repository_with_nonexistent_parent() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cleanup_fixture_worktree(i32* @fixture)
  %3 = load i8*, i8** @WORKTREE_REPO, align 8
  %4 = call i32 @cl_fixture_sandbox(i8* %3)
  %5 = load i8*, i8** @WORKTREE_REPO, align 8
  %6 = call i32 @p_chdir(i8* %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @cl_rename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @p_chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i8*, i8** @WORKTREE_REPO, align 8
  %13 = call i32 @git_repository_open(i32** %1, i8* %12)
  %14 = call i32 @cl_git_fail(i32 %13)
  %15 = load i8*, i8** @WORKTREE_REPO, align 8
  %16 = call i32 @cl_fixture_cleanup(i8* %15)
  ret void
}

declare dso_local i32 @cleanup_fixture_worktree(i32*) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_chdir(i8*) #1

declare dso_local i32 @cl_rename(i8*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
