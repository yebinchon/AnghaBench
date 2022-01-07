; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_TCMod.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_TCMod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TCMod(float** %0, float* %1) #0 {
  %3 = alloca float**, align 8
  %4 = alloca float*, align 8
  %5 = alloca [2 x float], align 4
  store float** %0, float*** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load float*, float** %4, align 8
  %7 = getelementptr inbounds float, float* %6, i64 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  store float %8, float* %9, align 4
  %10 = load float*, float** %4, align 8
  %11 = getelementptr inbounds float, float* %10, i64 1
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  store float %12, float* %13, align 4
  %14 = load float**, float*** %3, align 8
  %15 = getelementptr inbounds float*, float** %14, i64 0
  %16 = load float*, float** %15, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %20 = load float, float* %19, align 4
  %21 = fmul float %18, %20
  %22 = load float**, float*** %3, align 8
  %23 = getelementptr inbounds float*, float** %22, i64 0
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %28 = load float, float* %27, align 4
  %29 = fmul float %26, %28
  %30 = fadd float %21, %29
  %31 = load float**, float*** %3, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 0
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = fadd float %30, %35
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  store float %36, float* %38, align 4
  %39 = load float**, float*** %3, align 8
  %40 = getelementptr inbounds float*, float** %39, i64 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  %44 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %45 = load float, float* %44, align 4
  %46 = fmul float %43, %45
  %47 = load float**, float*** %3, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 1
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %53 = load float, float* %52, align 4
  %54 = fmul float %51, %53
  %55 = fadd float %46, %54
  %56 = load float**, float*** %3, align 8
  %57 = getelementptr inbounds float*, float** %56, i64 1
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  %60 = load float, float* %59, align 4
  %61 = fadd float %55, %60
  %62 = load float*, float** %4, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  store float %61, float* %63, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
