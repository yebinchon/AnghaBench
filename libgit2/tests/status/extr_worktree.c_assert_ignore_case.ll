; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_assert_ignore_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_assert_ignore_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dummy-marker.txt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"plop\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"./empty_standard_repo\00", align 1
@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Plop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @assert_ignore_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_ignore_case(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %9, align 4
  %14 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @git_repository_path(i32* %15)
  %17 = call i32 @cl_git_remove_placeholders(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cl_repo_set_bool(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @git_repository_workdir(i32* %21)
  %23 = call i32 @git_buf_joinpath(i32* %8, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_buf_cstr(i32* %8)
  %26 = call i32 @cl_git_mkfile(i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @stage_and_commit(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @git_repository_open(i32** %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @git_status_file(i32* %7, i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @cl_assert_equal_i(i32 %34, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @git_repository_workdir(i32* %37)
  %39 = call i32 @git_buf_joinpath(i32* %9, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @git_buf_cstr(i32* %8)
  %42 = call i32 @git_buf_cstr(i32* %9)
  %43 = call i32 @p_rename(i32 %41, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @git_status_file(i32* %7, i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cl_assert_equal_i(i32 %48, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @git_status_file(i32* %7, i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @cl_assert_equal_i(i32 %54, i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @git_repository_free(i32* %57)
  %59 = call i32 @git_buf_dispose(i32* %8)
  %60 = call i32 @git_buf_dispose(i32* %9)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_remove_placeholders(i32, i8*) #1

declare dso_local i32 @git_repository_path(i32*) #1

declare dso_local i32 @cl_repo_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_workdir(i32*) #1

declare dso_local i32 @cl_git_mkfile(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @stage_and_commit(i32*, i8*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_status_file(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @p_rename(i32, i32) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
