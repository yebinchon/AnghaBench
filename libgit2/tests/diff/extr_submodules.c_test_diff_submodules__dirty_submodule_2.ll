; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__dirty_submodule_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__dirty_submodule_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8** }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@test_diff_submodules__dirty_submodule_2.expected_none = internal global [1 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@test_diff_submodules__dirty_submodule_2.expected_dirty = internal global [2 x i8*] [i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [232 x i8] c"diff --git a/testrepo b/testrepo\0Aindex a65fedf..a65fedf 160000\0A--- a/testrepo\0A+++ b/testrepo\0A@@ -1 +1 @@\0A-Subproject commit a65fedf39aefe402d3bb6e24df4d4f5fe4547750\0A+Subproject commit a65fedf39aefe402d3bb6e24df4d4f5fe4547750-dirty\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_UNTRACKED_CONTENT = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_DIFF_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"submodules/testrepo/README\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"heyheyhey\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"submodules/testrepo/all_new.txt\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"never seen before\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__dirty_submodule_2() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 40, i1 false)
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = call i32 (...) @setup_fixture_submodules()
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %9 = load i32, i32* @GIT_DIFF_SHOW_UNTRACKED_CONTENT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GIT_DIFF_DISABLE_PATHSPEC_MATCH, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i8** %4, i8*** %21, align 8
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %22, i32* null, %struct.TYPE_7__* %1)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @check_diff_patches(i32* %25, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_diff_submodules__dirty_submodule_2.expected_none, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_diff_free(i32* %27)
  %29 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i32, i32* @g_repo, align 4
  %32 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %31, i32* null, %struct.TYPE_7__* %1)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @check_diff_patches(i32* %34, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__dirty_submodule_2.expected_dirty, i64 0, i64 0))
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i32 @git_repository_head_tree(i32** %5, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @git_diff_tree_to_index(i32** %3, i32 %39, i32* %40, i32* null, %struct.TYPE_7__* %1)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_diff_merge(i32* %43, i32* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @git_diff_free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_tree_free(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @check_diff_patches(i32* %51, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__dirty_submodule_2.expected_dirty, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_diff_free(i32* %53)
  %55 = load i32, i32* @g_repo, align 4
  %56 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %55, i32* null, %struct.TYPE_7__* %1)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @check_diff_patches(i32* %58, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__dirty_submodule_2.expected_dirty, i64 0, i64 0))
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @git_diff_free(i32* %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submodules(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @check_diff_patches(i32*, i8**) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_diff_merge(i32*, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
