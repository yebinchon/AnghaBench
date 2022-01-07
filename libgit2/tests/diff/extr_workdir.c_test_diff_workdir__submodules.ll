; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__submodules.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"873585b94bdeabccea991ea5e3ec1a277895b698\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_UNTRACKED_CONTENT = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__submodules() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %6 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %4, align 8
  %7 = call i32 (...) @setup_fixture_submod2()
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32* @resolve_commit_oid_to_tree(i32 %8, i8* %9)
  store i32* %10, i32** %2, align 8
  %11 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %12 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GIT_DIFF_SHOW_UNTRACKED_CONTENT, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_diff_tree_to_workdir(i32** %4, i32 %19, i32* %20, %struct.TYPE_7__* %3)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 40)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @diff_file_cb, align 4
  %26 = load i32, i32* @diff_binary_cb, align 4
  %27 = load i32, i32* @diff_hunk_cb, align 4
  %28 = load i32, i32* @diff_line_cb, align 4
  %29 = call i32 @git_diff_foreach(i32* %24, i32 %25, i32 %26, i32 %27, i32 %28, %struct.TYPE_8__* %5)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cl_assert_equal_i(i32 12, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i32 0, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i32 0, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 2, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i32 0, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_i(i32 10, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cl_assert_equal_i(i32 9, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_i(i32 33, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @cl_assert_equal_i(i32 2, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 30, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @cl_assert_equal_i(i32 1, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @git_diff_free(i32* %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @git_tree_free(i32* %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
