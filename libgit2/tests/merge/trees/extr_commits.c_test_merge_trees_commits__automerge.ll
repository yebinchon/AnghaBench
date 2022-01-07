; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_commits.c_test_merge_trees_commits__automerge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_commits.c_test_merge_trees_commits__automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }
%struct.merge_reuc_entry = type { i8*, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"233c0919c998ed110a4b6ff36f353aec8b713487\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"added-in-master.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"f2e1550a0c9e53d5811175864a29536642ae3821\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"4eb04c9e79e88f6640d01ff5b25ca2a60764f216\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"changed-in-branch.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"11deab00b2d3a6f5a3073988ac050c2d7b6655e2\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"changed-in-master.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"d427e0b2e138501a3d15cc376077a3631e15bd46\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"conflicting.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"4e886e602529caa9ab11d71f86634bd1b6e0de10\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"2bd0a343aeef7a2cf0d158478966a6e587ff3863\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"c8f06f2e3bb2964174677e91f0abead0e43c9e5d\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unchanged.txt\00", align 1
@__const.test_merge_trees_commits__automerge.merge_index_entries = private unnamed_addr constant [8 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str.14 = private unnamed_addr constant [41 x i8] c"6212c31dab5e482247d7977e4f0dd3601decf13b\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"058541fc37114bfc1dddf6bd6bffc7fae5c2e6fe\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"removed-in-branch.txt\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"dfe3f22baa1f6fce5447901c3086bae368de6bdd\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"removed-in-master.txt\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"5c3b68a71fc4fa5d362fd3875e53137c6a5ab7a5\00", align 1
@__const.test_merge_trees_commits__automerge.merge_reuc_entries = private unnamed_addr constant [3 x %struct.merge_reuc_entry] [%struct.merge_reuc_entry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 33188, i32 33188, i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i32 33188, i32 33188, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 33188, i32 0, i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0) }], align 16
@repo = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@AUTOMERGEABLE_MERGED_FILE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_commits__automerge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [8 x %struct.merge_index_entry], align 16
  %6 = alloca [3 x %struct.merge_reuc_entry], align 16
  %7 = load i32, i32* @GIT_MERGE_OPTIONS_INIT, align 4
  store i32 %7, i32* %3, align 4
  %8 = bitcast [8 x %struct.merge_index_entry]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([8 x %struct.merge_index_entry]* @__const.test_merge_trees_commits__automerge.merge_index_entries to i8*), i64 256, i1 false)
  %9 = bitcast [3 x %struct.merge_reuc_entry]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([3 x %struct.merge_reuc_entry]* @__const.test_merge_trees_commits__automerge.merge_reuc_entries to i8*), i64 144, i1 false)
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @merge_commits_from_branches(i32** %1, i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32* %3)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = getelementptr inbounds [8 x %struct.merge_index_entry], [8 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %15 = call i32 @merge_test_index(i32* %13, %struct.merge_index_entry* %14, i32 8)
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = getelementptr inbounds [3 x %struct.merge_reuc_entry], [3 x %struct.merge_reuc_entry]* %6, i64 0, i64 0
  %19 = call i32 @merge_test_reuc(i32* %17, %struct.merge_reuc_entry* %18, i32 3)
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call %struct.TYPE_3__* @git_index_get_bypath(i32* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %2, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %30 = call i64 @strlen(i32 %29)
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @repo, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %38 = call i32 @git_object_lookup(i32** %4, i32 %34, i32* %36, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @git_blob_rawcontent(i32* %40)
  %42 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @memcmp(i32 %41, i32 %42, i64 %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @git_index_free(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @git_blob_free(i32* %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_commits_from_branches(i32**, i32, i8*, i8*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @merge_test_reuc(i32*, %struct.merge_reuc_entry*, i32) #2

declare dso_local %struct.TYPE_3__* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i64 @memcmp(i32, i32, i64) #2

declare dso_local i32 @git_blob_rawcontent(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_blob_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
