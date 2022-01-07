; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c_tan.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tan(double %0) #0 {
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
  %17 = call double @__kernel_tan(double %15, double %16, i32 1)
  store double %17, double* %2, align 8
  br label %38

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 2146435072
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load double, double* %3, align 8
  %23 = load double, double* %3, align 8
  %24 = fsub double %22, %23
  store double %24, double* %2, align 8
  br label %38

25:                                               ; preds = %18
  %26 = load double, double* %3, align 8
  %27 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %28 = call i32 @__ieee754_rem_pio2(double %26, double* %27)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %30 = load double, double* %29, align 16
  %31 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %32 = load double, double* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = shl i32 %34, 1
  %36 = sub nsw i32 1, %35
  %37 = call double @__kernel_tan(double %30, double %32, i32 %36)
  store double %37, double* %2, align 8
  br label %38

38:                                               ; preds = %25, %21, %14
  %39 = load double, double* %2, align 8
  ret double %39
}

declare dso_local i32 @__HI(double) #1

declare dso_local double @__kernel_tan(double, double, i32) #1

declare dso_local i32 @__ieee754_rem_pio2(double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
