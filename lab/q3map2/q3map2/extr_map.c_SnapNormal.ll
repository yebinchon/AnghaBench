; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SnapNormal.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SnapNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@normalEpsilon = common dso_local global double 0.000000e+00, align 8
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SnapNormal(double* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  %9 = load double*, double** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, double* %9, i64 %11
  %13 = load double, double* %12, align 8
  %14 = fsub double %13, 1.000000e+00
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = load double, double* @normalEpsilon, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %8
  %19 = load double*, double** %3, align 8
  %20 = call i32 @VectorClear(double* %19)
  %21 = load double*, double** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  store double 1.000000e+00, double* %24, align 8
  %25 = load i64, i64* @qtrue, align 8
  store i64 %25, i64* %2, align 8
  br label %50

26:                                               ; preds = %8
  %27 = load double*, double** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = fsub double %31, -1.000000e+00
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = load double, double* @normalEpsilon, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load double*, double** %3, align 8
  %38 = call i32 @VectorClear(double* %37)
  %39 = load double*, double** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double -1.000000e+00, double* %42, align 8
  %43 = load i64, i64* @qtrue, align 8
  store i64 %43, i64* %2, align 8
  br label %50

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %5

48:                                               ; preds = %5
  %49 = load i64, i64* @qfalse, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %36, %18
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i32 @VectorClear(double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
