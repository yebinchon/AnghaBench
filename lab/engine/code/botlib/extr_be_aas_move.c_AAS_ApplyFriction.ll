; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_ApplyFriction.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_ApplyFriction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ApplyFriction(float* %0, float %1, float %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %12 = load float*, float** %5, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %5, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fmul float %14, %17
  %19 = load float*, float** %5, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %5, align 8
  %23 = getelementptr inbounds float, float* %22, i64 1
  %24 = load float, float* %23, align 4
  %25 = fmul float %21, %24
  %26 = fadd float %18, %25
  %27 = call float @sqrt(float %26)
  store float %27, float* %9, align 4
  %28 = load float, float* %9, align 4
  %29 = fcmp une float %28, 0.000000e+00
  br i1 %29, label %30, label %64

30:                                               ; preds = %4
  %31 = load float, float* %9, align 4
  %32 = load float, float* %7, align 4
  %33 = fcmp olt float %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load float, float* %7, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load float, float* %9, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi float [ %35, %34 ], [ %37, %36 ]
  store float %39, float* %10, align 4
  %40 = load float, float* %9, align 4
  %41 = load float, float* %8, align 4
  %42 = load float, float* %10, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %6, align 4
  %45 = fmul float %43, %44
  %46 = fsub float %40, %45
  store float %46, float* %11, align 4
  %47 = load float, float* %11, align 4
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store float 0.000000e+00, float* %11, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load float, float* %9, align 4
  %52 = load float, float* %11, align 4
  %53 = fdiv float %52, %51
  store float %53, float* %11, align 4
  %54 = load float, float* %11, align 4
  %55 = load float*, float** %5, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, %54
  store float %58, float* %56, align 4
  %59 = load float, float* %11, align 4
  %60 = load float*, float** %5, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fmul float %62, %59
  store float %63, float* %61, align 4
  br label %64

64:                                               ; preds = %50, %4
  ret void
}

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
