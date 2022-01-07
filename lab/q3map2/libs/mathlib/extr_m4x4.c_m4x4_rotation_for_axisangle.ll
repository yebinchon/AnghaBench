; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_rotation_for_axisangle.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_rotation_for_axisangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4x4_rotation_for_axisangle(i32 %0, float* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca double, align 8
  %7 = alloca float*, align 8
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = fmul double %8, 5.000000e-01
  store double %9, double* %6, align 8
  %10 = load double, double* %6, align 8
  %11 = fptrunc double %10 to float
  %12 = call i64 @sin(float %11)
  %13 = sitofp i64 %12 to float
  %14 = load float*, float** %7, align 8
  %15 = getelementptr inbounds float, float* %14, i64 3
  store float %13, float* %15, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 3
  %21 = load float, float* %20, align 4
  %22 = fmul float %18, %21
  %23 = load float*, float** %7, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  store float %22, float* %24, align 4
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %7, align 8
  %29 = getelementptr inbounds float, float* %28, i64 3
  %30 = load float, float* %29, align 4
  %31 = fmul float %27, %30
  %32 = load float*, float** %7, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  store float %31, float* %33, align 4
  %34 = load float*, float** %5, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %7, align 8
  %38 = getelementptr inbounds float, float* %37, i64 3
  %39 = load float, float* %38, align 4
  %40 = fmul float %36, %39
  %41 = load float*, float** %7, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  store float %40, float* %42, align 4
  %43 = load double, double* %6, align 8
  %44 = fptrunc double %43 to float
  %45 = call i64 @cos(float %44)
  %46 = sitofp i64 %45 to float
  %47 = load float*, float** %7, align 8
  %48 = getelementptr inbounds float, float* %47, i64 3
  store float %46, float* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load float*, float** %7, align 8
  %51 = call i32 @m4x4_rotation_for_quat(i32 %49, float* %50)
  ret void
}

declare dso_local i64 @sin(float) #1

declare dso_local i64 @cos(float) #1

declare dso_local i32 @m4x4_rotation_for_quat(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
