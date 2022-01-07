; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_lgamma.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kf_lgamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @kf_lgamma(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load double, double* %2, align 8
  %5 = fadd double %4, 7.000000e+00
  %6 = fdiv double 0x3E8645E569E1DBC8, %5
  %7 = load double, double* %3, align 8
  %8 = fadd double %7, %6
  store double %8, double* %3, align 8
  %9 = load double, double* %2, align 8
  %10 = fadd double %9, 6.000000e+00
  %11 = fdiv double 0x3EE4D5C75C187EE3, %10
  %12 = load double, double* %3, align 8
  %13 = fadd double %12, %11
  store double %13, double* %3, align 8
  %14 = load double, double* %2, align 8
  %15 = fadd double %14, 5.000000e+00
  %16 = fdiv double 0x3FC1BCB213BB7E41, %15
  %17 = load double, double* %3, align 8
  %18 = fsub double %17, %16
  store double %18, double* %3, align 8
  %19 = load double, double* %2, align 8
  %20 = fadd double %19, 4.000000e+00
  %21 = fdiv double 0x402903C27E40123E, %20
  %22 = load double, double* %3, align 8
  %23 = fadd double %22, %21
  store double %23, double* %3, align 8
  %24 = load double, double* %2, align 8
  %25 = fadd double %24, 3.000000e+00
  %26 = fdiv double 0x406613AE519C9497, %25
  %27 = load double, double* %3, align 8
  %28 = fsub double %27, %26
  store double %28, double* %3, align 8
  %29 = load double, double* %2, align 8
  %30 = fadd double %29, 2.000000e+00
  %31 = fdiv double 0x40881A9661D3740D, %30
  %32 = load double, double* %3, align 8
  %33 = fadd double %32, %31
  store double %33, double* %3, align 8
  %34 = load double, double* %2, align 8
  %35 = fadd double %34, 1.000000e+00
  %36 = fdiv double 0x4093AC8E8ED41526, %35
  %37 = load double, double* %3, align 8
  %38 = fsub double %37, %36
  store double %38, double* %3, align 8
  %39 = load double, double* %2, align 8
  %40 = fdiv double 0x40852429B6C30AF7, %39
  %41 = load double, double* %3, align 8
  %42 = fadd double %41, %40
  store double %42, double* %3, align 8
  %43 = load double, double* %3, align 8
  %44 = fadd double %43, 0x3FEFFFFFFFFFEF0D
  store double %44, double* %3, align 8
  %45 = load double, double* %3, align 8
  %46 = call double @log(double %45) #2
  %47 = fsub double %46, 0x40165301C6F3682A
  %48 = load double, double* %2, align 8
  %49 = fsub double %47, %48
  %50 = load double, double* %2, align 8
  %51 = fsub double %50, 5.000000e-01
  %52 = load double, double* %2, align 8
  %53 = fadd double %52, 6.500000e+00
  %54 = call double @log(double %53) #2
  %55 = fmul double %51, %54
  %56 = fadd double %49, %55
  ret double %56
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
