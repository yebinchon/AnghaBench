; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__file_partial_exchange.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__file_partial_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"this is not the content you are looking for\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__file_partial_exchange() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %12, i32* %6, align 4
  %13 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = call i32 @git_futils_readbuffer(i32* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_futils_writebuffer(i32* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %24, %0
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = call i32 @git_buf_puts(i32* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %18

27:                                               ; preds = %18
  %28 = call i32 @git_futils_writebuffer(i32* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_revparse_single(i32** %4, i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_repository_index(i32** %3, i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_index_read_tree(i32* %36, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @git_index_add_bypath(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @git_index_add_bypath(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @g_repo, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_diff_tree_to_index(i32** %5, i32 %46, i32* %47, i32* %48, i32* %6)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 16)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @diff_file_cb, align 4
  %54 = load i32, i32* @diff_binary_cb, align 4
  %55 = load i32, i32* @diff_hunk_cb, align 4
  %56 = load i32, i32* @diff_line_cb, align 4
  %57 = call i32 @git_diff_foreach(i32* %52, i32 %53, i32 %54, i32 %55, i32 %56, %struct.TYPE_8__* %8)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cl_assert_equal_i(i32 2, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_i(i32 2, i32 %66)
  %68 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @git_diff_find_similar(i32* %70, %struct.TYPE_7__* %7)
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 16)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @diff_file_cb, align 4
  %76 = load i32, i32* @diff_binary_cb, align 4
  %77 = load i32, i32* @diff_hunk_cb, align 4
  %78 = load i32, i32* @diff_line_cb, align 4
  %79 = call i32 @git_diff_foreach(i32* %74, i32 %75, i32 %76, i32 %77, i32 %78, %struct.TYPE_8__* %8)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @cl_assert_equal_i(i32 3, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cl_assert_equal_i(i32 1, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cl_assert_equal_i(i32 1, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cl_assert_equal_i(i32 1, i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @git_diff_free(i32* %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @git_tree_free(i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @git_index_free(i32* %106)
  %108 = call i32 @git_buf_dispose(i32* %1)
  %109 = call i32 @git_buf_dispose(i32* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_readbuffer(i32*, i8*) #2

declare dso_local i32 @git_futils_writebuffer(i32*, i8*, i32, i32) #2

declare dso_local i32 @git_buf_puts(i32*, i8*) #2

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
