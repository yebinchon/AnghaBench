; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__tree5.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__tree5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@str5 = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HEAD~2^{tree}\00", align 1
@GIT_PATHSPEC_USE_CASE = common dso_local global i32 0, align 4
@GIT_PATHSPEC_FIND_FAILURES = common dso_local global i32 0, align 4
@GIT_PATHSPEC_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"staged_changes\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"staged_delete_modified_file\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"subdir.txt\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"subdir/current_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_pathspec__tree5() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @str5, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @str5, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = call i32 @git_pathspec_new(i32** %3, %struct.TYPE_3__* %2)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_revparse_single(i32** %1, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @GIT_PATHSPEC_USE_CASE, align 4
  %17 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %18 = or i32 %16, %17
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_pathspec_match_tree(i32** %4, i32* %15, i32 %18, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_pathspec_match_list_entrycount(i32* %22)
  %24 = call i32 @cl_assert_equal_sz(i32 0, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %25)
  %27 = call i32 @cl_assert_equal_sz(i32 1, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @git_pathspec_match_list_free(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @GIT_PATHSPEC_IGNORE_CASE, align 4
  %32 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_pathspec_match_tree(i32** %4, i32* %30, i32 %33, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_pathspec_match_list_entrycount(i32* %37)
  %39 = call i32 @cl_assert_equal_sz(i32 5, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @git_pathspec_match_list_entry(i32* %40, i32 0)
  %42 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_pathspec_match_list_entry(i32* %43, i32 4)
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %46)
  %48 = call i32 @cl_assert_equal_sz(i32 0, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @git_pathspec_match_list_free(i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_object_free(i32* %51)
  %53 = load i32, i32* @g_repo, align 4
  %54 = call i32 @git_revparse_single(i32** %1, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @GIT_PATHSPEC_IGNORE_CASE, align 4
  %58 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_pathspec_match_tree(i32** %4, i32* %56, i32 %59, i32* %60)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @git_pathspec_match_list_entrycount(i32* %63)
  %65 = call i32 @cl_assert_equal_sz(i32 9, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @git_pathspec_match_list_entry(i32* %66, i32 0)
  %68 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @git_pathspec_match_list_entry(i32* %69, i32 5)
  %71 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @git_pathspec_match_list_entry(i32* %72, i32 6)
  %74 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %75)
  %77 = call i32 @cl_assert_equal_sz(i32 0, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @git_pathspec_match_list_free(i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_object_free(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @git_pathspec_free(i32* %82)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @git_pathspec_match_tree(i32**, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_pathspec_match_list_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_failed_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_free(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_pathspec_match_list_entry(i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
