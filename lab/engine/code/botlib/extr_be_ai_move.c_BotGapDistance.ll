; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotGapDistance.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotGapDistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { float }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@sv_maxbarrier = common dso_local global %struct.TYPE_7__* null, align 8
@sv_maxstep = common dso_local global %struct.TYPE_6__* null, align 8
@CONTENTS_WATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotGapDistance(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @VectorCopy(i32* %15, i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @VectorCopy(i32* %18, i32* %19)
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 60
  store i32 %24, i32* %22, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @PRESENCE_CROUCH, align 4
  %28 = load i32, i32* %7, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_5__* sret %13, i32* %25, i32* %26, i32 %27, i32 %28)
  %29 = bitcast %struct.TYPE_5__* %12 to i8*
  %30 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store float 1.000000e+00, float* %4, align 4
  br label %120

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = sitofp i32 %40 to float
  store float %41, float* %9, align 4
  store i32 8, i32* %8, align 4
  br label %42

42:                                               ; preds = %116, %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 100
  br i1 %44, label %45, label %119

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @VectorMA(i32* %46, i32 %47, i32* %48, i32* %49)
  %51 = load float, float* %9, align 4
  %52 = fadd float %51, 2.400000e+01
  %53 = fptosi float %52 to i32
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @VectorCopy(i32* %56, i32* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sv_maxbarrier, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 48, %61
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* @PRESENCE_CROUCH, align 4
  %72 = load i32, i32* %7, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_5__* sret %14, i32* %69, i32* %70, i32 %71, i32 %72)
  %73 = bitcast %struct.TYPE_5__* %12 to i8*
  %74 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %45
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to float
  %84 = load float, float* %9, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sv_maxstep, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fsub float %84, %87
  %89 = fsub float %88, 8.000000e+00
  %90 = fcmp olt float %83, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @VectorCopy(i32* %93, i32* %94)
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 20
  store i32 %99, i32* %97, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @AAS_PointContents(i32* %100)
  %102 = load i32, i32* @CONTENTS_WATER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %119

106:                                              ; preds = %91
  %107 = load i32, i32* %8, align 4
  %108 = sitofp i32 %107 to float
  store float %108, float* %4, align 4
  br label %120

109:                                              ; preds = %78
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to float
  store float %114, float* %9, align 4
  br label %115

115:                                              ; preds = %109, %45
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 8
  store i32 %118, i32* %8, align 4
  br label %42

119:                                              ; preds = %105, %42
  store float 0.000000e+00, float* %4, align 4
  br label %120

120:                                              ; preds = %119, %106, %34
  %121 = load float, float* %4, align 4
  ret float %121
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local void @AAS_TraceClientBBox(%struct.TYPE_5__* sret, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @AAS_PointContents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
