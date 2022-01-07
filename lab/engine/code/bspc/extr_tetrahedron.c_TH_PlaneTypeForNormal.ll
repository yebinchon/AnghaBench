; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_PlaneTypeForNormal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_PlaneTypeForNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLANE_X = common dso_local global i32 0, align 4
@PLANE_Y = common dso_local global i32 0, align 4
@PLANE_Z = common dso_local global i32 0, align 4
@PLANE_ANYX = common dso_local global i32 0, align 4
@PLANE_ANYY = common dso_local global i32 0, align 4
@PLANE_ANYZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TH_PlaneTypeForNormal(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  %7 = load double*, double** %3, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = fcmp oeq double %9, 1.000000e+00
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load double*, double** %3, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = load double, double* %13, align 8
  %15 = fcmp oeq double %14, -1.000000e+00
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @PLANE_X, align 4
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %11
  %19 = load double*, double** %3, align 8
  %20 = getelementptr inbounds double, double* %19, i64 1
  %21 = load double, double* %20, align 8
  %22 = fcmp oeq double %21, 1.000000e+00
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load double*, double** %3, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  %26 = load double, double* %25, align 8
  %27 = fcmp oeq double %26, -1.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @PLANE_Y, align 4
  store i32 %29, i32* %2, align 4
  br label %76

30:                                               ; preds = %23
  %31 = load double*, double** %3, align 8
  %32 = getelementptr inbounds double, double* %31, i64 2
  %33 = load double, double* %32, align 8
  %34 = fcmp oeq double %33, 1.000000e+00
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load double*, double** %3, align 8
  %37 = getelementptr inbounds double, double* %36, i64 2
  %38 = load double, double* %37, align 8
  %39 = fcmp oeq double %38, -1.000000e+00
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @PLANE_Z, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %35
  %43 = load double*, double** %3, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = call i64 @fabs(double %45)
  store i64 %46, i64* %4, align 8
  %47 = load double*, double** %3, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = call i64 @fabs(double %49)
  store i64 %50, i64* %5, align 8
  %51 = load double*, double** %3, align 8
  %52 = getelementptr inbounds double, double* %51, i64 2
  %53 = load double, double* %52, align 8
  %54 = call i64 @fabs(double %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @PLANE_ANYX, align 4
  store i32 %63, i32* %2, align 4
  br label %76

64:                                               ; preds = %58, %42
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @PLANE_ANYY, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %68, %64
  %75 = load i32, i32* @PLANE_ANYZ, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %72, %62, %40, %28, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
