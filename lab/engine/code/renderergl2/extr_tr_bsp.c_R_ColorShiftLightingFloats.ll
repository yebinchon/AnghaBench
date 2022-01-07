; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_ColorShiftLightingFloats.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_ColorShiftLightingFloats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@r_mapOverBrightBits = common dso_local global %struct.TYPE_4__* null, align 8
@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @R_ColorShiftLightingFloats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_ColorShiftLightingFloats(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_mapOverBrightBits, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 4
  %14 = sub nsw i32 %12, %13
  %15 = shl i32 1, %14
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 2.550000e+02
  store float %17, float* %8, align 4
  %18 = load float*, float** %3, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = load float, float* %8, align 4
  %22 = fmul float %20, %21
  store float %22, float* %5, align 4
  %23 = load float*, float** %3, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = load float, float* %8, align 4
  %27 = fmul float %25, %26
  store float %27, float* %6, align 4
  %28 = load float*, float** %3, align 8
  %29 = getelementptr inbounds float, float* %28, i64 2
  %30 = load float, float* %29, align 4
  %31 = load float, float* %8, align 4
  %32 = fmul float %30, %31
  store float %32, float* %7, align 4
  %33 = load float, float* %5, align 4
  %34 = fcmp ogt float %33, 1.000000e+00
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load float, float* %6, align 4
  %37 = fcmp ogt float %36, 1.000000e+00
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load float, float* %7, align 4
  %40 = fcmp ogt float %39, 1.000000e+00
  br i1 %40, label %41, label %69

41:                                               ; preds = %38, %35, %2
  %42 = load float, float* %5, align 4
  %43 = load float, float* %6, align 4
  %44 = fcmp ogt float %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load float, float* %5, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load float, float* %6, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi float [ %46, %45 ], [ %48, %47 ]
  store float %50, float* %9, align 4
  %51 = load float, float* %9, align 4
  %52 = load float, float* %7, align 4
  %53 = fcmp ogt float %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load float, float* %9, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load float, float* %7, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi float [ %55, %54 ], [ %57, %56 ]
  store float %59, float* %9, align 4
  %60 = load float, float* %5, align 4
  %61 = load float, float* %9, align 4
  %62 = fdiv float %60, %61
  store float %62, float* %5, align 4
  %63 = load float, float* %6, align 4
  %64 = load float, float* %9, align 4
  %65 = fdiv float %63, %64
  store float %65, float* %6, align 4
  %66 = load float, float* %7, align 4
  %67 = load float, float* %9, align 4
  %68 = fdiv float %66, %67
  store float %68, float* %7, align 4
  br label %69

69:                                               ; preds = %58, %38
  %70 = load float, float* %5, align 4
  %71 = load float*, float** %4, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  store float %70, float* %72, align 4
  %73 = load float, float* %6, align 4
  %74 = load float*, float** %4, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  store float %73, float* %75, align 4
  %76 = load float, float* %7, align 4
  %77 = load float*, float** %4, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  store float %76, float* %78, align 4
  %79 = load float*, float** %3, align 8
  %80 = getelementptr inbounds float, float* %79, i64 3
  %81 = load float, float* %80, align 4
  %82 = load float*, float** %4, align 8
  %83 = getelementptr inbounds float, float* %82, i64 3
  store float %81, float* %83, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
