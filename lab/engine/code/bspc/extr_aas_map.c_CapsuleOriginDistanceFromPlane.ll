; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_CapsuleOriginDistanceFromPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_CapsuleOriginDistanceFromPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @CapsuleOriginDistanceFromPlane(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %12 = load float*, float** %7, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %6, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fsub float %14, %17
  store float %18, float* %10, align 4
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 2
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %6, align 8
  %23 = getelementptr inbounds float, float* %22, i64 2
  %24 = load float, float* %23, align 4
  %25 = fsub float %21, %24
  %26 = load float, float* %10, align 4
  %27 = fcmp olt float %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load float*, float** %7, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %6, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = fsub float %31, %34
  store float %35, float* %10, align 4
  br label %36

36:                                               ; preds = %28, %3
  %37 = load float, float* %10, align 4
  %38 = fpext float %37 to double
  %39 = fmul double %38, 5.000000e-01
  %40 = fptrunc double %39 to float
  store float %40, float* %11, align 4
  %41 = load float*, float** %7, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  %43 = load float, float* %42, align 4
  %44 = load float, float* %11, align 4
  %45 = fsub float %43, %44
  store float %45, float* %8, align 4
  %46 = load float*, float** %6, align 8
  %47 = getelementptr inbounds float, float* %46, i64 2
  %48 = load float, float* %47, align 4
  %49 = fneg float %48
  %50 = load float, float* %11, align 4
  %51 = fsub float %49, %50
  store float %51, float* %9, align 4
  %52 = load float*, float** %5, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %64

56:                                               ; preds = %36
  %57 = load float*, float** %5, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = load float, float* %9, align 4
  %61 = fmul float %59, %60
  %62 = load float, float* %11, align 4
  %63 = fadd float %61, %62
  store float %63, float* %4, align 4
  br label %73

64:                                               ; preds = %36
  %65 = load float*, float** %5, align 8
  %66 = getelementptr inbounds float, float* %65, i64 2
  %67 = load float, float* %66, align 4
  %68 = fneg float %67
  %69 = load float, float* %8, align 4
  %70 = fmul float %68, %69
  %71 = load float, float* %11, align 4
  %72 = fadd float %70, %71
  store float %72, float* %4, align 4
  br label %73

73:                                               ; preds = %64, %56
  %74 = load float, float* %4, align 4
  ret float %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
