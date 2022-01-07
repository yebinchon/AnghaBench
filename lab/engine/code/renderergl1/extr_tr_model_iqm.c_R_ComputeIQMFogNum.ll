; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_R_ComputeIQMFogNum.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_R_ComputeIQMFogNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@__const.R_ComputeIQMFogNum.defaultBounds = private unnamed_addr constant [6 x i32] [i32 -8, i32 -8, i32 -8, i32 8, i32 8, i32 8], align 16
@tr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_ComputeIQMFogNum(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %15 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.R_ComputeIQMFogNum.defaultBounds to i8*), i64 24, i1 false)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %17 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 6, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  store i32* %36, i32** %9, align 8
  br label %39

37:                                               ; preds = %21
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @VectorSubtract(i32* %41, i32* %42, i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @VectorMA(i32* %45, float 5.000000e-01, i32* %46, i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @VectorAdd(i32 %52, i32* %53, i32* %54)
  %56 = load i32*, i32** %11, align 8
  %57 = call float @VectorLength(i32* %56)
  %58 = fmul float 5.000000e-01, %57
  %59 = fptosi float %58 to i32
  store i32 %59, i32* %14, align 4
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %124, %39
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %127

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %115, %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %118

76:                                               ; preds = %73
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %83, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %76
  br label %118

95:                                               ; preds = %76
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %102, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  br label %118

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %73

118:                                              ; preds = %113, %94, %73
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %128

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %60

127:                                              ; preds = %60
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %121, %20
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #2

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #2

declare dso_local i32 @VectorAdd(i32, i32*, i32*) #2

declare dso_local float @VectorLength(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
