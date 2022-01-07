; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_unpack_trees_start.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_unpack_trees_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.index_state, %struct.TYPE_8__, i64 }
%struct.index_state = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.index_state*, %struct.index_state*, i32 }
%struct.TYPE_6__ = type { %struct.index_state* }
%struct.tree = type { i32 }
%struct.tree_desc = type { i32 }

@threeway_merge = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.tree*, %struct.tree*, %struct.tree*)* @unpack_trees_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_trees_start(%struct.merge_options* %0, %struct.tree* %1, %struct.tree* %2, %struct.tree* %3) #0 {
  %5 = alloca %struct.merge_options*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca %struct.tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.tree_desc], align 4
  %11 = alloca %struct.index_state, align 8
  store %struct.merge_options* %0, %struct.merge_options** %5, align 8
  store %struct.tree* %1, %struct.tree** %6, align 8
  store %struct.tree* %2, %struct.tree** %7, align 8
  store %struct.tree* %3, %struct.tree** %8, align 8
  %12 = bitcast %struct.index_state* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %14 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @memset(%struct.TYPE_8__* %16, i32 0, i32 48)
  %18 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %19 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %26 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %36

30:                                               ; preds = %4
  %31 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %32 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %38 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %43 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 2, i32* %46, align 4
  %47 = load i32, i32* @threeway_merge, align 4
  %48 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %49 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 7
  store i32 %47, i32* %52, align 8
  %53 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %54 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.index_state*, %struct.index_state** %56, align 8
  %58 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %59 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store %struct.index_state* %57, %struct.index_state** %62, align 8
  %63 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %64 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  store %struct.index_state* %11, %struct.index_state** %67, align 8
  %68 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %69 = call i32 @merge_detect_rename(%struct.merge_options* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %74 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  store i32 %72, i32* %77, align 8
  %78 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %79 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = call i32 @setup_unpack_trees_porcelain(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %83 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %10, i64 0, i64 0
  %84 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %83, i64 0
  %85 = load %struct.tree*, %struct.tree** %6, align 8
  %86 = call i32 @init_tree_desc_from_tree(%struct.tree_desc* %84, %struct.tree* %85)
  %87 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %10, i64 0, i64 0
  %88 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %87, i64 1
  %89 = load %struct.tree*, %struct.tree** %7, align 8
  %90 = call i32 @init_tree_desc_from_tree(%struct.tree_desc* %88, %struct.tree* %89)
  %91 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %10, i64 0, i64 0
  %92 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %91, i64 2
  %93 = load %struct.tree*, %struct.tree** %8, align 8
  %94 = call i32 @init_tree_desc_from_tree(%struct.tree_desc* %92, %struct.tree* %93)
  %95 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %10, i64 0, i64 0
  %96 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %97 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = call i32 @unpack_trees(i32 3, %struct.tree_desc* %95, %struct.TYPE_8__* %99)
  store i32 %100, i32* %9, align 4
  %101 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %102 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.index_state*, %struct.index_state** %104, align 8
  %106 = getelementptr inbounds %struct.index_state, %struct.index_state* %105, i32 0, i32 0
  %107 = call i32 @cache_tree_free(i32* %106)
  %108 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %109 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %113 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.index_state*, %struct.index_state** %115, align 8
  %117 = bitcast %struct.index_state* %111 to i8*
  %118 = bitcast %struct.index_state* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 16, i1 false)
  %119 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %120 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.index_state*, %struct.index_state** %122, align 8
  %124 = bitcast %struct.index_state* %123 to i8*
  %125 = bitcast %struct.index_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 16, i1 false)
  %126 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %127 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %131 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 5
  store %struct.index_state* %129, %struct.index_state** %134, align 8
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @merge_detect_rename(%struct.merge_options*) #2

declare dso_local i32 @setup_unpack_trees_porcelain(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @init_tree_desc_from_tree(%struct.tree_desc*, %struct.tree*) #2

declare dso_local i32 @unpack_trees(i32, %struct.tree_desc*, %struct.TYPE_8__*) #2

declare dso_local i32 @cache_tree_free(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
