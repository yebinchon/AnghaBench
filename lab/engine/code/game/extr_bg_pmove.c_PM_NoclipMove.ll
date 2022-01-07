; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_NoclipMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_NoclipMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { float*, i32, i32 }
%struct.TYPE_8__ = type { float, float, i64 }
%struct.TYPE_6__ = type { float, float*, float* }

@DEFAULT_VIEWHEIGHT = common dso_local global i32 0, align 4
@pm = common dso_local global %struct.TYPE_7__* null, align 8
@vec3_origin = common dso_local global float* null, align 8
@pm_friction = common dso_local global double 0.000000e+00, align 8
@pm_stopspeed = common dso_local global float 0.000000e+00, align 4
@pml = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@pm_accelerate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_NoclipMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_NoclipMove() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = load i32, i32* @DEFAULT_VIEWHEIGHT, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 %13, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = call float @VectorLength(float* %22)
  store float %23, float* %1, align 4
  %24 = load float, float* %1, align 4
  %25 = fcmp olt float %24, 1.000000e+00
  br i1 %25, label %26, label %34

26:                                               ; preds = %0
  %27 = load float*, float** @vec3_origin, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = call i32 @VectorCopy(float* %27, float* %32)
  br label %76

34:                                               ; preds = %0
  store float 0.000000e+00, float* %2, align 4
  %35 = load double, double* @pm_friction, align 8
  %36 = fmul double %35, 1.500000e+00
  %37 = fptrunc double %36 to float
  store float %37, float* %3, align 4
  %38 = load float, float* %1, align 4
  %39 = load float, float* @pm_stopspeed, align 4
  %40 = fcmp olt float %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load float, float* @pm_stopspeed, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load float, float* %1, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi float [ %42, %41 ], [ %44, %43 ]
  store float %46, float* %4, align 4
  %47 = load float, float* %4, align 4
  %48 = load float, float* %3, align 4
  %49 = fmul float %47, %48
  %50 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pml, i32 0, i32 0), align 8
  %51 = fmul float %49, %50
  %52 = load float, float* %2, align 4
  %53 = fadd float %52, %51
  store float %53, float* %2, align 4
  %54 = load float, float* %1, align 4
  %55 = load float, float* %2, align 4
  %56 = fsub float %54, %55
  store float %56, float* %5, align 4
  %57 = load float, float* %5, align 4
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store float 0.000000e+00, float* %5, align 4
  br label %60

60:                                               ; preds = %59, %45
  %61 = load float, float* %1, align 4
  %62 = load float, float* %5, align 4
  %63 = fdiv float %62, %61
  store float %63, float* %5, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load float*, float** %67, align 8
  %69 = load float, float* %5, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load float*, float** %73, align 8
  %75 = call i32 @VectorScale(float* %68, float %69, float* %74)
  br label %76

76:                                               ; preds = %60, %26
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = call float @PM_CmdScale(%struct.TYPE_8__* %78)
  store float %79, float* %12, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 8
  store float %83, float* %8, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  store float %87, float* %9, align 4
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %111, %76
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pml, i32 0, i32 1), align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  %97 = load float, float* %8, align 4
  %98 = fmul float %96, %97
  %99 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pml, i32 0, i32 2), align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  %103 = load float, float* %102, align 4
  %104 = load float, float* %9, align 4
  %105 = fmul float %103, %104
  %106 = fadd float %98, %105
  %107 = load float*, float** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %106, float* %110, align 4
  br label %111

111:                                              ; preds = %91
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to float
  %120 = load float*, float** %7, align 8
  %121 = getelementptr inbounds float, float* %120, i64 2
  %122 = load float, float* %121, align 4
  %123 = fadd float %122, %119
  store float %123, float* %121, align 4
  %124 = load float*, float** %7, align 8
  %125 = load float*, float** %10, align 8
  %126 = call i32 @VectorCopy(float* %124, float* %125)
  %127 = load float*, float** %10, align 8
  %128 = call float @VectorNormalize(float* %127)
  store float %128, float* %11, align 4
  %129 = load float, float* %12, align 4
  %130 = load float, float* %11, align 4
  %131 = fmul float %130, %129
  store float %131, float* %11, align 4
  %132 = load float*, float** %10, align 8
  %133 = load float, float* %11, align 4
  %134 = load i32, i32* @pm_accelerate, align 4
  %135 = call i32 @PM_Accelerate(float* %132, float %133, i32 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pml, i32 0, i32 0), align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load float*, float** %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @VectorMA(i32 %140, float %141, float* %146, i32 %151)
  ret void
}

declare dso_local float @VectorLength(float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local float @PM_CmdScale(%struct.TYPE_8__*) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local i32 @PM_Accelerate(float*, float, i32) #1

declare dso_local i32 @VectorMA(i32, float, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
