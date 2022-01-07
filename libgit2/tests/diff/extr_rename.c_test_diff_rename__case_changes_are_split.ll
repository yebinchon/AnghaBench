; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__case_changes_are_split.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__case_changes_are_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"renames/ikeepsix.txt\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"renames/IKEEPSIX.txt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"IKEEPSIX.txt\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__case_changes_are_split() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  store i32* null, i32** %3, align 8
  %6 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_repository_index(i32** %1, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_revparse_single(i32** %2, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_index_remove_bypath(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_index_add_bypath(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_index_write(i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_diff_tree_to_index(i32** %3, i32 %24, i32* %25, i32* %26, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @diff_file_cb, align 4
  %32 = load i32, i32* @diff_binary_cb, align 4
  %33 = load i32, i32* @diff_hunk_cb, align 4
  %34 = load i32, i32* @diff_line_cb, align 4
  %35 = call i32 @git_diff_foreach(i32* %30, i32 %31, i32 %32, i32 %33, i32 %34, %struct.TYPE_8__* %4)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cl_assert_equal_i(i32 2, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i32 1, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 1, i32 %50)
  %52 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_diff_find_similar(i32* %54, %struct.TYPE_7__* %5)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @diff_file_cb, align 4
  %60 = load i32, i32* @diff_binary_cb, align 4
  %61 = load i32, i32* @diff_hunk_cb, align 4
  %62 = load i32, i32* @diff_line_cb, align 4
  %63 = call i32 @git_diff_foreach(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62, %struct.TYPE_8__* %4)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cl_assert_equal_i(i32 1, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_i(i32 1, i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @git_diff_free(i32* %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @git_index_free(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @git_tree_free(i32* %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @p_rename(i8*, i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
