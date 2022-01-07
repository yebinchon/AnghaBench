; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_setters.c_test_repo_setters__setting_a_workdir_creates_a_gitlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_setters.c_test_repo_setters__setting_a_workdir_creates_a_gitlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"./new_workdir\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"./new_workdir/.git\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gitdir: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"testrepo.git/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"new_workdir/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_setters__setting_a_workdir_creates_a_gitlink() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @repo, align 4
  %7 = call i32 @git_repository_set_workdir(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_path_isfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @git_futils_readbuffer(i32* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_buf_cstr(i32* %3)
  %14 = call i64 @git__prefixcmp(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = call i32 @git_buf_cstr(i32* %3)
  %19 = call i64 @git__suffixcmp(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = call i32 @git_buf_dispose(i32* %3)
  %24 = load i32, i32* @repo, align 4
  %25 = call i32 @git_repository_config(i32** %1, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_config_get_string_buf(i32* %2, i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_buf_cstr(i32* %2)
  %31 = call i64 @git__suffixcmp(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = call i32 @git_buf_dispose(i32* %2)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_config_free(i32* %36)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_set_workdir(i32, i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @git_futils_readbuffer(i32*, i8*) #1

declare dso_local i64 @git__prefixcmp(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i64 @git__suffixcmp(i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
