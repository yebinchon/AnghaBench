; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcDeformVertexes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcDeformVertexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { float, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }

@tess = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcDeformVertexes(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 2), align 8
  %11 = inttoptr i64 %10 to float*
  store float* %11, float** %6, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 1), align 8
  %13 = inttoptr i64 %12 to float*
  store float* %13, float** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = call float @EvalWaveForm(%struct.TYPE_7__* %21)
  store float %22, float* %5, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %56, %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 0), align 8
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load float*, float** %7, align 8
  %29 = load float, float* %5, align 4
  %30 = load i64*, i64** %4, align 8
  %31 = call i32 @VectorScale(float* %28, float %29, i64* %30)
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to float
  %36 = load float*, float** %6, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fadd float %38, %35
  store float %39, float* %37, align 4
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = load float*, float** %6, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fadd float %46, %43
  store float %47, float* %45, align 4
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to float
  %52 = load float*, float** %6, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = fadd float %54, %51
  store float %55, float* %53, align 4
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  %59 = load float*, float** %6, align 8
  %60 = getelementptr inbounds float, float* %59, i64 4
  store float* %60, float** %6, align 8
  %61 = load float*, float** %7, align 8
  %62 = getelementptr inbounds float, float* %61, i64 4
  store float* %62, float** %7, align 8
  br label %23

63:                                               ; preds = %23
  br label %148

64:                                               ; preds = %1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call float* @TableForFunc(i32 %68)
  store float* %69, float** %8, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %140, %64
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tess, i32 0, i32 0), align 8
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %147

74:                                               ; preds = %70
  %75 = load float*, float** %6, align 8
  %76 = getelementptr inbounds float, float* %75, i64 0
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %6, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = fadd float %77, %80
  %82 = load float*, float** %6, align 8
  %83 = getelementptr inbounds float, float* %82, i64 2
  %84 = load float, float* %83, align 4
  %85 = fadd float %81, %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load float, float* %87, align 8
  %89 = fmul float %85, %88
  store float %89, float* %9, align 4
  %90 = load float*, float** %8, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to float
  %104 = load float, float* %9, align 4
  %105 = fadd float %103, %104
  %106 = fptosi float %105 to i64
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call float @WAVEVALUE(float* %90, i32 %94, i32 %98, i64 %106, i64 %110)
  store float %111, float* %5, align 4
  %112 = load float*, float** %7, align 8
  %113 = load float, float* %5, align 4
  %114 = load i64*, i64** %4, align 8
  %115 = call i32 @VectorScale(float* %112, float %113, i64* %114)
  %116 = load i64*, i64** %4, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to float
  %120 = load float*, float** %6, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = fadd float %122, %119
  store float %123, float* %121, align 4
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = sitofp i64 %126 to float
  %128 = load float*, float** %6, align 8
  %129 = getelementptr inbounds float, float* %128, i64 1
  %130 = load float, float* %129, align 4
  %131 = fadd float %130, %127
  store float %131, float* %129, align 4
  %132 = load i64*, i64** %4, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  %135 = sitofp i64 %134 to float
  %136 = load float*, float** %6, align 8
  %137 = getelementptr inbounds float, float* %136, i64 2
  %138 = load float, float* %137, align 4
  %139 = fadd float %138, %135
  store float %139, float* %137, align 4
  br label %140

140:                                              ; preds = %74
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  %143 = load float*, float** %6, align 8
  %144 = getelementptr inbounds float, float* %143, i64 4
  store float* %144, float** %6, align 8
  %145 = load float*, float** %7, align 8
  %146 = getelementptr inbounds float, float* %145, i64 4
  store float* %146, float** %7, align 8
  br label %70

147:                                              ; preds = %70
  br label %148

148:                                              ; preds = %147, %63
  ret void
}

declare dso_local float @EvalWaveForm(%struct.TYPE_7__*) #1

declare dso_local i32 @VectorScale(float*, float, i64*) #1

declare dso_local float* @TableForFunc(i32) #1

declare dso_local float @WAVEVALUE(float*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
