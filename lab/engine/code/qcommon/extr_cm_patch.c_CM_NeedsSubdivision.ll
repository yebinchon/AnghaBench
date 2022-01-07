; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_NeedsSubdivision.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_NeedsSubdivision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBDIVIDE_DISTANCE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, double*, double*)* @CM_NeedsSubdivision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_NeedsSubdivision(double* %0, double* %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load double*, double** %4, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %16, i64 %18
  %20 = load double, double* %19, align 8
  %21 = load double*, double** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fadd double %20, %25
  %27 = fmul double 5.000000e-01, %26
  %28 = load double*, double** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  store double %27, double* %31, align 8
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %12

35:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %73

39:                                               ; preds = %36
  %40 = load double*, double** %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fadd double %44, %49
  %51 = fmul double 5.000000e-01, %50
  %52 = load double*, double** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fadd double %56, %61
  %63 = fmul double 5.000000e-01, %62
  %64 = fadd double %51, %63
  %65 = fmul double 5.000000e-01, %64
  %66 = load double*, double** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  store double %65, double* %69, align 8
  br label %70

70:                                               ; preds = %39
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load double*, double** %7, align 8
  %75 = load double*, double** %8, align 8
  %76 = load double*, double** %9, align 8
  %77 = call i32 @VectorSubtract(double* %74, double* %75, double* %76)
  %78 = load double*, double** %9, align 8
  %79 = call float @VectorLength(double* %78)
  store float %79, float* %10, align 4
  %80 = load float, float* %10, align 4
  %81 = load float, float* @SUBDIVIDE_DISTANCE, align 4
  %82 = fcmp oge float %80, %81
  %83 = zext i1 %82 to i32
  ret i32 %83
}

declare dso_local i32 @VectorSubtract(double*, double*, double*) #1

declare dso_local float @VectorLength(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
