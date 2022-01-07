; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__workdir1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__workdir1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@str1 = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_PATHSPEC_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_PATHSPEC_USE_CASE = common dso_local global i32 0, align 4
@GIT_PATHSPEC_NO_MATCH_ERROR = common dso_local global i32 0, align 4
@GIT_PATHSPEC_FIND_FAILURES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_pathspec__workdir1() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @str1, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @str1, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = call i32 @git_pathspec_new(i32** %2, %struct.TYPE_3__* %1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32, i32* @GIT_PATHSPEC_IGNORE_CASE, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %11, i32 %12, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_pathspec_match_list_entrycount(i32* %16)
  %18 = call i32 @cl_assert_equal_sz(i32 10, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_pathspec_match_list_free(i32* %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32, i32* @GIT_PATHSPEC_USE_CASE, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %21, i32 %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_pathspec_match_list_entrycount(i32* %26)
  %28 = call i32 @cl_assert_equal_sz(i32 0, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_pathspec_match_list_free(i32* %29)
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32, i32* @GIT_PATHSPEC_USE_CASE, align 4
  %33 = load i32, i32* @GIT_PATHSPEC_NO_MATCH_ERROR, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %31, i32 %34, i32* %35)
  %37 = call i32 @cl_git_fail(i32 %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32, i32* @GIT_PATHSPEC_IGNORE_CASE, align 4
  %40 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %38, i32 %41, i32* %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_pathspec_match_list_entrycount(i32* %45)
  %47 = call i32 @cl_assert_equal_sz(i32 10, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %48)
  %50 = call i32 @cl_assert_equal_sz(i32 1, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @git_pathspec_match_list_free(i32* %51)
  %53 = load i32, i32* @g_repo, align 4
  %54 = load i32, i32* @GIT_PATHSPEC_USE_CASE, align 4
  %55 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %53, i32 %56, i32* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_pathspec_match_list_entrycount(i32* %60)
  %62 = call i32 @cl_assert_equal_sz(i32 0, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %63)
  %65 = call i32 @cl_assert_equal_sz(i32 3, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @git_pathspec_match_list_free(i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @git_pathspec_free(i32* %68)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @git_pathspec_match_workdir(i32**, i32, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_pathspec_match_list_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_free(i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_pathspec_match_list_failed_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
