; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__file_status_honors_case_ignorecase_regarding_untracked_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__file_status_honors_case_ignorecase_regarding_untracked_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NEW_FILE\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"new_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__file_status_honors_case_ignorecase_regarding_untracked_files() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @cl_repo_set_bool(i32* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %7 = call i32* (...) @cl_git_sandbox_reopen()
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_status_file(i32* %2, i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @GIT_ENOTFOUND, align 4
  %11 = call i32 @cl_git_fail_with(i32 %9, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_repository_index(i32** %3, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_index_add_bypath(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_index_write(i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_index_free(i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_status_file(i32* %2, i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @GIT_ENOTFOUND, align 4
  %26 = call i32 @cl_git_fail_with(i32 %24, i32 %25)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_repo_set_bool(i32*, i8*, i32) #1

declare dso_local i32* @cl_git_sandbox_reopen(...) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_status_file(i32*, i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
