; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcScrollTexMatrix.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcScrollTexMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@tess = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcScrollTexMatrix(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  store double %8, double* %5, align 8
  %9 = load float*, float** %3, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = load double, double* %5, align 8
  %14 = fmul double %12, %13
  store double %14, double* %6, align 8
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = fpext float %17 to double
  %19 = load double, double* %5, align 8
  %20 = fmul double %18, %19
  store double %20, double* %7, align 8
  %21 = load double, double* %6, align 8
  %22 = load double, double* %6, align 8
  %23 = call double @llvm.floor.f64(double %22)
  %24 = fsub double %21, %23
  store double %24, double* %6, align 8
  %25 = load double, double* %7, align 8
  %26 = load double, double* %7, align 8
  %27 = call double @llvm.floor.f64(double %26)
  %28 = fsub double %25, %27
  store double %28, double* %7, align 8
  %29 = load float*, float** %4, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  store float 1.000000e+00, float* %30, align 4
  %31 = load float*, float** %4, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  store float 0.000000e+00, float* %32, align 4
  %33 = load double, double* %6, align 8
  %34 = fptrunc double %33 to float
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 4
  store float %34, float* %36, align 4
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float 0.000000e+00, float* %38, align 4
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 3
  store float 1.000000e+00, float* %40, align 4
  %41 = load double, double* %7, align 8
  %42 = fptrunc double %41 to float
  %43 = load float*, float** %4, align 8
  %44 = getelementptr inbounds float, float* %43, i64 5
  store float %42, float* %44, align 4
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
