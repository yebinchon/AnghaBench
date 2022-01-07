; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_Mat4Ortho.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_Mat4Ortho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Mat4Ortho(float %0, float %1, float %2, float %3, float %4, float %5, float* %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  store float %0, float* %8, align 4
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float* %6, float** %14, align 8
  %15 = load float, float* %9, align 4
  %16 = load float, float* %8, align 4
  %17 = fsub float %15, %16
  %18 = fdiv float 2.000000e+00, %17
  %19 = load float*, float** %14, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float %18, float* %20, align 4
  %21 = load float*, float** %14, align 8
  %22 = getelementptr inbounds float, float* %21, i64 4
  store float 0.000000e+00, float* %22, align 4
  %23 = load float*, float** %14, align 8
  %24 = getelementptr inbounds float, float* %23, i64 8
  store float 0.000000e+00, float* %24, align 4
  %25 = load float, float* %9, align 4
  %26 = load float, float* %8, align 4
  %27 = fadd float %25, %26
  %28 = fneg float %27
  %29 = load float, float* %9, align 4
  %30 = load float, float* %8, align 4
  %31 = fsub float %29, %30
  %32 = fdiv float %28, %31
  %33 = load float*, float** %14, align 8
  %34 = getelementptr inbounds float, float* %33, i64 12
  store float %32, float* %34, align 4
  %35 = load float*, float** %14, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = load float, float* %11, align 4
  %38 = load float, float* %10, align 4
  %39 = fsub float %37, %38
  %40 = fdiv float 2.000000e+00, %39
  %41 = load float*, float** %14, align 8
  %42 = getelementptr inbounds float, float* %41, i64 5
  store float %40, float* %42, align 4
  %43 = load float*, float** %14, align 8
  %44 = getelementptr inbounds float, float* %43, i64 9
  store float 0.000000e+00, float* %44, align 4
  %45 = load float, float* %11, align 4
  %46 = load float, float* %10, align 4
  %47 = fadd float %45, %46
  %48 = fneg float %47
  %49 = load float, float* %11, align 4
  %50 = load float, float* %10, align 4
  %51 = fsub float %49, %50
  %52 = fdiv float %48, %51
  %53 = load float*, float** %14, align 8
  %54 = getelementptr inbounds float, float* %53, i64 13
  store float %52, float* %54, align 4
  %55 = load float*, float** %14, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  store float 0.000000e+00, float* %56, align 4
  %57 = load float*, float** %14, align 8
  %58 = getelementptr inbounds float, float* %57, i64 6
  store float 0.000000e+00, float* %58, align 4
  %59 = load float, float* %13, align 4
  %60 = load float, float* %12, align 4
  %61 = fsub float %59, %60
  %62 = fdiv float 2.000000e+00, %61
  %63 = load float*, float** %14, align 8
  %64 = getelementptr inbounds float, float* %63, i64 10
  store float %62, float* %64, align 4
  %65 = load float, float* %13, align 4
  %66 = load float, float* %12, align 4
  %67 = fadd float %65, %66
  %68 = fneg float %67
  %69 = load float, float* %13, align 4
  %70 = load float, float* %12, align 4
  %71 = fsub float %69, %70
  %72 = fdiv float %68, %71
  %73 = load float*, float** %14, align 8
  %74 = getelementptr inbounds float, float* %73, i64 14
  store float %72, float* %74, align 4
  %75 = load float*, float** %14, align 8
  %76 = getelementptr inbounds float, float* %75, i64 3
  store float 0.000000e+00, float* %76, align 4
  %77 = load float*, float** %14, align 8
  %78 = getelementptr inbounds float, float* %77, i64 7
  store float 0.000000e+00, float* %78, align 4
  %79 = load float*, float** %14, align 8
  %80 = getelementptr inbounds float, float* %79, i64 11
  store float 0.000000e+00, float* %80, align 4
  %81 = load float*, float** %14, align 8
  %82 = getelementptr inbounds float, float* %81, i64 15
  store float 1.000000e+00, float* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
