; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__backslashes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__backslashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"..\\submod2_target\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"submod2/.gitmodules\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"submodule.sm_unchanged.url\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_lookup__backslashes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %6, i32* %4, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @git_config_set_string(i32* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_config_free(i32* %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_submodule_lookup(i32** %2, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_submodule_url(i32* %19)
  %21 = call i32 @cl_assert_equal_s(i8* %18, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_submodule_open(i32** %3, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @git_submodule_resolve_url(i32* %4, i32 %25, i8* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_buf_dispose(i32* %4)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_submodule_free(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @git_repository_free(i32* %32)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_submodule_url(i32*) #1

declare dso_local i32 @git_submodule_open(i32**, i32*) #1

declare dso_local i32 @git_submodule_resolve_url(i32*, i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
