; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_ComparePoints.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_ComparePoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINT_EPSILON = common dso_local global float 0.000000e+00, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*)* @CM_ComparePoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_ComparePoints(float* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  %7 = load float*, float** %4, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %5, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fsub float %9, %12
  store float %13, float* %6, align 4
  %14 = load float, float* %6, align 4
  %15 = load float, float* @POINT_EPSILON, align 4
  %16 = fneg float %15
  %17 = fcmp olt float %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load float, float* %6, align 4
  %20 = load float, float* @POINT_EPSILON, align 4
  %21 = fcmp ogt float %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %3, align 4
  br label %62

24:                                               ; preds = %18
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %5, align 8
  %29 = getelementptr inbounds float, float* %28, i64 1
  %30 = load float, float* %29, align 4
  %31 = fsub float %27, %30
  store float %31, float* %6, align 4
  %32 = load float, float* %6, align 4
  %33 = load float, float* @POINT_EPSILON, align 4
  %34 = fneg float %33
  %35 = fcmp olt float %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = load float, float* %6, align 4
  %38 = load float, float* @POINT_EPSILON, align 4
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %24
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %36
  %43 = load float*, float** %4, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %5, align 8
  %47 = getelementptr inbounds float, float* %46, i64 2
  %48 = load float, float* %47, align 4
  %49 = fsub float %45, %48
  store float %49, float* %6, align 4
  %50 = load float, float* %6, align 4
  %51 = load float, float* @POINT_EPSILON, align 4
  %52 = fneg float %51
  %53 = fcmp olt float %50, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load float, float* %6, align 4
  %56 = load float, float* @POINT_EPSILON, align 4
  %57 = fcmp ogt float %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %42
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @qtrue, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %40, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
