; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__additional_templates.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__additional_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@cleanup_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tester\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tester/.git/\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tester/\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"info/exclude\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hooks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__additional_templates() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @ensure_repository_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_repository_path(i32 %5)
  %7 = call i32 @git_buf_joinpath(i32* %1, i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_buf_cstr(i32* %1)
  %10 = call i32 @git_path_isfile(i32 %9)
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32, i32* @_repo, align 4
  %13 = call i32 @git_repository_path(i32 %12)
  %14 = call i32 @git_buf_joinpath(i32* %1, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_buf_cstr(i32* %1)
  %17 = call i32 @git_path_isfile(i32 %16)
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32, i32* @_repo, align 4
  %20 = call i32 @git_repository_path(i32 %19)
  %21 = call i32 @git_buf_joinpath(i32* %1, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_buf_cstr(i32* %1)
  %24 = call i32 @git_path_isdir(i32 %23)
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @ensure_repository_init(i8*, i32, i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isfile(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_path_isdir(i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
