; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__bare_repo_escaping_current_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__bare_repo_escaping_current_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a/b/c\00", align 1
@GIT_DIR_MODE = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"../d/e.git\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/a/b/d/e.git/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__bare_repo_escaping_current_workdir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = call i32 @git_path_prettify_dir(i32* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_buf_cstr(i32* %2)
  %8 = call i32 @git_buf_joinpath(i32* %1, i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_buf_cstr(i32* %1)
  %11 = load i32, i32* @GIT_DIR_MODE, align 4
  %12 = call i32 @git_futils_mkdir_r(i32 %10, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_buf_cstr(i32* %1)
  %15 = call i32 @chdir(i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_repository_init(i32* @_repo, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @_repo, align 4
  %20 = call i32 @git_repository_path(i32 %19)
  %21 = call i32 @git__suffixcmp(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @_repo, align 4
  %24 = call i32 @git_repository_free(i32 %23)
  %25 = call i32 @git_repository_open(i32* @_repo, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_buf_cstr(i32* %2)
  %28 = call i32 @chdir(i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_buf_dispose(i32* %2)
  %31 = call i32 @git_buf_dispose(i32* %1)
  %32 = call i32 @cleanup_repository(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_path_prettify_dir(i32*, i8*, i32*) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_futils_mkdir_r(i32, i32) #1

declare dso_local i32 @chdir(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @git__suffixcmp(i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @git_repository_free(i32) #1

declare dso_local i32 @git_repository_open(i32*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @cleanup_repository(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
