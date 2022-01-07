; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__can_delete_unmodified_deltas.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__can_delete_unmodified_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_REMOVE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_COPIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__can_delete_unmodified_deltas() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %1, align 4
  %9 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %11 = call i32 @git_futils_readbuffer(i32* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_futils_writebuffer(i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_revparse_single(i32** %3, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_repository_index(i32** %2, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @git_index_read_tree(i32* %21, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_add_bypath(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_diff_tree_to_index(i32** %4, i32 %30, i32* %31, i32* %32, %struct.TYPE_10__* %5)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @memset(%struct.TYPE_12__* %7, i32 0, i32 16)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @diff_file_cb, align 4
  %38 = load i32, i32* @diff_binary_cb, align 4
  %39 = load i32, i32* @diff_hunk_cb, align 4
  %40 = load i32, i32* @diff_line_cb, align 4
  %41 = call i32 @git_diff_foreach(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, %struct.TYPE_12__* %7)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 4, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 1, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i32 3, i32 %56)
  %58 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %59 = load i32, i32* @GIT_DIFF_FIND_REMOVE_UNMODIFIED, align 4
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @git_diff_find_similar(i32* %62, %struct.TYPE_11__* %6)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = call i32 @memset(%struct.TYPE_12__* %7, i32 0, i32 16)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @diff_file_cb, align 4
  %68 = load i32, i32* @diff_binary_cb, align 4
  %69 = load i32, i32* @diff_hunk_cb, align 4
  %70 = load i32, i32* @diff_line_cb, align 4
  %71 = call i32 @git_diff_foreach(i32* %66, i32 %67, i32 %68, i32 %69, i32 %70, %struct.TYPE_12__* %7)
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cl_assert_equal_i(i32 2, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cl_assert_equal_i(i32 1, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @GIT_DELTA_COPIED, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cl_assert_equal_i(i32 1, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @git_diff_free(i32* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @git_tree_free(i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @git_index_free(i32* %92)
  %94 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_readbuffer(i32*, i8*) #2

declare dso_local i32 @git_futils_writebuffer(i32*, i8*, i32, i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_read_tree(i32*, i32*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
