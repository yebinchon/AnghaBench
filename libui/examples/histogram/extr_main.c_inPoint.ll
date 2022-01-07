; ModuleID = '/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_inPoint.c'
source_filename = "/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_inPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xoffLeft = common dso_local global i64 0, align 8
@yoffTop = common dso_local global i64 0, align 8
@pointRadius = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double)* @inPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inPoint(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load i64, i64* @xoffLeft, align 8
  %10 = sitofp i64 %9 to double
  %11 = load double, double* %5, align 8
  %12 = fsub double %11, %10
  store double %12, double* %5, align 8
  %13 = load i64, i64* @yoffTop, align 8
  %14 = sitofp i64 %13 to double
  %15 = load double, double* %6, align 8
  %16 = fsub double %15, %14
  store double %16, double* %6, align 8
  %17 = load double, double* %5, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* @pointRadius, align 8
  %20 = fsub double %18, %19
  %21 = fcmp oge double %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load double, double* %5, align 8
  %24 = load double, double* %7, align 8
  %25 = load double, double* @pointRadius, align 8
  %26 = fadd double %24, %25
  %27 = fcmp ole double %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load double, double* %6, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* @pointRadius, align 8
  %32 = fsub double %30, %31
  %33 = fcmp oge double %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load double, double* %6, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* @pointRadius, align 8
  %38 = fadd double %36, %37
  %39 = fcmp ole double %35, %38
  br label %40

40:                                               ; preds = %34, %28, %22, %4
  %41 = phi i1 [ false, %28 ], [ false, %22 ], [ false, %4 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
