; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again_after_edit_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again_after_edit_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"a8c86221b400b836010567cc3593db6e96c1a83a\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"46ff0854663aeb2182b9838c8da68e33ac23bc1e\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"21a96a98ed84d45866e1de6e266fd3a61a4ae9dc\00", align 1
@__const.test_revert_workdir__again_after_edit_two.merge_index_entries = private unnamed_addr constant [3 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }], align 16
@repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"75ec9929465623f17ff3ad68c0438ea56faba815\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"97e52d5e81f541080cd6b92829fb85bc4d81d90b\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"revert/file.txt\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"a\0A<<<<<<< HEAD\0A=======\0Aa\0A>>>>>>> parent of 97e52d5... Revert me\0Aa\0Aa\0Aa\0Aa\0Aab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__again_after_edit_two() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x %struct.merge_index_entry], align 16
  %8 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = bitcast [3 x %struct.merge_index_entry]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([3 x %struct.merge_index_entry]* @__const.test_revert_workdir__again_after_edit_two.merge_index_entries to i8*), i64 96, i1 false)
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_repository_config(i32** %2, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_config_set_bool(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_commit_lookup(i32** %5, i32 %18, i32* %3)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @GIT_RESET_HARD, align 4
  %24 = call i32 @git_reset(i32 %21, i32* %22, i32 %23, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo, align 4
  %29 = call i32 @git_commit_lookup(i32** %6, i32 %28, i32* %4)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @repo, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @git_revert(i32 %31, i32* %32, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo_index, align 4
  %36 = getelementptr inbounds [3 x %struct.merge_index_entry], [3 x %struct.merge_index_entry]* %7, i64 0, i64 0
  %37 = call i32 @merge_test_index(i32 %35, %struct.merge_index_entry* %36, i32 3)
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @git_commit_free(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @git_commit_free(i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @git_config_free(i32* %48)
  %50 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_revert(i32, i32*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
