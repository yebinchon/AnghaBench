; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__favor_theirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_simple.c_test_merge_workdir_simple__favor_theirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }
%struct.merge_reuc_entry = type { i32 }

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
@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_simple__favor_theirs() #0 {
  %1 = alloca [6 x %struct.merge_index_entry], align 16
  %2 = alloca [4 x %struct.merge_reuc_entry], align 16
  %3 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %1, i64 0, i64 0
  %4 = bitcast %struct.merge_index_entry* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 8 bitcast (%struct.merge_index_entry* @ADDED_IN_MASTER_INDEX_ENTRY to i8*), i64 32, i1 false)
  %5 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %3, i64 1
  %6 = bitcast %struct.merge_index_entry* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 8 bitcast (%struct.merge_index_entry* @AUTOMERGEABLE_INDEX_ENTRY to i8*), i64 32, i1 false)
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %5, i64 1
  %8 = bitcast %struct.merge_index_entry* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 8 bitcast (%struct.merge_index_entry* @CHANGED_IN_BRANCH_INDEX_ENTRY to i8*), i64 32, i1 false)
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i64 1
  %10 = bitcast %struct.merge_index_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 8 bitcast (%struct.merge_index_entry* @CHANGED_IN_MASTER_INDEX_ENTRY to i8*), i64 32, i1 false)
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %9, i64 1
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 0
  store i32 33188, i32* %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 3
  store i32 ptrtoint ([16 x i8]* @.str.1 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i64 1
  %17 = bitcast %struct.merge_index_entry* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 8 bitcast (%struct.merge_index_entry* @UNCHANGED_INDEX_ENTRY to i8*), i64 32, i1 false)
  %18 = getelementptr inbounds [4 x %struct.merge_reuc_entry], [4 x %struct.merge_reuc_entry]* %2, i64 0, i64 0
  %19 = bitcast %struct.merge_reuc_entry* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.merge_reuc_entry* @AUTOMERGEABLE_REUC_ENTRY to i8*), i64 4, i1 false)
  %20 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %18, i64 1
  %21 = bitcast %struct.merge_reuc_entry* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.merge_reuc_entry* @CONFLICTING_REUC_ENTRY to i8*), i64 4, i1 false)
  %22 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %20, i64 1
  %23 = bitcast %struct.merge_reuc_entry* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.merge_reuc_entry* @REMOVED_IN_BRANCH_REUC_ENTRY to i8*), i64 4, i1 false)
  %24 = getelementptr inbounds %struct.merge_reuc_entry, %struct.merge_reuc_entry* %22, i64 1
  %25 = bitcast %struct.merge_reuc_entry* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.merge_reuc_entry* @REMOVED_IN_MASTER_REUC_ENTRY to i8*), i64 4, i1 false)
  %26 = load i32, i32* @GIT_MERGE_FILE_FAVOR_THEIRS, align 4
  %27 = call i32 @merge_simple_branch(i32 %26, i32 0)
  %28 = load i32, i32* @repo_index, align 4
  %29 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %1, i64 0, i64 0
  %30 = call i32 @merge_test_index(i32 %28, %struct.merge_index_entry* %29, i32 6)
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32, i32* @repo_index, align 4
  %33 = getelementptr inbounds [4 x %struct.merge_reuc_entry], [4 x %struct.merge_reuc_entry]* %2, i64 0, i64 0
  %34 = call i32 @merge_test_reuc(i32 %32, %struct.merge_reuc_entry* %33, i32 4)
  %35 = call i32 @cl_assert(i32 %34)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @merge_simple_branch(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @merge_test_reuc(i32, %struct.merge_reuc_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
