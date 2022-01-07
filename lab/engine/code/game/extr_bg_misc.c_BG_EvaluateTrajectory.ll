; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_EvaluateTrajectory.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_EvaluateTrajectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4
@DEFAULT_GRAVITY = common dso_local global double 0.000000e+00, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"BG_EvaluateTrajectory: unknown trType: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BG_EvaluateTrajectory(%struct.TYPE_3__* %0, i32 %1, double* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %132 [
    i32 128, label %12
    i32 132, label %12
    i32 131, label %18
    i32 129, label %36
    i32 130, label %62
    i32 133, label %102
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load double*, double** %6, align 8
  %17 = call i32 @VectorCopy(i32 %15, double* %16)
  br label %138

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = sitofp i32 %23 to double
  %25 = fmul double %24, 1.000000e-03
  %26 = fptrunc double %25 to float
  store float %26, float* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load float, float* %7, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load double*, double** %6, align 8
  %35 = call i32 @VectorMA(i32 %29, float %30, i32 %33, double* %34)
  br label %138

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = sitofp i32 %41 to float
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %42, %46
  store float %47, float* %7, align 4
  %48 = load float, float* %7, align 4
  %49 = load float, float* @M_PI, align 4
  %50 = fmul float %48, %49
  %51 = fmul float %50, 2.000000e+00
  %52 = call float @sin(float %51)
  store float %52, float* %8, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load float, float* %8, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load double*, double** %6, align 8
  %61 = call i32 @VectorMA(i32 %55, float %56, i32 %59, double* %60)
  br label %138

62:                                               ; preds = %3
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = icmp sgt i32 %63, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %72, %62
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = sitofp i32 %85 to double
  %87 = fmul double %86, 1.000000e-03
  %88 = fptrunc double %87 to float
  store float %88, float* %7, align 4
  %89 = load float, float* %7, align 4
  %90 = fcmp olt float %89, 0.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store float 0.000000e+00, float* %7, align 4
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load float, float* %7, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load double*, double** %6, align 8
  %101 = call i32 @VectorMA(i32 %95, float %96, i32 %99, double* %100)
  br label %138

102:                                              ; preds = %3
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  %108 = sitofp i32 %107 to double
  %109 = fmul double %108, 1.000000e-03
  %110 = fptrunc double %109 to float
  store float %110, float* %7, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load float, float* %7, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load double*, double** %6, align 8
  %119 = call i32 @VectorMA(i32 %113, float %114, i32 %117, double* %118)
  %120 = load double, double* @DEFAULT_GRAVITY, align 8
  %121 = fmul double 5.000000e-01, %120
  %122 = load float, float* %7, align 4
  %123 = fpext float %122 to double
  %124 = fmul double %121, %123
  %125 = load float, float* %7, align 4
  %126 = fpext float %125 to double
  %127 = fmul double %124, %126
  %128 = load double*, double** %6, align 8
  %129 = getelementptr inbounds double, double* %128, i64 2
  %130 = load double, double* %129, align 8
  %131 = fsub double %130, %127
  store double %131, double* %129, align 8
  br label %138

132:                                              ; preds = %3
  %133 = load i32, i32* @ERR_DROP, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @Com_Error(i32 %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %102, %92, %36, %18, %12
  ret void
}

declare dso_local i32 @VectorCopy(i32, double*) #1

declare dso_local i32 @VectorMA(i32, float, i32, double*) #1

declare dso_local float @sin(float) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
