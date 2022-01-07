; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__patience_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__patience_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [290 x i8] c"diff --git a/test.txt b/test.txt\0Aindex 34a5acc..d52725f 100644\0A--- a/test.txt\0A+++ b/test.txt\0A@@ -1,10 +1,7 @@\0A When I wrote this\0A I did not know\0A-how to create\0A-a patience diff\0A I did not know\0A how to create\0A+a patience diff\0A another problem\0A-I did not know\0A-how to create\0A a minimal diff\0A\00", align 1
@.str.1 = private unnamed_addr constant [289 x i8] c"diff --git a/test.txt b/test.txt\0Aindex 34a5acc..d52725f 100644\0A--- a/test.txt\0A+++ b/test.txt\0A@@ -1,10 +1,7 @@\0A When I wrote this\0A I did not know\0A+I did not know\0A how to create\0A a patience diff\0A-I did not know\0A-how to create\0A another problem\0A-I did not know\0A-how to create\0A a minimal diff\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"empty_standard_repo/test.txt\00", align 1
@.str.5 = private unnamed_addr constant [153 x i8] c"When I wrote this\0AI did not know\0Ahow to create\0Aa patience diff\0AI did not know\0Ahow to create\0Aanother problem\0AI did not know\0Ahow to create\0Aa minimal diff\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.8 = private unnamed_addr constant [110 x i8] c"When I wrote this\0AI did not know\0AI did not know\0Ahow to create\0Aa patience diff\0Aanother problem\0Aa minimal diff\0A\00", align 1
@GIT_DIFF_PATIENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__patience_diff() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %10, i32* @g_repo, align 4
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @cl_repo_set_bool(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_index(i32** %1, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_index_add_bypath(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @cl_repo_commit_from_index(i32* null, i32 %20, i32* null, i32 1372350000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_index_free(i32* %22)
  %24 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.8, i64 0, i64 0))
  %25 = load i32, i32* @g_repo, align 4
  %26 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %25, i32* null, %struct.TYPE_9__* %2)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_diff_num_deltas(i32* %28)
  %30 = call i32 @cl_assert_equal_i(i32 1, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_patch_from_diff(i32** %4, i32* %31, i32 0)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %5, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_s(i8* %37, i32 %39)
  %41 = call i32 @git_buf_clear(%struct.TYPE_10__* %5)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @git_patch_free(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_diff_free(i32* %44)
  %46 = load i32, i32* @GIT_DIFF_PATIENCE, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @g_repo, align 4
  %51 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %50, i32* null, %struct.TYPE_9__* %2)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @git_diff_num_deltas(i32* %53)
  %55 = call i32 @cl_assert_equal_i(i32 1, i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @git_patch_from_diff(i32** %4, i32* %56, i32 0)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %5, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_s(i8* %62, i32 %64)
  %66 = call i32 @git_buf_clear(%struct.TYPE_10__* %5)
  %67 = call i32 @git_buf_dispose(%struct.TYPE_10__* %5)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @git_patch_free(i32* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @git_diff_free(i32* %70)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32*, i32, i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_10__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
