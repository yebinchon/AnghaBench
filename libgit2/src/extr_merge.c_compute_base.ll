; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_compute_base.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_compute_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, i32*, i32 }

@GIT_ARRAY_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GIT_MERGE_NO_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, %struct.TYPE_16__*, i64)* @compute_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_base(i32** %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_16__* %4, i64 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = bitcast %struct.TYPE_17__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_ARRAY_INIT to i8*), i64 8, i1 false)
  %23 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %24 = bitcast %struct.TYPE_16__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %25 = load i32**, i32*** %7, align 8
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %30 = call i32 @memcpy(%struct.TYPE_16__* %18, %struct.TYPE_16__* %29, i32 16)
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @insert_head_ids(%struct.TYPE_17__* %13, i32* %32)
  store i32 %33, i32* %21, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @insert_head_ids(%struct.TYPE_17__* %13, i32* %36)
  store i32 %37, i32* %21, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @git_merge_bases_many(%struct.TYPE_15__* %14, i32* %40, i32 %42, i32 %44)
  store i32 %45, i32* %21, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %35, %31
  br label %115

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GIT_MERGE_NO_RECURSIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i64 [ 0, %54 ], [ %57, %55 ]
  store i64 %59, i64* %20, align 8
  %60 = load i64, i64* %20, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @git_oidarray__reverse(%struct.TYPE_15__* %14)
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i32 @git_annotated_commit_lookup(i32** %15, i32* %65, i32* %68)
  store i32 %69, i32* %21, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %115

72:                                               ; preds = %64
  store i64 1, i64* %19, align 8
  br label %73

73:                                               ; preds = %111, %72
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %20, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %114

89:                                               ; preds = %83, %77
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %19, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @git_annotated_commit_lookup(i32** %16, i32* %90, i32* %94)
  store i32 %95, i32* %21, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %89
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @create_virtual_base(i32** %17, i32* %98, i32* %99, i32* %100, %struct.TYPE_16__* %18, i64 %101)
  store i32 %102, i32* %21, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %89
  br label %115

105:                                              ; preds = %97
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @git_annotated_commit_free(i32* %106)
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @git_annotated_commit_free(i32* %108)
  %110 = load i32*, i32** %17, align 8
  store i32* %110, i32** %15, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %16, align 8
  br label %111

111:                                              ; preds = %105
  %112 = load i64, i64* %19, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %19, align 8
  br label %73

114:                                              ; preds = %88, %73
  br label %115

115:                                              ; preds = %114, %104, %71, %47
  %116 = load i32, i32* %21, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %15, align 8
  %120 = load i32**, i32*** %7, align 8
  store i32* %119, i32** %120, align 8
  br label %124

121:                                              ; preds = %115
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @git_annotated_commit_free(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @git_annotated_commit_free(i32* %125)
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @git_annotated_commit_free(i32* %127)
  %129 = call i32 @git_oidarray_free(%struct.TYPE_15__* %14)
  %130 = bitcast %struct.TYPE_17__* %13 to i64*
  %131 = load i64, i64* %130, align 4
  %132 = call i32 @git_array_clear(i64 %131)
  %133 = load i32, i32* %21, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @insert_head_ids(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @git_merge_bases_many(%struct.TYPE_15__*, i32*, i32, i32) #2

declare dso_local i32 @git_oidarray__reverse(%struct.TYPE_15__*) #2

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32*, i32*) #2

declare dso_local i32 @create_virtual_base(i32**, i32*, i32*, i32*, %struct.TYPE_16__*, i64) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_oidarray_free(%struct.TYPE_15__*) #2

declare dso_local i32 @git_array_clear(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
