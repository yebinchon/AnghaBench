; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__status_file_without_index_or_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__status_file_without_index_or_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wd\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"empty-index\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"branch_file.txt\00", align 1
@GIT_STATUS_INDEX_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree_init__status_file_without_index_or_workdir() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 511)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @git_repository_open(i32** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_repository_set_workdir(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_index_open(i32** %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @git_index_entrycount(i32* %14)
  %16 = trunc i64 %15 to i32
  %17 = call i32 @cl_assert_equal_i(i32 0, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_repository_set_index(i32* %18, i32* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_status_file(i32* %2, i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @GIT_STATUS_INDEX_DELETED, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @cl_assert_equal_i(i32 %24, i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_free(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_index_free(i32* %29)
  %31 = call i32 @p_rmdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_repository_set_workdir(i32*, i8*, i32) #1

declare dso_local i32 @git_index_open(i32**, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i32 @git_repository_set_index(i32*, i32*) #1

declare dso_local i32 @git_status_file(i32*, i32*, i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @p_rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
