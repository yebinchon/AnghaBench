; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcDeformVertexes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcDeformVertexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32**, i64 }
%struct.TYPE_5__ = type { float, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }

@tess = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcDeformVertexes(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 2), align 8
  %11 = inttoptr i64 %10 to float*
  store float* %11, float** %6, align 8
  %12 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 1), align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call float @EvalWaveForm(%struct.TYPE_7__* %22)
  store float %23, float* %5, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %59, %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 0), align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load float*, float** %4, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @R_VaoUnpackNormal(float* %29, i32* %30)
  %32 = load float*, float** %4, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = load float, float* %5, align 4
  %36 = fmul float %34, %35
  %37 = load float*, float** %6, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = fadd float %39, %36
  store float %40, float* %38, align 4
  %41 = load float*, float** %4, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = load float, float* %5, align 4
  %45 = fmul float %43, %44
  %46 = load float*, float** %6, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = fadd float %48, %45
  store float %49, float* %47, align 4
  %50 = load float*, float** %4, align 8
  %51 = getelementptr inbounds float, float* %50, i64 2
  %52 = load float, float* %51, align 4
  %53 = load float, float* %5, align 4
  %54 = fmul float %52, %53
  %55 = load float*, float** %6, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, %54
  store float %58, float* %56, align 4
  br label %59

59:                                               ; preds = %28
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  %62 = load float*, float** %6, align 8
  %63 = getelementptr inbounds float, float* %62, i64 4
  store float* %63, float** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %7, align 8
  br label %24

66:                                               ; preds = %24
  br label %153

67:                                               ; preds = %1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call float* @TableForFunc(i32 %71)
  store float* %72, float** %8, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %145, %67
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 0), align 8
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %152

77:                                               ; preds = %73
  %78 = load float*, float** %6, align 8
  %79 = getelementptr inbounds float, float* %78, i64 0
  %80 = load float, float* %79, align 4
  %81 = load float*, float** %6, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  %83 = load float, float* %82, align 4
  %84 = fadd float %80, %83
  %85 = load float*, float** %6, align 8
  %86 = getelementptr inbounds float, float* %85, i64 2
  %87 = load float, float* %86, align 4
  %88 = fadd float %84, %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load float, float* %90, align 8
  %92 = fmul float %88, %91
  store float %92, float* %9, align 4
  %93 = load float*, float** %8, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to float
  %107 = load float, float* %9, align 4
  %108 = fadd float %106, %107
  %109 = fptosi float %108 to i64
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call float @WAVEVALUE(float* %93, i32 %97, i32 %101, i64 %109, i64 %113)
  store float %114, float* %5, align 4
  %115 = load float*, float** %4, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @R_VaoUnpackNormal(float* %115, i32* %116)
  %118 = load float*, float** %4, align 8
  %119 = getelementptr inbounds float, float* %118, i64 0
  %120 = load float, float* %119, align 4
  %121 = load float, float* %5, align 4
  %122 = fmul float %120, %121
  %123 = load float*, float** %6, align 8
  %124 = getelementptr inbounds float, float* %123, i64 0
  %125 = load float, float* %124, align 4
  %126 = fadd float %125, %122
  store float %126, float* %124, align 4
  %127 = load float*, float** %4, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  %129 = load float, float* %128, align 4
  %130 = load float, float* %5, align 4
  %131 = fmul float %129, %130
  %132 = load float*, float** %6, align 8
  %133 = getelementptr inbounds float, float* %132, i64 1
  %134 = load float, float* %133, align 4
  %135 = fadd float %134, %131
  store float %135, float* %133, align 4
  %136 = load float*, float** %4, align 8
  %137 = getelementptr inbounds float, float* %136, i64 2
  %138 = load float, float* %137, align 4
  %139 = load float, float* %5, align 4
  %140 = fmul float %138, %139
  %141 = load float*, float** %6, align 8
  %142 = getelementptr inbounds float, float* %141, i64 2
  %143 = load float, float* %142, align 4
  %144 = fadd float %143, %140
  store float %144, float* %142, align 4
  br label %145

145:                                              ; preds = %77
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  %148 = load float*, float** %6, align 8
  %149 = getelementptr inbounds float, float* %148, i64 4
  store float* %149, float** %6, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %7, align 8
  br label %73

152:                                              ; preds = %73
  br label %153

153:                                              ; preds = %152, %66
  ret void
}

declare dso_local float @EvalWaveForm(%struct.TYPE_7__*) #1

declare dso_local i32 @R_VaoUnpackNormal(float*, i32*) #1

declare dso_local float* @TableForFunc(i32) #1

declare dso_local float @WAVEVALUE(float*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
