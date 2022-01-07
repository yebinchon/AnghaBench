; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcTurbulentTexCoords.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcTurbulentTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, i32, double** }
%struct.TYPE_6__ = type { float* }
%struct.TYPE_5__ = type { double, double, float }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FUNCTABLE_SIZE = common dso_local global double 0.000000e+00, align 8
@FUNCTABLE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcTurbulentTexCoords(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fmul double %12, %15
  %17 = fadd double %11, %16
  store double %17, double* %6, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %93, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %98

22:                                               ; preds = %18
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  store float %25, float* %7, align 4
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  store float %28, float* %8, align 4
  %29 = load float, float* %7, align 4
  %30 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %31 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double*, double** %31, i64 %33
  %35 = load double*, double** %34, align 8
  %36 = getelementptr inbounds double, double* %35, i64 0
  %37 = load double, double* %36, align 8
  %38 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double*, double** %38, i64 %40
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  %44 = load double, double* %43, align 8
  %45 = fadd double %37, %44
  %46 = fmul double %45, 1.000000e+00
  %47 = fdiv double %46, 1.280000e+02
  %48 = fmul double %47, 1.250000e-01
  %49 = load double, double* %6, align 8
  %50 = fadd double %48, %49
  %51 = load double, double* @FUNCTABLE_SIZE, align 8
  %52 = fmul double %50, %51
  %53 = fptoui double %52 to i64
  %54 = load i64, i64* @FUNCTABLE_MASK, align 8
  %55 = and i64 %53, %54
  %56 = getelementptr inbounds float, float* %30, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load float, float* %59, align 8
  %61 = fmul float %57, %60
  %62 = fadd float %29, %61
  %63 = load float*, float** %4, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  store float %62, float* %64, align 4
  %65 = load float, float* %8, align 4
  %66 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %67 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double*, double** %67, i64 %69
  %71 = load double*, double** %70, align 8
  %72 = getelementptr inbounds double, double* %71, i64 1
  %73 = load double, double* %72, align 8
  %74 = fmul double %73, 1.000000e+00
  %75 = fdiv double %74, 1.280000e+02
  %76 = fmul double %75, 1.250000e-01
  %77 = load double, double* %6, align 8
  %78 = fadd double %76, %77
  %79 = load double, double* @FUNCTABLE_SIZE, align 8
  %80 = fmul double %78, %79
  %81 = fptoui double %80 to i64
  %82 = load i64, i64* @FUNCTABLE_MASK, align 8
  %83 = and i64 %81, %82
  %84 = getelementptr inbounds float, float* %66, i64 %83
  %85 = load float, float* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load float, float* %87, align 8
  %89 = fmul float %85, %88
  %90 = fadd float %65, %89
  %91 = load float*, float** %4, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  store float %90, float* %92, align 4
  br label %93

93:                                               ; preds = %22
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  %96 = load float*, float** %4, align 8
  %97 = getelementptr inbounds float, float* %96, i64 2
  store float* %97, float** %4, align 8
  br label %18

98:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
