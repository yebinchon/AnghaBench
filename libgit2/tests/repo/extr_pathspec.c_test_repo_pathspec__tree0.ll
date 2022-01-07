; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__tree0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__tree0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@str0 = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HEAD~2^{tree}\00", align 1
@GIT_PATHSPEC_FIND_FAILURES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"staged_delete_modified_file\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"new_file\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"subdir/current_file\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"subdir/deleted_file\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"subdir/modified_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_pathspec__tree0() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @str0, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @str0, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = call i32 @git_pathspec_new(i32** %3, %struct.TYPE_3__* %2)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_revparse_single(i32** %1, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_pathspec_match_tree(i32** %4, i32* %15, i32 %16, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_pathspec_match_list_entrycount(i32* %20)
  %22 = call i32 @cl_assert_equal_sz(i32 4, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_pathspec_match_list_entry(i32* %23, i32 0)
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_pathspec_match_list_entry(i32* %26, i32 1)
  %28 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_pathspec_match_list_entry(i32* %29, i32 2)
  %31 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_pathspec_match_list_entry(i32* %32, i32 3)
  %34 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @git_pathspec_match_list_entry(i32* %35, i32 4)
  %37 = call i32 @cl_assert_equal_s(i8* null, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %38)
  %40 = call i32 @cl_assert_equal_sz(i32 2, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @git_pathspec_match_list_failed_entry(i32* %41, i32 0)
  %43 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @git_pathspec_match_list_failed_entry(i32* %44, i32 1)
  %46 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_pathspec_match_list_failed_entry(i32* %47, i32 2)
  %49 = call i32 @cl_assert_equal_s(i8* null, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_pathspec_match_list_free(i32* %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_object_free(i32* %52)
  %54 = load i32, i32* @g_repo, align 4
  %55 = call i32 @git_revparse_single(i32** %1, i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_pathspec_match_tree(i32** %4, i32* %57, i32 %58, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @git_pathspec_match_list_entrycount(i32* %62)
  %64 = call i32 @cl_assert_equal_sz(i32 7, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @git_pathspec_match_list_entry(i32* %65, i32 0)
  %67 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @git_pathspec_match_list_entry(i32* %68, i32 1)
  %70 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @git_pathspec_match_list_entry(i32* %71, i32 2)
  %73 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @git_pathspec_match_list_entry(i32* %74, i32 3)
  %76 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @git_pathspec_match_list_entry(i32* %77, i32 4)
  %79 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @git_pathspec_match_list_entry(i32* %80, i32 5)
  %82 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @git_pathspec_match_list_entry(i32* %83, i32 6)
  %85 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @git_pathspec_match_list_entry(i32* %86, i32 7)
  %88 = call i32 @cl_assert_equal_s(i8* null, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %89)
  %91 = call i32 @cl_assert_equal_sz(i32 2, i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @git_pathspec_match_list_failed_entry(i32* %92, i32 0)
  %94 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @git_pathspec_match_list_failed_entry(i32* %95, i32 1)
  %97 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @git_pathspec_match_list_failed_entry(i32* %98, i32 2)
  %100 = call i32 @cl_assert_equal_s(i8* null, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @git_pathspec_match_list_free(i32* %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @git_object_free(i32* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @git_pathspec_free(i32* %105)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @git_pathspec_match_tree(i32**, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_pathspec_match_list_entrycount(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_pathspec_match_list_entry(i32*, i32) #1

declare dso_local i32 @git_pathspec_match_list_failed_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_failed_entry(i32*, i32) #1

declare dso_local i32 @git_pathspec_match_list_free(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
