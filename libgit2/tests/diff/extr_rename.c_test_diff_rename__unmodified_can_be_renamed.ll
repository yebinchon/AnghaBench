; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__unmodified_can_be_renamed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__unmodified_can_be_renamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"renames/ikeepsix.txt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"renames/ikeepsix2.txt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ikeepsix2.txt\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__unmodified_can_be_renamed() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  store i32* null, i32** %3, align 8
  %7 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %7, i32* %5, align 4
  %8 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_repository_index(i32** %1, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_revparse_single(i32** %2, i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_index_remove_bypath(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_index_add_bypath(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_index_write(i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_diff_tree_to_index(i32** %3, i32 %26, i32* %27, i32* %28, i32* %5)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @diff_file_cb, align 4
  %34 = load i32, i32* @diff_binary_cb, align 4
  %35 = load i32, i32* @diff_hunk_cb, align 4
  %36 = load i32, i32* @diff_line_cb, align 4
  %37 = call i32 @git_diff_foreach(i32* %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.TYPE_8__* %4)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cl_assert_equal_i(i32 2, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 1, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_i(i32 1, i32 %52)
  %54 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @git_diff_find_similar(i32* %56, %struct.TYPE_7__* %6)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @diff_file_cb, align 4
  %62 = load i32, i32* @diff_binary_cb, align 4
  %63 = load i32, i32* @diff_hunk_cb, align 4
  %64 = load i32, i32* @diff_line_cb, align 4
  %65 = call i32 @git_diff_foreach(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, %struct.TYPE_8__* %4)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @cl_assert_equal_i(i32 1, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 1, i32 %74)
  %76 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 16)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @diff_file_cb, align 4
  %79 = load i32, i32* @diff_binary_cb, align 4
  %80 = load i32, i32* @diff_hunk_cb, align 4
  %81 = load i32, i32* @diff_line_cb, align 4
  %82 = call i32 @git_diff_foreach(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, %struct.TYPE_8__* %4)
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cl_assert_equal_i(i32 1, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @cl_assert_equal_i(i32 1, i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @git_diff_free(i32* %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_index_free(i32* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @git_tree_free(i32* %97)
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
