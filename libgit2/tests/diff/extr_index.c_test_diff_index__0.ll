; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"26a125ee1bf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"0017bd4ab1ec3\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_index__0() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32* @resolve_commit_oid_to_tree(i32 %8, i8* %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @resolve_commit_oid_to_tree(i32 %11, i8* %12)
  store i32* %13, i32** %4, align 8
  %14 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @cl_assert(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @cl_assert(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 40)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_diff_tree_to_index(i32** %6, i32 %22, i32* %23, i32* null, %struct.TYPE_7__* %5)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @diff_file_cb, align 4
  %28 = load i32, i32* @diff_binary_cb, align 4
  %29 = load i32, i32* @diff_hunk_cb, align 4
  %30 = load i32, i32* @diff_line_cb, align 4
  %31 = call i32 @git_diff_foreach(i32* %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct.TYPE_8__* %7)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cl_assert_equal_i(i32 8, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 3, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 2, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_i(i32 3, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cl_assert_equal_i(i32 8, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_i(i32 11, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cl_assert_equal_i(i32 3, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 6, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cl_assert_equal_i(i32 2, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @git_diff_free(i32* %69)
  store i32* null, i32** %6, align 8
  %71 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 40)
  %72 = load i32, i32* @g_repo, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @git_diff_tree_to_index(i32** %6, i32 %72, i32* %73, i32* null, %struct.TYPE_7__* %5)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @diff_file_cb, align 4
  %78 = load i32, i32* @diff_binary_cb, align 4
  %79 = load i32, i32* @diff_hunk_cb, align 4
  %80 = load i32, i32* @diff_line_cb, align 4
  %81 = call i32 @git_diff_foreach(i32* %76, i32 %77, i32 %78, i32 %79, i32 %80, %struct.TYPE_8__* %7)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cl_assert_equal_i(i32 12, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cl_assert_equal_i(i32 7, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cl_assert_equal_i(i32 2, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cl_assert_equal_i(i32 3, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cl_assert_equal_i(i32 12, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cl_assert_equal_i(i32 16, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @cl_assert_equal_i(i32 3, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cl_assert_equal_i(i32 11, i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @cl_assert_equal_i(i32 2, i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @git_diff_free(i32* %119)
  store i32* null, i32** %6, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @git_tree_free(i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @git_tree_free(i32* %123)
  ret void
}

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
