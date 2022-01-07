; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__invalid_cache.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__invalid_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8** }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@test_diff_submodules__invalid_cache.expected_baseline = internal global [2 x i8*] [i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [254 x i8] c"diff --git a/sm_changed_head b/sm_changed_head\0Aindex 4800958..3d9386c 160000\0A--- a/sm_changed_head\0A+++ b/sm_changed_head\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@test_diff_submodules__invalid_cache.expected_unchanged = internal global [1 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 8
@test_diff_submodules__invalid_cache.expected_dirty = internal global [2 x i8*] [i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [260 x i8] c"diff --git a/sm_changed_head b/sm_changed_head\0Aindex 3d9386c..3d9386c 160000\0A--- a/sm_changed_head\0A+++ b/sm_changed_head\0A@@ -1 +1 @@\0A-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\0A+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247-dirty\0A\00", align 1
@test_diff_submodules__invalid_cache.expected_moved = internal global [2 x i8*] [i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [254 x i8] c"diff --git a/sm_changed_head b/sm_changed_head\0Aindex 3d9386c..7002348 160000\0A--- a/sm_changed_head\0A+++ b/sm_changed_head\0A@@ -1 +1 @@\0A-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\0A+Subproject commit 700234833f6ccc20d744b238612646be071acaae\0A\00", align 1
@test_diff_submodules__invalid_cache.expected_moved_dirty = internal global [2 x i8*] [i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [260 x i8] c"diff --git a/sm_changed_head b/sm_changed_head\0Aindex 3d9386c..7002348 160000\0A--- a/sm_changed_head\0A+++ b/sm_changed_head\0A@@ -1 +1 @@\0A-Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\0A+Subproject commit 700234833f6ccc20d744b238612646be071acaae-dirty\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"submod2/sm_changed_head/new_around_here\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@GIT_SUBMODULE_IGNORE_NONE = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_UNTRACKED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"submod2/sm_changed_head/file_to_modify\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\0Amore stuff\0A\00", align 1
@GIT_SUBMODULE_IGNORE_DIRTY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"file_to_modify\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Move it\00", align 1
@GIT_SUBMODULE_IGNORE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__invalid_cache() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 40, i1 false)
  store i32* null, i32** %2, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = call i32 (...) @setup_fixture_submod2()
  store i32 %8, i32* @g_repo, align 4
  %9 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i8** %4, i8*** %16, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %17, i32* null, %struct.TYPE_6__* %1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @check_diff_patches(i32* %20, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_baseline, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_diff_free(i32* %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @git_submodule_lookup(i32** %3, i32 %24, i8* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_submodule_add_to_index(i32* %28, i32 1)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @g_repo, align 4
  %32 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %31, i32* null, %struct.TYPE_6__* %1)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @check_diff_patches(i32* %34, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_diff_submodules__invalid_cache.expected_unchanged, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_diff_free(i32* %36)
  %38 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @git_submodule_name(i32* %40)
  %42 = load i32, i32* @GIT_SUBMODULE_IGNORE_NONE, align 4
  %43 = call i32 @git_submodule_set_ignore(i32 %39, i32 %41, i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %44, i32* null, %struct.TYPE_6__* %1)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @check_diff_patches(i32* %47, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_dirty, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_diff_free(i32* %49)
  %51 = load i32, i32* @g_repo, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @git_submodule_name(i32* %52)
  %54 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNTRACKED, align 4
  %55 = call i32 @git_submodule_set_ignore(i32 %51, i32 %53, i32 %54)
  %56 = load i32, i32* @g_repo, align 4
  %57 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %56, i32* null, %struct.TYPE_6__* %1)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @check_diff_patches(i32* %59, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_diff_submodules__invalid_cache.expected_unchanged, i64 0, i64 0))
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @git_diff_free(i32* %61)
  %63 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32, i32* @g_repo, align 4
  %65 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %64, i32* null, %struct.TYPE_6__* %1)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @check_diff_patches(i32* %67, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_dirty, i64 0, i64 0))
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @git_diff_free(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @git_submodule_free(i32* %71)
  %73 = load i32, i32* @g_repo, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @git_submodule_lookup(i32** %3, i32 %73, i8* %74)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32, i32* @g_repo, align 4
  %78 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %77, i32* null, %struct.TYPE_6__* %1)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @check_diff_patches(i32* %80, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_dirty, i64 0, i64 0))
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @git_diff_free(i32* %82)
  %84 = load i32, i32* @g_repo, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @git_submodule_name(i32* %85)
  %87 = load i32, i32* @GIT_SUBMODULE_IGNORE_DIRTY, align 4
  %88 = call i32 @git_submodule_set_ignore(i32 %84, i32 %86, i32 %87)
  %89 = load i32, i32* @g_repo, align 4
  %90 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %89, i32* null, %struct.TYPE_6__* %1)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @check_diff_patches(i32* %92, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_diff_submodules__invalid_cache.expected_unchanged, i64 0, i64 0))
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @git_diff_free(i32* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @git_submodule_open(i32** %5, i32* %96)
  %98 = call i32 @cl_git_pass(i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @git_repository_index(i32** %6, i32* %99)
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @git_index_add_bypath(i32* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %104 = call i32 @cl_git_pass(i32 %103)
  %105 = load i32, i32* @g_repo, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @git_submodule_name(i32* %106)
  %108 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNTRACKED, align 4
  %109 = call i32 @git_submodule_set_ignore(i32 %105, i32 %107, i32 %108)
  %110 = load i32, i32* @g_repo, align 4
  %111 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %110, i32* null, %struct.TYPE_6__* %1)
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @check_diff_patches(i32* %113, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_dirty, i64 0, i64 0))
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @git_diff_free(i32* %115)
  %117 = load i32, i32* @g_repo, align 4
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @git_submodule_name(i32* %118)
  %120 = load i32, i32* @GIT_SUBMODULE_IGNORE_DIRTY, align 4
  %121 = call i32 @git_submodule_set_ignore(i32 %117, i32 %119, i32 %120)
  %122 = load i32, i32* @g_repo, align 4
  %123 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %122, i32* null, %struct.TYPE_6__* %1)
  %124 = call i32 @cl_git_pass(i32 %123)
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @check_diff_patches(i32* %125, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_diff_submodules__invalid_cache.expected_unchanged, i64 0, i64 0))
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @git_diff_free(i32* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @cl_repo_commit_from_index(i32* null, i32* %129, i32* null, i32 1372350000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %131 = load i32, i32* @g_repo, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @git_submodule_name(i32* %132)
  %134 = load i32, i32* @GIT_SUBMODULE_IGNORE_DIRTY, align 4
  %135 = call i32 @git_submodule_set_ignore(i32 %131, i32 %133, i32 %134)
  %136 = load i32, i32* @g_repo, align 4
  %137 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %136, i32* null, %struct.TYPE_6__* %1)
  %138 = call i32 @cl_git_pass(i32 %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @check_diff_patches(i32* %139, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_moved, i64 0, i64 0))
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @git_diff_free(i32* %141)
  %143 = load i32, i32* @g_repo, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @git_submodule_name(i32* %144)
  %146 = load i32, i32* @GIT_SUBMODULE_IGNORE_ALL, align 4
  %147 = call i32 @git_submodule_set_ignore(i32 %143, i32 %145, i32 %146)
  %148 = load i32, i32* @g_repo, align 4
  %149 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %148, i32* null, %struct.TYPE_6__* %1)
  %150 = call i32 @cl_git_pass(i32 %149)
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @check_diff_patches(i32* %151, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_diff_submodules__invalid_cache.expected_unchanged, i64 0, i64 0))
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @git_diff_free(i32* %153)
  %155 = load i32, i32* @g_repo, align 4
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @git_submodule_name(i32* %156)
  %158 = load i32, i32* @GIT_SUBMODULE_IGNORE_NONE, align 4
  %159 = call i32 @git_submodule_set_ignore(i32 %155, i32 %157, i32 %158)
  %160 = load i32, i32* @g_repo, align 4
  %161 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %160, i32* null, %struct.TYPE_6__* %1)
  %162 = call i32 @cl_git_pass(i32 %161)
  %163 = load i32*, i32** %2, align 8
  %164 = call i32 @check_diff_patches(i32* %163, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_moved_dirty, i64 0, i64 0))
  %165 = load i32*, i32** %2, align 8
  %166 = call i32 @git_diff_free(i32* %165)
  %167 = call i32 @p_unlink(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @git_submodule_free(i32* %168)
  %170 = load i32, i32* @g_repo, align 4
  %171 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %170, i32* null, %struct.TYPE_6__* %1)
  %172 = call i32 @cl_git_pass(i32 %171)
  %173 = load i32*, i32** %2, align 8
  %174 = call i32 @check_diff_patches(i32* %173, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_diff_submodules__invalid_cache.expected_moved, i64 0, i64 0))
  %175 = load i32*, i32** %2, align 8
  %176 = call i32 @git_diff_free(i32* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @git_index_free(i32* %177)
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @git_repository_free(i32* %179)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @check_diff_patches(i32*, i8**) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_submodule_add_to_index(i32*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_submodule_set_ignore(i32, i32, i32) #2

declare dso_local i32 @git_submodule_name(i32*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @git_submodule_open(i32**, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
