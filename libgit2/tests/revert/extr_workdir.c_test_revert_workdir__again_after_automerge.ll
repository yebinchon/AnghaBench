; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again_after_automerge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_workdir.c_test_revert_workdir__again_after_automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [41 x i8] c"caf99de3a49827117bb66721010eac461b06a80c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"0ab09ea6d4c3634bdf6c221626d8b6f7dd890767\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"f4e107c230d08a60fb419d19869f1f282b272d9c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"0f5bfcf58c558d865da6be0281d7795993646cee\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file6.txt\00", align 1
@__const.test_revert_workdir__again_after_automerge.merge_index_entries = private unnamed_addr constant [4 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [41 x i8] c"3a3ef367eaf3fe79effbfb0a56b269c04c2b59fe\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"747726e021bc5f44b86de60e3032fd6f9f1b8383\00", align 1
@__const.test_revert_workdir__again_after_automerge.second_revert_entries = private unnamed_addr constant [6 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [41 x i8] c"72333f47d4e83616630ff3b0ffe4c0faebcc3c45\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"d1d403d22cbe24592d725f442835cf46fe60c8ac\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"Reverter\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"reverter@example.org\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Reverted!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_workdir__again_after_automerge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4 x %struct.merge_index_entry], align 16
  %10 = alloca [6 x %struct.merge_index_entry], align 16
  %11 = bitcast [4 x %struct.merge_index_entry]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x %struct.merge_index_entry]* @__const.test_revert_workdir__again_after_automerge.merge_index_entries to i8*), i64 128, i1 false)
  %12 = bitcast [6 x %struct.merge_index_entry]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([6 x %struct.merge_index_entry]* @__const.test_revert_workdir__again_after_automerge.second_revert_entries to i8*), i64 192, i1 false)
  %13 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_commit_lookup(i32** %1, i32 %14, i32* %4)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @GIT_RESET_HARD, align 4
  %20 = call i32 @git_reset(i32 %17, i32* %18, i32 %19, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_commit_lookup(i32** %2, i32 %23, i32* %5)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_revert(i32 %26, i32* %27, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @repo_index, align 4
  %31 = getelementptr inbounds [4 x %struct.merge_index_entry], [4 x %struct.merge_index_entry]* %9, i64 0, i64 0
  %32 = call i32 @merge_test_index(i32 %30, %struct.merge_index_entry* %31, i32 4)
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @repo_index, align 4
  %35 = call i32 @git_index_write_tree(i32* %6, i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @repo, align 4
  %38 = call i32 @git_tree_lookup(i32** %3, i32 %37, i32* %6)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @time(i32* null)
  %41 = call i32 @git_signature_new(i32** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %40, i32 0)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @git_commit_create(i32* %7, i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %44, i32* %45, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* %46, i32 1, i32** %1)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @repo, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_revert(i32 %49, i32* %50, i32* null)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @repo_index, align 4
  %54 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %10, i64 0, i64 0
  %55 = call i32 @merge_test_index(i32 %53, %struct.merge_index_entry* %54, i32 6)
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @git_signature_free(i32* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_tree_free(i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @git_commit_free(i32* %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_commit_free(i32* %63)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_revert(i32, i32*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_index_write_tree(i32*, i32) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @git_commit_create(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32**) #2

declare dso_local i32 @git_signature_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
