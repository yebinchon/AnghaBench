; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_gammaq.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_gammaq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @kf_gammaq(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = fcmp ole double %5, 1.000000e+00
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load double, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %2
  %12 = load double, double* %3, align 8
  %13 = load double, double* %4, align 8
  %14 = call double @_kf_gammap(double %12, double %13)
  %15 = fsub double 1.000000e+00, %14
  br label %20

16:                                               ; preds = %7
  %17 = load double, double* %3, align 8
  %18 = load double, double* %4, align 8
  %19 = call double @_kf_gammaq(double %17, double %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi double [ %15, %11 ], [ %19, %16 ]
  ret double %21
}

declare dso_local double @_kf_gammap(double, double) #1

declare dso_local double @_kf_gammaq(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
