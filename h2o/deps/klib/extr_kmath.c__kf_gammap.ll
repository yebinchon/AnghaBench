; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c__kf_gammap.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c__kf_gammap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KF_GAMMA_EPS = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @_kf_gammap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_kf_gammap(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  store i32 1, i32* %7, align 4
  store double 1.000000e+00, double* %6, align 8
  store double 1.000000e+00, double* %5, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load double, double* %4, align 8
  %13 = load double, double* %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sitofp i32 %14 to double
  %16 = fadd double %13, %15
  %17 = fdiv double %12, %16
  %18 = load double, double* %6, align 8
  %19 = fmul double %18, %17
  store double %19, double* %6, align 8
  %20 = load double, double* %5, align 8
  %21 = fadd double %20, %19
  store double %21, double* %5, align 8
  %22 = load double, double* %6, align 8
  %23 = load double, double* %5, align 8
  %24 = fdiv double %22, %23
  %25 = load double, double* @KF_GAMMA_EPS, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  br label %32

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

32:                                               ; preds = %27, %8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %4, align 8
  %35 = call double @log(double %34) #3
  %36 = fmul double %33, %35
  %37 = load double, double* %4, align 8
  %38 = fsub double %36, %37
  %39 = load double, double* %3, align 8
  %40 = fadd double %39, 1.000000e+00
  %41 = call double @kf_lgamma(double %40)
  %42 = fsub double %38, %41
  %43 = load double, double* %5, align 8
  %44 = call double @log(double %43) #3
  %45 = fadd double %42, %44
  %46 = call double @exp(double %45) #3
  ret double %46
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #1

declare dso_local double @kf_lgamma(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
