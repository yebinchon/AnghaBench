; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_automerge.c_test_merge_trees_automerge__automerge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_automerge.c_test_merge_trees_automerge__automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }
%struct.merge_reuc_entry = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global i32 0, align 4
@ADDED_IN_MASTER_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@AUTOMERGEABLE_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@CHANGED_IN_BRANCH_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@CHANGED_IN_MASTER_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"d427e0b2e138501a3d15cc376077a3631e15bd46\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"conflicting.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"4e886e602529caa9ab11d71f86634bd1b6e0de10\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"2bd0a343aeef7a2cf0d158478966a6e587ff3863\00", align 1
@UNCHANGED_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@AUTOMERGEABLE_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@REMOVED_IN_BRANCH_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@REMOVED_IN_MASTER_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@THEIRS_AUTOMERGE_BRANCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@AUTOMERGEABLE_MERGED_FILE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_automerge__automerge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [8 x %struct.merge_index_entry], align 16
  %6 = alloca [3 x %struct.merge_reuc_entry], align 4
  %7 = load i32, i32* @GIT_MERGE_OPTIONS_INIT, align 4
  store i32 %7, i32* %3, align 4
  %8 = getelementptr inbounds [8 x %struct.merge_index_entry], [8 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %9 = bitcast %struct.merge_index_entry* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 8 bitcast (%struct.merge_index_entry* @ADDED_IN_MASTER_INDEX_ENTRY to i8*), i64 32, i1 false)
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i64 1
  %11 = bitcast %struct.merge_index_entry* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 bitcast (%struct.merge_index_entry* @AUTOMERGEABLE_INDEX_ENTRY to i8*), i64 32, i1 false)
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i64 1
  %13 = bitcast %struct.merge_index_entry* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 8 bitcast (%struct.merge_index_entry* @CHANGED_IN_BRANCH_INDEX_ENTRY to i8*), i64 32, i1 false)
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i64 1
  %15 = bitcast %struct.merge_index_entry* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 8 bitcast (%struct.merge_index_entry* @CHANGED_IN_MASTER_INDEX_ENTRY to i8*), i64 32, i1 false)
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i32 1, i32* %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 0
  store i32 33188, i32* %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 2
  store i32 2, i32* %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i64 1
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 0
  store i32 33188, i32* %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 2
  store i32 3, i32* %29, align 16
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i64 1
  %32 = bitcast %struct.merge_index_entry* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 8 bitcast (%struct.merge_index_entry* @UNCHANGED_INDEX_ENTRY to i8*), i64 32, i1 false)
  %33 = getelementptr inbounds [3 x %struct.merge_reuc_entry], [3 x %struct.merge_reuc_entry]* %6, i64 0, i64 0
  %34 = bitcast %struct.merge_reuc_entry* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.merge_reuc_entry* @AUTOMERGEABLE_REUC_ENTRY to i8*), i64 4, i1 false)
  %35 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %33, i64 1
  %36 = bitcast %struct.merge_reuc_entry* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 bitcast (%struct.merge_reuc_entry* @REMOVED_IN_BRANCH_REUC_ENTRY to i8*), i64 4, i1 false)
  %37 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %35, i64 1
  %38 = bitcast %struct.merge_reuc_entry* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.merge_reuc_entry* @REMOVED_IN_MASTER_REUC_ENTRY to i8*), i64 4, i1 false)
  %39 = load i32, i32* @repo, align 4
  %40 = load i32, i32* @THEIRS_AUTOMERGE_BRANCH, align 4
  %41 = call i32 @merge_trees_from_branches(i32** %1, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32* %3)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = getelementptr inbounds [8 x %struct.merge_index_entry], [8 x %struct.merge_index_entry]* %5, i64 0, i64 0
  %45 = call i32 @merge_test_index(i32* %43, %struct.merge_index_entry* %44, i32 8)
  %46 = call i32 @cl_assert(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = getelementptr inbounds [3 x %struct.merge_reuc_entry], [3 x %struct.merge_reuc_entry]* %6, i64 0, i64 0
  %49 = call i32 @merge_test_reuc(i32* %47, %struct.merge_reuc_entry* %48, i32 3)
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call %struct.TYPE_3__* @git_index_get_bypath(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %2, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %60 = call i64 @strlen(i32 %59)
  %61 = icmp eq i64 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = load i32, i32* @repo, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %68 = call i32 @git_object_lookup(i32** %4, i32 %64, i32* %66, i32 %67)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @git_blob_rawcontent(i32* %70)
  %72 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @memcmp(i32 %71, i32 %72, i64 %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @cl_assert(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_index_free(i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @git_blob_free(i32* %82)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_trees_from_branches(i32**, i32, i8*, i32, i32*) #2

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
