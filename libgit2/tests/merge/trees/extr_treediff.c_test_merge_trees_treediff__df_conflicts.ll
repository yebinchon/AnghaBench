; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_treediff.c_test_merge_trees_treediff__df_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_treediff.c_test_merge_trees_treediff__df_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_conflict_data = type { i32, %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i8*, i32 }

@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_BOTH_ADDED = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_BOTH_DELETED = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_NONE = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_DIRECTORY_FILE = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_MERGE_DIFF_DF_CHILD = common dso_local global i32 0, align 4
@TREE_OID_DF_ANCESTOR = common dso_local global i32 0, align 4
@TREE_OID_DF_SIDE1 = common dso_local global i32 0, align 4
@TREE_OID_DF_SIDE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_treediff__df_conflicts() #0 {
  %1 = alloca [20 x %struct.merge_index_conflict_data], align 16
  %2 = bitcast [20 x %struct.merge_index_conflict_data]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 2560, i1 false)
  %3 = getelementptr inbounds [20 x %struct.merge_index_conflict_data], [20 x %struct.merge_index_conflict_data]* %1, i64 0, i64 0
  %4 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 0
  store i32 0, i32* %4, align 16
  %5 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 33188, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 33188, i32* %11, align 16
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* @GIT_MERGE_DIFF_BOTH_ADDED, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %3, i64 1
  %19 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 0
  store i32 33188, i32* %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 16
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* @GIT_MERGE_DIFF_BOTH_DELETED, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %18, i64 1
  %34 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 0
  store i32 0, i32* %34, align 16
  %35 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 33188, i32* %41, align 16
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %33, i64 1
  %49 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 0
  store i32 33188, i32* %49, align 16
  %50 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 33188, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 16
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %48, i64 1
  %64 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 0
  store i32 0, i32* %64, align 16
  %65 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %69, i32* %68, align 8
  %70 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 33188, i32* %71, align 16
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %74, i32* %73, align 8
  %75 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* @GIT_MERGE_DIFF_DIRECTORY_FILE, align 4
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %63, i64 1
  %79 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 0
  store i32 33188, i32* %79, align 16
  %80 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 33188, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 16
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* @GIT_MERGE_DIFF_DF_CHILD, align 4
  store i32 %92, i32* %91, align 8
  %93 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %78, i64 1
  %94 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 0
  store i32 0, i32* %94, align 16
  %95 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 33188, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %99, i32* %98, align 8
  %100 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 16
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %93, i64 1
  %109 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %108, i32 0, i32 0
  store i32 33188, i32* %109, align 16
  %110 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %108, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %114, i32* %113, align 8
  %115 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %108, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 33188, i32* %116, align 16
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %119, i32* %118, align 8
  %120 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %108, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %108, i64 1
  %124 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %123, i32 0, i32 0
  store i32 0, i32* %124, align 16
  %125 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %123, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 33188, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %129, i32* %128, align 8
  %130 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %123, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 16
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %134, i32* %133, align 8
  %135 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %123, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* @GIT_MERGE_DIFF_DIRECTORY_FILE, align 4
  store i32 %137, i32* %136, align 8
  %138 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %123, i64 1
  %139 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %138, i32 0, i32 0
  store i32 33188, i32* %139, align 16
  %140 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %138, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %144, i32* %143, align 8
  %145 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %138, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i32 33188, i32* %146, align 16
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %149, i32* %148, align 8
  %150 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %138, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* @GIT_MERGE_DIFF_DF_CHILD, align 4
  store i32 %152, i32* %151, align 8
  %153 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %138, i64 1
  %154 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %153, i32 0, i32 0
  store i32 33188, i32* %154, align 16
  %155 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %153, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 33188, i32* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %159, i32* %158, align 8
  %160 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %153, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 16
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %164, i32* %163, align 8
  %165 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %153, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %167, i32* %166, align 8
  %168 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %153, i64 1
  %169 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %168, i32 0, i32 0
  store i32 0, i32* %169, align 16
  %170 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %168, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %174, i32* %173, align 8
  %175 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %168, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  store i32 33188, i32* %176, align 16
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %179, i32* %178, align 8
  %180 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %168, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %182, i32* %181, align 8
  %183 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %168, i64 1
  %184 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %183, i32 0, i32 0
  store i32 33188, i32* %184, align 16
  %185 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %183, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 33188, i32* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %189, i32* %188, align 8
  %190 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %183, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 16
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %194, i32* %193, align 8
  %195 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %183, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* @GIT_MERGE_DIFF_DIRECTORY_FILE, align 4
  store i32 %197, i32* %196, align 8
  %198 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %183, i64 1
  %199 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %198, i32 0, i32 0
  store i32 0, i32* %199, align 16
  %200 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %198, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %204, i32* %203, align 8
  %205 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %198, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  store i32 33188, i32* %206, align 16
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %209, i32* %208, align 8
  %210 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %198, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* @GIT_MERGE_DIFF_DF_CHILD, align 4
  store i32 %212, i32* %211, align 8
  %213 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %198, i64 1
  %214 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %213, i32 0, i32 0
  store i32 33188, i32* %214, align 16
  %215 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %213, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %219, i32* %218, align 8
  %220 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %213, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  store i32 33188, i32* %221, align 16
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %224, i32* %223, align 8
  %225 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %213, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %227, i32* %226, align 8
  %228 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %213, i64 1
  %229 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %228, i32 0, i32 0
  store i32 0, i32* %229, align 16
  %230 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %228, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  store i32 33188, i32* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %234, i32* %233, align 8
  %235 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %228, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  store i32 0, i32* %236, align 16
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %239, i32* %238, align 8
  %240 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %228, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* @GIT_MERGE_DIFF_NONE, align 4
  store i32 %242, i32* %241, align 8
  %243 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %228, i64 1
  %244 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %243, i32 0, i32 0
  store i32 33188, i32* %244, align 16
  %245 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %243, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i32 0, i32* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %249, i32* %248, align 8
  %250 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %243, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  store i32 33188, i32* %251, align 16
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %254, i32* %253, align 8
  %255 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %243, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* @GIT_MERGE_DIFF_DIRECTORY_FILE, align 4
  store i32 %257, i32* %256, align 8
  %258 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %243, i64 1
  %259 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %258, i32 0, i32 0
  store i32 0, i32* %259, align 16
  %260 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %258, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  store i32 33188, i32* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %264, i32* %263, align 8
  %265 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %258, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  store i32 0, i32* %266, align 16
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %269, i32* %268, align 8
  %270 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %258, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* @GIT_MERGE_DIFF_DF_CHILD, align 4
  store i32 %272, i32* %271, align 8
  %273 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %258, i64 1
  %274 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %273, i32 0, i32 0
  store i32 33188, i32* %274, align 16
  %275 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %273, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  store i32 0, i32* %276, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %279, i32* %278, align 8
  %280 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %273, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  store i32 0, i32* %281, align 16
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %284, i32* %283, align 8
  %285 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %273, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32, i32* @GIT_MERGE_DIFF_BOTH_DELETED, align 4
  store i32 %287, i32* %286, align 8
  %288 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %273, i64 1
  %289 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %288, i32 0, i32 0
  store i32 0, i32* %289, align 16
  %290 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %288, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  store i32 33188, i32* %291, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %294, i32* %293, align 8
  %295 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %288, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  store i32 33188, i32* %296, align 16
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* @GIT_DELTA_ADDED, align 4
  store i32 %299, i32* %298, align 8
  %300 = getelementptr inbounds %struct.merge_index_conflict_data, %struct.merge_index_conflict_data* %288, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load i32, i32* @GIT_MERGE_DIFF_BOTH_ADDED, align 4
  store i32 %302, i32* %301, align 8
  %303 = load i32, i32* @TREE_OID_DF_ANCESTOR, align 4
  %304 = load i32, i32* @TREE_OID_DF_SIDE1, align 4
  %305 = load i32, i32* @TREE_OID_DF_SIDE2, align 4
  %306 = getelementptr inbounds [20 x %struct.merge_index_conflict_data], [20 x %struct.merge_index_conflict_data]* %1, i64 0, i64 0
  %307 = call i32 @test_find_differences(i32 %303, i32 %304, i32 %305, %struct.merge_index_conflict_data* %306, i32 20)
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
