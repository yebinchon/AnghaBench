; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_lambda_delta.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_lambda_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INITIAL_INV_D = common dso_local global i32 0, align 4
@INITIAL_LAMBDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double, double, double, double*)* @compute_ad_lambda_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_ad_lambda_delta(i32 %0, double %1, double %2, double %3, double* %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double* %4, double** %11, align 8
  %14 = load double, double* %9, align 8
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load double, double* %10, align 8
  %18 = fcmp ole double %17, 0.000000e+00
  br i1 %18, label %19, label %32

19:                                               ; preds = %16, %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @INITIAL_INV_D, align 4
  %22 = sdiv i32 %21, 3
  %23 = sitofp i32 %22 to double
  %24 = call i32 @sqrt(double %23)
  %25 = sdiv i32 %20, %24
  %26 = sitofp i32 %25 to double
  %27 = load double*, double** %11, align 8
  store double %26, double* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @INITIAL_LAMBDA, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sitofp i32 %30 to double
  store double %31, double* %6, align 8
  br label %88

32:                                               ; preds = %16
  %33 = load double, double* %10, align 8
  store double %33, double* %13, align 8
  %34 = load double, double* %8, align 8
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load double, double* %8, align 8
  %38 = load double, double* %9, align 8
  %39 = fdiv double %37, %38
  store double %39, double* %12, align 8
  %40 = load double, double* %8, align 8
  %41 = load double, double* %9, align 8
  %42 = load double, double* %12, align 8
  %43 = load double, double* %10, align 8
  %44 = fmul double %42, %43
  %45 = fadd double %41, %44
  %46 = fdiv double %40, %45
  store double %46, double* %12, align 8
  %47 = load double, double* %8, align 8
  %48 = load double, double* %12, align 8
  %49 = load double, double* %12, align 8
  %50 = fmul double %48, %49
  %51 = fdiv double %47, %50
  %52 = load double, double* %13, align 8
  %53 = fadd double %52, %51
  store double %53, double* %13, align 8
  br label %59

54:                                               ; preds = %32
  %55 = load double, double* %9, align 8
  %56 = fneg double %55
  %57 = load double, double* %10, align 8
  %58 = fdiv double %56, %57
  store double %58, double* %12, align 8
  br label %59

59:                                               ; preds = %54, %36
  %60 = load double, double* %13, align 8
  %61 = load double, double* %12, align 8
  %62 = fmul double %60, %61
  %63 = load i32, i32* @INITIAL_INV_D, align 4
  %64 = load i32, i32* @INITIAL_LAMBDA, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sitofp i32 %65 to double
  %67 = fadd double %62, %66
  %68 = load double, double* %13, align 8
  %69 = load i32, i32* @INITIAL_INV_D, align 4
  %70 = sitofp i32 %69 to double
  %71 = fadd double %68, %70
  %72 = fdiv double %67, %71
  store double %72, double* %12, align 8
  %73 = load i32, i32* @INITIAL_INV_D, align 4
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %13, align 8
  %76 = fadd double %75, %74
  store double %76, double* %13, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load double, double* %13, align 8
  %79 = fdiv double %78, 3.000000e+00
  %80 = call i32 @sqrt(double %79)
  %81 = sdiv i32 %77, %80
  %82 = sitofp i32 %81 to double
  %83 = load double*, double** %11, align 8
  store double %82, double* %83, align 8
  %84 = load double, double* %12, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sitofp i32 %85 to double
  %87 = fmul double %84, %86
  store double %87, double* %6, align 8
  br label %88

88:                                               ; preds = %59, %19
  %89 = load double, double* %6, align 8
  ret double %89
}

declare dso_local i32 @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
