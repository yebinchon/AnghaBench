; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___kernel_sin.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___kernel_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S2 = common dso_local global double 0.000000e+00, align 8
@S3 = common dso_local global double 0.000000e+00, align 8
@S4 = common dso_local global double 0.000000e+00, align 8
@S5 = common dso_local global double 0.000000e+00, align 8
@S6 = common dso_local global double 0.000000e+00, align 8
@S1 = common dso_local global double 0.000000e+00, align 8
@half = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, i32)* @__kernel_sin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @__kernel_sin(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load double, double* %5, align 8
  %13 = call i32 @__HI(double %12)
  %14 = and i32 %13, 2147483647
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 1044381696
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load double, double* %5, align 8
  %19 = fptosi double %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load double, double* %5, align 8
  store double %22, double* %4, align 8
  br label %78

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %3
  %25 = load double, double* %5, align 8
  %26 = load double, double* %5, align 8
  %27 = fmul double %25, %26
  store double %27, double* %8, align 8
  %28 = load double, double* %8, align 8
  %29 = load double, double* %5, align 8
  %30 = fmul double %28, %29
  store double %30, double* %10, align 8
  %31 = load double, double* @S2, align 8
  %32 = load double, double* %8, align 8
  %33 = load double, double* @S3, align 8
  %34 = load double, double* %8, align 8
  %35 = load double, double* @S4, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* @S5, align 8
  %38 = load double, double* %8, align 8
  %39 = load double, double* @S6, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %37, %40
  %42 = fmul double %36, %41
  %43 = fadd double %35, %42
  %44 = fmul double %34, %43
  %45 = fadd double %33, %44
  %46 = fmul double %32, %45
  %47 = fadd double %31, %46
  store double %47, double* %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %24
  %51 = load double, double* %5, align 8
  %52 = load double, double* %10, align 8
  %53 = load double, double* @S1, align 8
  %54 = load double, double* %8, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  %57 = fadd double %53, %56
  %58 = fmul double %52, %57
  %59 = fadd double %51, %58
  store double %59, double* %4, align 8
  br label %78

60:                                               ; preds = %24
  %61 = load double, double* %5, align 8
  %62 = load double, double* %8, align 8
  %63 = load double, double* @half, align 8
  %64 = load double, double* %6, align 8
  %65 = fmul double %63, %64
  %66 = load double, double* %10, align 8
  %67 = load double, double* %9, align 8
  %68 = fmul double %66, %67
  %69 = fsub double %65, %68
  %70 = fmul double %62, %69
  %71 = load double, double* %6, align 8
  %72 = fsub double %70, %71
  %73 = load double, double* %10, align 8
  %74 = load double, double* @S1, align 8
  %75 = fmul double %73, %74
  %76 = fsub double %72, %75
  %77 = fsub double %61, %76
  store double %77, double* %4, align 8
  br label %78

78:                                               ; preds = %60, %50, %21
  %79 = load double, double* %4, align 8
  ret double %79
}

declare dso_local i32 @__HI(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
