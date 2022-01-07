; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_treediff.c_test_merge_trees_treediff__best_renames.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_treediff.c_test_merge_trees_treediff__best_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_conflict_data = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i8*, i32 }

@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_NONE = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_RENAMED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_RENAMED_MODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_MODIFIED_DELETED = common dso_local global i32 0, align 4
@TREE_OID_ANCESTOR = common dso_local global i32 0, align 4
@TREE_OID_MASTER = common dso_local global i32 0, align 4
@TREE_OID_RENAMES2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_treediff__best_renames() #0 {
  %1 = alloca [7 x %struct.merge_index_conflict_data], align 16
  %2 = bitcast [7 x %struct.merge_index_conflict_data]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 896, i1 false)
  %3 = getelementptr inbounds [7 x %struct.merge_index_conflict_data], [7 x %struct.merge_index_conflict_data]* %1, i64 0, i64 0
  %4 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 0
  store i32 0, i32* %4, align 16
  %5 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 33188, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 16
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i64 1
  %19 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 0
  store i32 33188, i32* %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 33188, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 33188, i32* %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* @GIT_MERGE_DIFF_RENAMED_MODIFIED, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i64 1
  %34 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 0
  store i32 33188, i32* %34, align 16
  %35 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 33188, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 33188, i32* %41, align 16
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i64 1
  %49 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 0
  store i32 33188, i32* %49, align 16
  %50 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 33188, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 33188, i32* %56, align 16
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i64 1
  %64 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 0
  store i32 33188, i32* %64, align 16
  %65 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %69, i32* %68, align 8
  %70 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 33188, i32* %71, align 16
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %74, i32* %73, align 8
  %75 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* @GIT_MERGE_DIFF_MODIFIED_DELETED, align 4
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i64 1
  %79 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 0
  store i32 0, i32* %79, align 16
  %80 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 33188, i32* %86, align 16
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %92, i32* %91, align 8
  %93 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i64 1
  %94 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 0
  store i32 0, i32* %94, align 16
  %95 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %99, i32* %98, align 8
  %100 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 33188, i32* %101, align 16
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %107, i32* %106, align 8
  %108 = load i32, i32* @TREE_OID_ANCESTOR, align 4
  %109 = load i32, i32* @TREE_OID_MASTER, align 4
  %110 = load i32, i32* @TREE_OID_RENAMES2, align 4
  %111 = getelementptr inbounds [7 x %struct.merge_index_conflict_data], [7 x %struct.merge_index_conflict_data]* %1, i64 0, i64 0
  %112 = call i32 @test_find_differences(i32 %108, i32 %109, i32 %110, %struct.merge_index_conflict_data* %111, i32 7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_find_differences(i32, i32, i32, %struct.merge_index_conflict_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
