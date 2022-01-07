; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_PlaneTypeForNormal.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_PlaneTypeForNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLANE_X = common dso_local global i32 0, align 4
@PLANE_Y = common dso_local global i32 0, align 4
@PLANE_Z = common dso_local global i32 0, align 4
@PLANE_NON_AXIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PlaneTypeForNormal(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  store double* %0, double** %3, align 8
  %4 = load double*, double** %3, align 8
  %5 = getelementptr inbounds double, double* %4, i64 0
  %6 = load double, double* %5, align 8
  %7 = fcmp oeq double %6, 1.000000e+00
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fcmp oeq double %11, -1.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @PLANE_X, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %8
  %16 = load double*, double** %3, align 8
  %17 = getelementptr inbounds double, double* %16, i64 1
  %18 = load double, double* %17, align 8
  %19 = fcmp oeq double %18, 1.000000e+00
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load double*, double** %3, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = fcmp oeq double %23, -1.000000e+00
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @PLANE_Y, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %20
  %28 = load double*, double** %3, align 8
  %29 = getelementptr inbounds double, double* %28, i64 2
  %30 = load double, double* %29, align 8
  %31 = fcmp oeq double %30, 1.000000e+00
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load double*, double** %3, align 8
  %34 = getelementptr inbounds double, double* %33, i64 2
  %35 = load double, double* %34, align 8
  %36 = fcmp oeq double %35, -1.000000e+00
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @PLANE_Z, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @PLANE_NON_AXIAL, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %25, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
