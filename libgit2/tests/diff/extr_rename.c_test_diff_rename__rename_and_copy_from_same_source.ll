; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rename_and_copy_from_same_source.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rename_and_copy_from_same_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"renames/song_a.txt\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"renames/song_b.txt\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"song_a.txt\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"song_b.txt\00", align 1
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DELTA_COPIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__rename_and_copy_from_same_source() #0 {
  %1 = alloca %struct.TYPE_20__, align 8
  %2 = alloca %struct.TYPE_20__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = bitcast %struct.TYPE_20__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_20__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %10 = bitcast %struct.TYPE_20__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_20__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_18__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_19__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = call i32 @git_futils_readbuffer(%struct.TYPE_20__* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @git_buf_set(%struct.TYPE_20__* %2, i64 %16, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 2
  %24 = sdiv i32 %23, 3
  %25 = call i32 @git_buf_truncate(%struct.TYPE_20__* %1, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = call i32 @git_buf_consume(%struct.TYPE_20__* %2, i8* %33)
  %35 = call i32 @git_futils_writebuffer(%struct.TYPE_20__* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @git_futils_writebuffer(%struct.TYPE_20__* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @git_revparse_single(i32** %4, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = call i32 @git_repository_index(i32** %3, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_index_read_tree(i32* %45, i32* %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_index_add_bypath(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @git_index_add_bypath(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @g_repo, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_diff_tree_to_index(i32** %5, i32 %57, i32* %58, i32* %59, %struct.TYPE_18__* %6)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = call i32 @memset(%struct.TYPE_21__* %8, i32 0, i32 16)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @diff_file_cb, align 4
  %65 = load i32, i32* @diff_binary_cb, align 4
  %66 = load i32, i32* @diff_hunk_cb, align 4
  %67 = load i32, i32* @diff_line_cb, align 4
  %68 = call i32 @git_diff_foreach(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67, %struct.TYPE_21__* %8)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @cl_assert_equal_i(i32 6, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cl_assert_equal_i(i32 2, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cl_assert_equal_i(i32 4, i32 %83)
  %85 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @git_diff_find_similar(i32* %87, %struct.TYPE_19__* %7)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = call i32 @memset(%struct.TYPE_21__* %8, i32 0, i32 16)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @diff_file_cb, align 4
  %93 = load i32, i32* @diff_binary_cb, align 4
  %94 = load i32, i32* @diff_hunk_cb, align 4
  %95 = load i32, i32* @diff_line_cb, align 4
  %96 = call i32 @git_diff_foreach(i32* %91, i32 %92, i32 %93, i32 %94, i32 %95, %struct.TYPE_21__* %8)
  %97 = call i32 @cl_git_pass(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @cl_assert_equal_i(i32 6, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @GIT_DELTA_COPIED, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cl_assert_equal_i(i32 2, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cl_assert_equal_i(i32 4, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @git_diff_free(i32* %113)
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @git_tree_free(i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @git_index_free(i32* %117)
  %119 = call i32 @git_buf_dispose(%struct.TYPE_20__* %1)
  %120 = call i32 @git_buf_dispose(%struct.TYPE_20__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_20__*, i8*) #2

declare dso_local i32 @git_buf_set(%struct.TYPE_20__*, i64, i32) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @git_buf_consume(%struct.TYPE_20__*, i8*) #2

declare dso_local i32 @git_futils_writebuffer(%struct.TYPE_20__*, i8*, i32, i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_read_tree(i32*, i32*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_18__*) #2

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_21__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
