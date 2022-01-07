; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_betai.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_betai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @kf_betai(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = load double, double* %4, align 8
  %9 = fadd double %8, 1.000000e+00
  %10 = load double, double* %4, align 8
  %11 = load double, double* %5, align 8
  %12 = fadd double %10, %11
  %13 = fadd double %12, 2.000000e+00
  %14 = fdiv double %9, %13
  %15 = fcmp olt double %7, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load double, double* %4, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* %6, align 8
  %20 = fptosi double %19 to i32
  %21 = call double @kf_betai_aux(double %17, double %18, i32 %20)
  br label %30

22:                                               ; preds = %3
  %23 = load double, double* %5, align 8
  %24 = load double, double* %4, align 8
  %25 = load double, double* %6, align 8
  %26 = fsub double 1.000000e+00, %25
  %27 = fptosi double %26 to i32
  %28 = call double @kf_betai_aux(double %23, double %24, i32 %27)
  %29 = fsub double 1.000000e+00, %28
  br label %30

30:                                               ; preds = %22, %16
  %31 = phi double [ %21, %16 ], [ %29, %22 ]
  ret double %31
}

declare dso_local double @kf_betai_aux(double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
