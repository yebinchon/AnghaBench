; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_km_ks_dist.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_km_ks_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @km_ks_dist(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double 1.000000e+00, %17
  store double %18, double* %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double 1.000000e+00, %20
  store double %21, double* %15, align 8
  br label %22

22:                                               ; preds = %114, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %115

32:                                               ; preds = %30
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load double, double* %15, align 8
  %38 = load double, double* %12, align 8
  %39 = fadd double %38, %37
  store double %39, double* %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %102

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load double, double* %14, align 8
  %48 = load double, double* %11, align 8
  %49 = fadd double %48, %47
  store double %49, double* %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %101

52:                                               ; preds = %42
  %53 = load double*, double** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load double*, double** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = fcmp olt double %57, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load double, double* %14, align 8
  %66 = load double, double* %11, align 8
  %67 = fadd double %66, %65
  store double %67, double* %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %100

70:                                               ; preds = %52
  %71 = load double*, double** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = load double*, double** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fcmp ogt double %75, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load double, double* %15, align 8
  %84 = load double, double* %12, align 8
  %85 = fadd double %84, %83
  store double %85, double* %12, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %99

88:                                               ; preds = %70
  %89 = load double, double* %14, align 8
  %90 = load double, double* %11, align 8
  %91 = fadd double %90, %89
  store double %91, double* %11, align 8
  %92 = load double, double* %15, align 8
  %93 = load double, double* %12, align 8
  %94 = fadd double %93, %92
  store double %94, double* %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %88, %82
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %46
  br label %102

102:                                              ; preds = %101, %36
  %103 = load double, double* %13, align 8
  %104 = load double, double* %11, align 8
  %105 = load double, double* %12, align 8
  %106 = fsub double %104, %105
  %107 = call double @llvm.fabs.f64(double %106)
  %108 = fcmp olt double %103, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load double, double* %11, align 8
  %111 = load double, double* %12, align 8
  %112 = fsub double %110, %111
  %113 = call double @llvm.fabs.f64(double %112)
  store double %113, double* %13, align 8
  br label %114

114:                                              ; preds = %109, %102
  br label %22

115:                                              ; preds = %30
  %116 = load double, double* %13, align 8
  ret double %116
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
