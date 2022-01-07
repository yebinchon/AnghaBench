; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stress/extr_diff.c_test_with_many.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stress/extr_diff.c_test_with_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32* }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"renames/ikeepsix.txt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"renames/ikeepsix2.txt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ikeepsix2.txt\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_ALL = common dso_local global i8* null, align 8
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"yoyoyo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_with_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_with_many(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %10, i32* %8, align 4
  %11 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 8, i1 false)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_index(i32** %3, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_revparse_single(i32** %4, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_index_remove_bypath(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_index_add_bypath(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_index_write(i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_diff_tree_to_index(i32** %6, i32 %29, i32* %30, i32* %31, i32* %8)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 16)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @diff_file_cb, align 4
  %37 = call i32 @git_diff_foreach(i32* %35, i32 %36, i32* null, i32* null, i32* null, %struct.TYPE_8__* %7)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_i(i32 1, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_i(i32 %46, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cl_assert_equal_i(i32 %54, i32 %56)
  %58 = load i8*, i8** @GIT_DIFF_FIND_ALL, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @git_diff_find_similar(i32* %60, %struct.TYPE_7__* %9)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 16)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @diff_file_cb, align 4
  %66 = call i32 @git_diff_foreach(i32* %64, i32 %65, i32* null, i32* null, i32* null, %struct.TYPE_8__* %7)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_i(i32 1, i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cl_assert_equal_i(i32 %74, i32 %79)
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cl_assert_equal_i(i32 %82, i32 %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @git_diff_free(i32* %86)
  %88 = load i32, i32* @g_repo, align 4
  %89 = call i32 @cl_repo_commit_from_index(i32* null, i32 %88, i32* null, i32 1372350000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @g_repo, align 4
  %91 = call i32 @git_revparse_single(i32** %5, i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load i32, i32* @g_repo, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @git_diff_tree_to_tree(i32** %6, i32 %93, i32* %94, i32* %95, i32* %8)
  %97 = call i32 @cl_git_pass(i32 %96)
  %98 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 16)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @diff_file_cb, align 4
  %101 = call i32 @git_diff_foreach(i32* %99, i32 %100, i32* null, i32* null, i32* null, %struct.TYPE_8__* %7)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cl_assert_equal_i(i32 1, i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cl_assert_equal_i(i32 %110, i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @cl_assert_equal_i(i32 %118, i32 %120)
  %122 = load i8*, i8** @GIT_DIFF_FIND_ALL, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @git_diff_find_similar(i32* %124, %struct.TYPE_7__* %9)
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 16)
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* @diff_file_cb, align 4
  %130 = call i32 @git_diff_foreach(i32* %128, i32 %129, i32* null, i32* null, i32* null, %struct.TYPE_8__* %7)
  %131 = call i32 @cl_git_pass(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cl_assert_equal_i(i32 1, i32 %136)
  %138 = load i32, i32* %2, align 4
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @cl_assert_equal_i(i32 %138, i32 %143)
  %145 = load i32, i32* %2, align 4
  %146 = add nsw i32 %145, 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @cl_assert_equal_i(i32 %146, i32 %148)
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @git_diff_free(i32* %150)
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @git_tree_free(i32* %152)
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @git_tree_free(i32* %154)
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @git_index_free(i32* %156)
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

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32*, i32, i8*) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
