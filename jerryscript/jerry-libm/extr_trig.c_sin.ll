; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c_sin.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca [2 x double], align 16
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double 0.000000e+00, double* %5, align 8
  %8 = load double, double* %3, align 8
  %9 = call i32 @__HI(double %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 2147483647
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 1072243195
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load double, double* %3, align 8
  %16 = load double, double* %5, align 8
  %17 = call double @__kernel_sin(double %15, double %16, i32 0)
  store double %17, double* %2, align 8
  br label %57

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 2146435072
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load double, double* %3, align 8
  %23 = load double, double* %3, align 8
  %24 = fsub double %22, %23
  store double %24, double* %2, align 8
  br label %57

25:                                               ; preds = %18
  %26 = load double, double* %3, align 8
  %27 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %28 = call i32 @__ieee754_rem_pio2(double %26, double* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 3
  switch i32 %30, label %50 [
    i32 0, label %31
    i32 1, label %37
    i32 2, label %43
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %33 = load double, double* %32, align 16
  %34 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %35 = load double, double* %34, align 8
  %36 = call double @__kernel_sin(double %33, double %35, i32 1)
  store double %36, double* %2, align 8
  br label %57

37:                                               ; preds = %25
  %38 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %39 = load double, double* %38, align 16
  %40 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %41 = load double, double* %40, align 8
  %42 = call double @__kernel_cos(double %39, double %41)
  store double %42, double* %2, align 8
  br label %57

43:                                               ; preds = %25
  %44 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %45 = load double, double* %44, align 16
  %46 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %47 = load double, double* %46, align 8
  %48 = call double @__kernel_sin(double %45, double %47, i32 1)
  %49 = fneg double %48
  store double %49, double* %2, align 8
  br label %57

50:                                               ; preds = %25
  %51 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %52 = load double, double* %51, align 16
  %53 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %54 = load double, double* %53, align 8
  %55 = call double @__kernel_cos(double %52, double %54)
  %56 = fneg double %55
  store double %56, double* %2, align 8
  br label %57

57:                                               ; preds = %50, %43, %37, %31, %21, %14
  %58 = load double, double* %2, align 8
  ret double %58
}

declare dso_local i32 @__HI(double) #1

declare dso_local double @__kernel_sin(double, double, i32) #1

declare dso_local i32 @__ieee754_rem_pio2(double, double*) #1

declare dso_local double @__kernel_cos(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
