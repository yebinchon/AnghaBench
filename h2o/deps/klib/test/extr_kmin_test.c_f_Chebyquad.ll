; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kmin_test.c_f_Chebyquad.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kmin_test.c_f_Chebyquad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_evals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @f_Chebyquad(i32 %0, double* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x [20 x double]], align 16
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x double], [20 x double]* %19, i64 0, i64 %21
  store double 1.000000e+00, double* %22, align 8
  %23 = load double*, double** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = fmul double 2.000000e+00, %27
  %29 = fsub double %28, 1.000000e+00
  %30 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 1
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x double], [20 x double]* %30, i64 0, i64 %32
  store double %29, double* %33, align 8
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %14

37:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %82, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 1
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [20 x double], [20 x double]* %48, i64 0, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fmul double 2.000000e+00, %52
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 %55
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [20 x double], [20 x double]* %56, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %53, %60
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 %64
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [20 x double], [20 x double]* %65, i64 0, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fsub double %61, %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [20 x double], [20 x double]* %74, i64 0, i64 %76
  store double %70, double* %77, align 8
  br label %78

78:                                               ; preds = %47
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %43

81:                                               ; preds = %43
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %38

85:                                               ; preds = %38
  store double 0.000000e+00, double* %10, align 8
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %135, %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %88
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 %99
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [20 x double], [20 x double]* %100, i64 0, i64 %102
  %104 = load double, double* %103, align 8
  %105 = load double, double* %13, align 8
  %106 = fadd double %105, %104
  store double %106, double* %13, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %93

110:                                              ; preds = %93
  %111 = load i32, i32* %4, align 4
  %112 = sitofp i32 %111 to double
  %113 = load double, double* %13, align 8
  %114 = fdiv double %113, %112
  store double %114, double* %13, align 8
  %115 = load i32, i32* %12, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = mul nsw i32 %119, %121
  %123 = sitofp i32 %122 to double
  %124 = fdiv double 1.000000e+00, %123
  %125 = load double, double* %13, align 8
  %126 = fadd double %125, %124
  store double %126, double* %13, align 8
  br label %127

127:                                              ; preds = %117, %110
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %12, align 4
  %130 = load double, double* %13, align 8
  %131 = load double, double* %13, align 8
  %132 = fmul double %130, %131
  %133 = load double, double* %10, align 8
  %134 = fadd double %133, %132
  store double %134, double* %10, align 8
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %88

138:                                              ; preds = %88
  %139 = load i32, i32* @n_evals, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @n_evals, align 4
  %141 = load double, double* %10, align 8
  ret double %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
