; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcScrollTexCoords.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcScrollTexCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, i32 }

@tess = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcScrollTexCoords(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  store double %9, double* %6, align 8
  %10 = load float*, float** %3, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = load double, double* %6, align 8
  %15 = fmul double %13, %14
  store double %15, double* %7, align 8
  %16 = load float*, float** %3, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = load double, double* %6, align 8
  %21 = fmul double %19, %20
  store double %21, double* %8, align 8
  %22 = load double, double* %7, align 8
  %23 = load double, double* %7, align 8
  %24 = call double @llvm.floor.f64(double %23)
  %25 = fsub double %22, %24
  store double %25, double* %7, align 8
  %26 = load double, double* %8, align 8
  %27 = load double, double* %8, align 8
  %28 = call double @llvm.floor.f64(double %27)
  %29 = fsub double %26, %28
  store double %29, double* %8, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %49, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load double, double* %7, align 8
  %36 = load float*, float** %4, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fpext float %38 to double
  %40 = fadd double %39, %35
  %41 = fptrunc double %40 to float
  store float %41, float* %37, align 4
  %42 = load double, double* %8, align 8
  %43 = load float*, float** %4, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = fadd double %46, %42
  %48 = fptrunc double %47 to float
  store float %48, float* %44, align 4
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load float*, float** %4, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  store float* %53, float** %4, align 8
  br label %30

54:                                               ; preds = %30
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
