; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__diff_ignore_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__diff_ignore_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@test_diff_submodules__diff_ignore_options.expected_normal = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"<SKIP>\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<UNTRACKED>\00", align 1
@.str.2 = private unnamed_addr constant [260 x i8] c"diff --git a/sm_changed_file b/sm_changed_file\0Aindex 4800958..4800958 160000\0A--- a/sm_changed_file\0A+++ b/sm_changed_file\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0-dirty\0A\00", align 1
@.str.3 = private unnamed_addr constant [254 x i8] c"diff --git a/sm_changed_head b/sm_changed_head\0Aindex 4800958..3d9386c 160000\0A--- a/sm_changed_head\0A+++ b/sm_changed_head\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\0A\00", align 1
@.str.4 = private unnamed_addr constant [264 x i8] c"diff --git a/sm_changed_index b/sm_changed_index\0Aindex 4800958..4800958 160000\0A--- a/sm_changed_index\0A+++ b/sm_changed_index\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0-dirty\0A\00", align 1
@.str.5 = private unnamed_addr constant [300 x i8] c"diff --git a/sm_changed_untracked_file b/sm_changed_untracked_file\0Aindex 4800958..4800958 160000\0A--- a/sm_changed_untracked_file\0A+++ b/sm_changed_untracked_file\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0-dirty\0A\00", align 1
@.str.6 = private unnamed_addr constant [266 x i8] c"diff --git a/sm_missing_commits b/sm_missing_commits\0Aindex 4800958..5e49635 160000\0A--- a/sm_missing_commits\0A+++ b/sm_missing_commits\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 5e4963595a9774b90524d35a807169049de8ccad\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@test_diff_submodules__diff_ignore_options.expected_ignore_all = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], align 16
@test_diff_submodules__diff_ignore_options.expected_ignore_dirty = internal global [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], align 16
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@GIT_DIFF_IGNORE_SUBMODULES = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_ALL = common dso_local global i64 0, align 8
@GIT_SUBMODULE_IGNORE_DIRTY = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"diff.ignoreSubmodules\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__diff_ignore_options() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32* null, i32** %2, align 8
  %5 = call i32 (...) @setup_fixture_submod2()
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %10, i32* null, %struct.TYPE_4__* %1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @check_diff_patches(i32* %13, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @test_diff_submodules__diff_ignore_options.expected_normal, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_diff_free(i32* %15)
  %17 = load i32, i32* @GIT_DIFF_IGNORE_SUBMODULES, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %21, i32* null, %struct.TYPE_4__* %1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @check_diff_patches(i32* %24, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_diff_submodules__diff_ignore_options.expected_ignore_all, i64 0, i64 0))
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_diff_free(i32* %26)
  %28 = load i32, i32* @GIT_DIFF_IGNORE_SUBMODULES, align 4
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 8
  %33 = load i64, i64* @GIT_SUBMODULE_IGNORE_ALL, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @g_repo, align 4
  %36 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %35, i32* null, %struct.TYPE_4__* %1)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @check_diff_patches(i32* %38, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_diff_submodules__diff_ignore_options.expected_ignore_all, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_diff_free(i32* %40)
  %42 = load i64, i64* @GIT_SUBMODULE_IGNORE_DIRTY, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %44, i32* null, %struct.TYPE_4__* %1)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @check_diff_patches(i32* %47, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @test_diff_submodules__diff_ignore_options.expected_ignore_dirty, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_diff_free(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @git_repository_config(i32** %3, i32 %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @git_config_set_bool(i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32, i32* @g_repo, align 4
  %59 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %58, i32* null, %struct.TYPE_4__* %1)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @check_diff_patches(i32* %61, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @test_diff_submodules__diff_ignore_options.expected_normal, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @git_diff_free(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @git_config_set_bool(i32* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i32, i32* @g_repo, align 4
  %69 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %68, i32* null, %struct.TYPE_4__* %1)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @check_diff_patches(i32* %71, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @test_diff_submodules__diff_ignore_options.expected_ignore_all, i64 0, i64 0))
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @git_diff_free(i32* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @git_config_set_string(i32* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32, i32* @g_repo, align 4
  %79 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %78, i32* null, %struct.TYPE_4__* %1)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @check_diff_patches(i32* %81, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @test_diff_submodules__diff_ignore_options.expected_normal, i64 0, i64 0))
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @git_diff_free(i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @git_config_set_string(i32* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = load i32, i32* @g_repo, align 4
  %89 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %88, i32* null, %struct.TYPE_4__* %1)
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @check_diff_patches(i32* %91, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @test_diff_submodules__diff_ignore_options.expected_ignore_dirty, i64 0, i64 0))
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @git_diff_free(i32* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @git_config_free(i32* %95)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_diff_patches(i32*, i8**) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
