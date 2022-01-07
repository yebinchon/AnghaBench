; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_automerge.c_test_merge_trees_automerge__favor_theirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_automerge.c_test_merge_trees_automerge__favor_theirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }
%struct.merge_reuc_entry = type { i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ADDED_IN_MASTER_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@AUTOMERGEABLE_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@CHANGED_IN_BRANCH_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@CHANGED_IN_MASTER_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"2bd0a343aeef7a2cf0d158478966a6e587ff3863\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"conflicting.txt\00", align 1
@UNCHANGED_INDEX_ENTRY = common dso_local global %struct.merge_index_entry zeroinitializer, align 8
@AUTOMERGEABLE_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@CONFLICTING_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@REMOVED_IN_BRANCH_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@REMOVED_IN_MASTER_REUC_ENTRY = common dso_local global %struct.merge_reuc_entry zeroinitializer, align 4
@GIT_MERGE_FILE_FAVOR_THEIRS = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@THEIRS_AUTOMERGE_BRANCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_automerge__favor_theirs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [6 x %struct.merge_index_entry], align 16
  %4 = alloca [4 x %struct.merge_reuc_entry], align 16
  %5 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %7 = bitcast %struct.merge_index_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 8 bitcast (%struct.merge_index_entry* @ADDED_IN_MASTER_INDEX_ENTRY to i8*), i64 32, i1 false)
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i64 1
  %9 = bitcast %struct.merge_index_entry* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 8 bitcast (%struct.merge_index_entry* @AUTOMERGEABLE_INDEX_ENTRY to i8*), i64 32, i1 false)
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i64 1
  %11 = bitcast %struct.merge_index_entry* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 bitcast (%struct.merge_index_entry* @CHANGED_IN_BRANCH_INDEX_ENTRY to i8*), i64 32, i1 false)
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %10, i64 1
  %13 = bitcast %struct.merge_index_entry* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 8 bitcast (%struct.merge_index_entry* @CHANGED_IN_MASTER_INDEX_ENTRY to i8*), i64 32, i1 false)
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i64 1
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 0
  store i32 33188, i32* %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 2
  store i8* null, i8** %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 3
  store i32 ptrtoint ([16 x i8]* @.str.1 to i32), i32* %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i64 1
  %20 = bitcast %struct.merge_index_entry* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 8 bitcast (%struct.merge_index_entry* @UNCHANGED_INDEX_ENTRY to i8*), i64 32, i1 false)
  %21 = getelementptr inbounds [4 x %struct.merge_reuc_entry], [4 x %struct.merge_reuc_entry]* %4, i64 0, i64 0
  %22 = bitcast %struct.merge_reuc_entry* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.merge_reuc_entry* @AUTOMERGEABLE_REUC_ENTRY to i8*), i64 4, i1 false)
  %23 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %21, i64 1
  %24 = bitcast %struct.merge_reuc_entry* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.merge_reuc_entry* @CONFLICTING_REUC_ENTRY to i8*), i64 4, i1 false)
  %25 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %23, i64 1
  %26 = bitcast %struct.merge_reuc_entry* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.merge_reuc_entry* @REMOVED_IN_BRANCH_REUC_ENTRY to i8*), i64 4, i1 false)
  %27 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %25, i64 1
  %28 = bitcast %struct.merge_reuc_entry* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.merge_reuc_entry* @REMOVED_IN_MASTER_REUC_ENTRY to i8*), i64 4, i1 false)
  %29 = load i32, i32* @GIT_MERGE_FILE_FAVOR_THEIRS, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @repo, align 4
  %32 = load i32, i32* @THEIRS_AUTOMERGE_BRANCH, align 4
  %33 = call i32 @merge_trees_from_branches(i32** %1, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %32, %struct.TYPE_4__* %2)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %37 = call i32 @merge_test_index(i32* %35, %struct.merge_index_entry* %36, i32 6)
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = getelementptr inbounds [4 x %struct.merge_reuc_entry], [4 x %struct.merge_reuc_entry]* %4, i64 0, i64 0
  %41 = call i32 @merge_test_reuc(i32* %39, %struct.merge_reuc_entry* %40, i32 4)
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_index_free(i32* %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_trees_from_branches(i32**, i32, i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @merge_test_reuc(i32*, %struct.merge_reuc_entry*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
