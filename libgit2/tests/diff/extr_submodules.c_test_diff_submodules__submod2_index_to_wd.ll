; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__submod2_index_to_wd.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__submod2_index_to_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@test_diff_submodules__submod2_index_to_wd.expected = internal global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"<SKIP>\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<UNTRACKED>\00", align 1
@.str.2 = private unnamed_addr constant [260 x i8] c"diff --git a/sm_changed_file b/sm_changed_file\0Aindex 4800958..4800958 160000\0A--- a/sm_changed_file\0A+++ b/sm_changed_file\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0-dirty\0A\00", align 1
@.str.3 = private unnamed_addr constant [254 x i8] c"diff --git a/sm_changed_head b/sm_changed_head\0Aindex 4800958..3d9386c 160000\0A--- a/sm_changed_head\0A+++ b/sm_changed_head\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 3d9386c507f6b093471a3e324085657a3c2b4247\0A\00", align 1
@.str.4 = private unnamed_addr constant [264 x i8] c"diff --git a/sm_changed_index b/sm_changed_index\0Aindex 4800958..4800958 160000\0A--- a/sm_changed_index\0A+++ b/sm_changed_index\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0-dirty\0A\00", align 1
@.str.5 = private unnamed_addr constant [300 x i8] c"diff --git a/sm_changed_untracked_file b/sm_changed_untracked_file\0Aindex 4800958..4800958 160000\0A--- a/sm_changed_untracked_file\0A+++ b/sm_changed_untracked_file\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0-dirty\0A\00", align 1
@.str.6 = private unnamed_addr constant [266 x i8] c"diff --git a/sm_missing_commits b/sm_missing_commits\0Aindex 4800958..5e49635 160000\0A--- a/sm_missing_commits\0A+++ b/sm_missing_commits\0A@@ -1 +1 @@\0A-Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A+Subproject commit 5e4963595a9774b90524d35a807169049de8ccad\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"submod2/sm_changed_head-\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"submod2/sm_changed_head_\00", align 1
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__submod2_index_to_wd() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %2, align 8
  %4 = call i32 (...) @setup_fixture_submod2()
  store i32 %4, i32* @g_repo, align 4
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %7 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %11, i32* null, %struct.TYPE_4__* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @check_diff_patches(i32* %14, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @test_diff_submodules__submod2_index_to_wd.expected, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_diff_free(i32* %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_diff_patches(i32*, i8**) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
