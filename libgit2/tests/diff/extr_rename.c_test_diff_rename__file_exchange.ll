; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__file_exchange.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__file_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__file_exchange() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %11, i32* %6, align 4
  %12 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %13 = call i32 @git_futils_readbuffer(i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_futils_readbuffer(i32* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_futils_writebuffer(i32* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_futils_writebuffer(i32* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_revparse_single(i32** %4, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_repository_index(i32** %3, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @git_index_read_tree(i32* %27, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_index_add_bypath(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_index_add_bypath(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_diff_tree_to_index(i32** %5, i32 %37, i32* %38, i32* %39, i32* %6)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 16)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @diff_file_cb, align 4
  %45 = load i32, i32* @diff_binary_cb, align 4
  %46 = load i32, i32* @diff_hunk_cb, align 4
  %47 = load i32, i32* @diff_line_cb, align 4
  %48 = call i32 @git_diff_foreach(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, %struct.TYPE_8__* %8)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cl_assert_equal_i(i32 2, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_i(i32 2, i32 %57)
  %59 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @git_diff_find_similar(i32* %61, %struct.TYPE_7__* %7)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 16)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @diff_file_cb, align 4
  %67 = load i32, i32* @diff_binary_cb, align 4
  %68 = load i32, i32* @diff_hunk_cb, align 4
  %69 = load i32, i32* @diff_line_cb, align 4
  %70 = call i32 @git_diff_foreach(i32* %65, i32 %66, i32 %67, i32 %68, i32 %69, %struct.TYPE_8__* %8)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cl_assert_equal_i(i32 2, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cl_assert_equal_i(i32 2, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @git_diff_free(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @git_tree_free(i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @git_index_free(i32* %85)
  %87 = call i32 @git_buf_dispose(i32* %1)
  %88 = call i32 @git_buf_dispose(i32* %2)
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

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_7__*) #2

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
