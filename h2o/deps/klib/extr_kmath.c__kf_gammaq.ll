; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c__kf_gammaq.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c__kf_gammaq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KF_TINY = common dso_local global double 0.000000e+00, align 8
@KF_GAMMA_EPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @_kf_gammaq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_kf_gammaq(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %12 = load double, double* %4, align 8
  %13 = fadd double 1.000000e+00, %12
  %14 = load double, double* %3, align 8
  %15 = fsub double %13, %14
  store double %15, double* %8, align 8
  %16 = load double, double* %8, align 8
  store double %16, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %73, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %20, label %76

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sitofp i32 %21 to double
  %23 = load double, double* %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sitofp i32 %24 to double
  %26 = fsub double %23, %25
  %27 = fmul double %22, %26
  store double %27, double* %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 1
  %30 = add nsw i32 %29, 1
  %31 = sitofp i32 %30 to double
  %32 = load double, double* %4, align 8
  %33 = fadd double %31, %32
  %34 = load double, double* %3, align 8
  %35 = fsub double %33, %34
  store double %35, double* %10, align 8
  %36 = load double, double* %10, align 8
  %37 = load double, double* %9, align 8
  %38 = load double, double* %7, align 8
  %39 = fmul double %37, %38
  %40 = fadd double %36, %39
  store double %40, double* %7, align 8
  %41 = load double, double* %7, align 8
  %42 = load double, double* @KF_TINY, align 8
  %43 = fcmp olt double %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = load double, double* @KF_TINY, align 8
  store double %45, double* %7, align 8
  br label %46

46:                                               ; preds = %44, %20
  %47 = load double, double* %10, align 8
  %48 = load double, double* %9, align 8
  %49 = load double, double* %6, align 8
  %50 = fdiv double %48, %49
  %51 = fadd double %47, %50
  store double %51, double* %6, align 8
  %52 = load double, double* %6, align 8
  %53 = load double, double* @KF_TINY, align 8
  %54 = fcmp olt double %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load double, double* @KF_TINY, align 8
  store double %56, double* %6, align 8
  br label %57

57:                                               ; preds = %55, %46
  %58 = load double, double* %7, align 8
  %59 = fdiv double 1.000000e+00, %58
  store double %59, double* %7, align 8
  %60 = load double, double* %6, align 8
  %61 = load double, double* %7, align 8
  %62 = fmul double %60, %61
  store double %62, double* %11, align 8
  %63 = load double, double* %11, align 8
  %64 = load double, double* %8, align 8
  %65 = fmul double %64, %63
  store double %65, double* %8, align 8
  %66 = load double, double* %11, align 8
  %67 = fsub double %66, 1.000000e+00
  %68 = call i64 @fabs(double %67)
  %69 = load i64, i64* @KF_GAMMA_EPS, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %76

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %17

76:                                               ; preds = %71, %17
  %77 = load double, double* %3, align 8
  %78 = load double, double* %4, align 8
  %79 = call double @log(double %78) #3
  %80 = fmul double %77, %79
  %81 = load double, double* %4, align 8
  %82 = fsub double %80, %81
  %83 = load double, double* %3, align 8
  %84 = call double @kf_lgamma(double %83)
  %85 = fsub double %82, %84
  %86 = load double, double* %8, align 8
  %87 = call double @log(double %86) #3
  %88 = fsub double %85, %87
  %89 = call double @exp(double %88) #3
  ret double %89
}

declare dso_local i64 @fabs(double) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local double @kf_lgamma(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
