; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcWaveColorSingle.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcWaveColorSingle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float }
%struct.TYPE_6__ = type { i64, float, i32, i32, float }

@GF_NOISE = common dso_local global i64 0, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @RB_CalcWaveColorSingle(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GF_NOISE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load float, float* %11, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  %22 = call float @R_NoiseGet4f(i32 0, i32 0, i32 0, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  %27 = fadd float %12, %26
  store float %27, float* %3, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = call float @EvalWaveForm(%struct.TYPE_6__* %29)
  %31 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %32 = fmul float %30, %31
  store float %32, float* %3, align 4
  br label %33

33:                                               ; preds = %28, %9
  %34 = load float, float* %3, align 4
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store float 0.000000e+00, float* %3, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load float, float* %3, align 4
  %39 = fcmp ogt float %38, 1.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store float 1.000000e+00, float* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %36
  %43 = load float, float* %3, align 4
  ret float %43
}

declare dso_local float @R_NoiseGet4f(i32, i32, i32, i32) #1

declare dso_local float @EvalWaveForm(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
