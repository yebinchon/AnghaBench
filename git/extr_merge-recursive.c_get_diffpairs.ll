; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_get_diffpairs.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_get_diffpairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32*, i64 }
%struct.merge_options = type { i64, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.tree = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.diff_options = type { i64, i32, i64, i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@DIFF_DETECT_RENAME = common dso_local global i64 0, align 8
@DIFF_FORMAT_NO_OUTPUT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_queue_struct* (%struct.merge_options*, %struct.tree*, %struct.tree*)* @get_diffpairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_queue_struct* @get_diffpairs(%struct.merge_options* %0, %struct.tree* %1, %struct.tree* %2) #0 {
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.diff_queue_struct*, align 8
  %8 = alloca %struct.diff_options, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  store %struct.tree* %2, %struct.tree** %6, align 8
  %9 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %10 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @repo_diff_setup(i32 %11, %struct.diff_options* %8)
  %13 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %18 = call i64 @merge_detect_rename(%struct.merge_options* %17)
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DIFF_DETECT_RENAME, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64, i64* @DIFF_DETECT_RENAME, align 8
  %26 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %29 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %34 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i64 [ %35, %32 ], [ 1000, %36 ]
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %42 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %46 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = load i8*, i8** @DIFF_FORMAT_NO_OUTPUT, align 8
  %50 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = call i32 @diff_setup_done(%struct.diff_options* %8)
  %52 = load %struct.tree*, %struct.tree** %5, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.tree*, %struct.tree** %6, align 8
  %56 = getelementptr inbounds %struct.tree, %struct.tree* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @diff_tree_oid(i32* %54, i32* %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %8)
  %59 = call i32 @diffcore_std(%struct.diff_options* %8)
  %60 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %63 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %61, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %37
  %69 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %72 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %37
  %76 = call %struct.diff_queue_struct* @xmalloc(i32 16)
  store %struct.diff_queue_struct* %76, %struct.diff_queue_struct** %7, align 8
  %77 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %7, align 8
  %78 = bitcast %struct.diff_queue_struct* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 bitcast (%struct.diff_queue_struct* @diff_queued_diff to i8*), i64 16, i1 false)
  %79 = load i8*, i8** @DIFF_FORMAT_NO_OUTPUT, align 8
  %80 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 3
  store i8* %79, i8** %80, align 8
  store i64 0, i64* getelementptr inbounds (%struct.diff_queue_struct, %struct.diff_queue_struct* @diff_queued_diff, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.diff_queue_struct, %struct.diff_queue_struct* @diff_queued_diff, i32 0, i32 0), align 8
  %81 = call i32 @diff_flush(%struct.diff_options* %8)
  %82 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %7, align 8
  ret %struct.diff_queue_struct* %82
}

declare dso_local i32 @repo_diff_setup(i32, %struct.diff_options*) #1

declare dso_local i64 @merge_detect_rename(%struct.merge_options*) #1

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #1

declare dso_local i32 @diff_tree_oid(i32*, i32*, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local %struct.diff_queue_struct* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
