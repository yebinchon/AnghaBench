; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__index0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__index0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@g_repo = common dso_local global i32 0, align 4
@str0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"staged_new_file\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"staged_new_file_deleted_file\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"staged_new_file_modified_file\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"subdir/current_file\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"subdir/deleted_file\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"subdir/modified_file\00", align 1
@GIT_PATHSPEC_FIND_FAILURES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"new_file\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_pathspec__index0() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_index(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @str0, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @str0, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = call i32 @git_pathspec_new(i32** %3, %struct.TYPE_3__* %2)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_pathspec_match_index(i32** %4, i32* %15, i32 0, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_pathspec_match_list_entrycount(i32* %19)
  %21 = call i32 @cl_assert_equal_sz(i32 9, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %22)
  %24 = call i32 @cl_assert_equal_sz(i32 0, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_pathspec_match_list_entry(i32* %25, i32 0)
  %27 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @git_pathspec_match_list_entry(i32* %28, i32 1)
  %30 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_pathspec_match_list_entry(i32* %31, i32 2)
  %33 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_pathspec_match_list_entry(i32* %34, i32 3)
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_pathspec_match_list_entry(i32* %37, i32 4)
  %39 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @git_pathspec_match_list_entry(i32* %40, i32 5)
  %42 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_pathspec_match_list_entry(i32* %43, i32 6)
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_pathspec_match_list_entry(i32* %46, i32 7)
  %48 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @git_pathspec_match_list_entry(i32* %49, i32 8)
  %51 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @git_pathspec_match_list_entry(i32* %52, i32 9)
  %54 = call i32 @cl_assert_equal_s(i8* null, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_pathspec_match_list_free(i32* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_pathspec_match_index(i32** %4, i32* %57, i32 %58, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @git_pathspec_match_list_entrycount(i32* %62)
  %64 = call i32 @cl_assert_equal_sz(i32 9, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %65)
  %67 = call i32 @cl_assert_equal_sz(i32 2, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @git_pathspec_match_list_failed_entry(i32* %68, i32 0)
  %70 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @git_pathspec_match_list_failed_entry(i32* %71, i32 1)
  %73 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @git_pathspec_match_list_failed_entry(i32* %74, i32 2)
  %76 = call i32 @cl_assert_equal_s(i8* null, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @git_pathspec_match_list_free(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @git_pathspec_free(i32* %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_index_free(i32* %81)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @git_pathspec_match_index(i32**, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_pathspec_match_list_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_failed_entrycount(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_pathspec_match_list_entry(i32*, i32) #1

declare dso_local i32 @git_pathspec_match_list_free(i32*) #1

declare dso_local i32 @git_pathspec_match_list_failed_entry(i32*, i32) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
