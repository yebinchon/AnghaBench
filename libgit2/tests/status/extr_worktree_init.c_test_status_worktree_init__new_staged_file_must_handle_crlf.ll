; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__new_staged_file_must_handle_crlf.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree_init.c_test_status_worktree_init__new_staged_file_must_handle_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_new_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"getting_started\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"getting_started/testfile.txt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"content\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree_init__new_staged_file_must_handle_crlf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @cl_set_cleanup(i32* @cleanup_new_repo, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @cl_repo_set_bool(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_repository_index(i32** %2, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_index_add_bypath(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_index_write(i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_status_file(i32* %3, i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @cl_assert_equal_i(i32 %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_free(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_free(i32* %27)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @cl_repo_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_status_file(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
