; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_math.c_VectorNormalize.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_math.c_VectorNormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @VectorNormalize(double* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double* %0, double** %3, align 8
  %6 = load double*, double** %3, align 8
  %7 = getelementptr inbounds double, double* %6, i64 0
  %8 = load double, double* %7, align 8
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fmul double %8, %11
  %13 = load double*, double** %3, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  %15 = load double, double* %14, align 8
  %16 = load double*, double** %3, align 8
  %17 = getelementptr inbounds double, double* %16, i64 1
  %18 = load double, double* %17, align 8
  %19 = fmul double %15, %18
  %20 = fadd double %12, %19
  %21 = load double*, double** %3, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  %23 = load double, double* %22, align 8
  %24 = load double*, double** %3, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  %26 = load double, double* %25, align 8
  %27 = fmul double %23, %26
  %28 = fadd double %20, %27
  %29 = call double @sqrt(double %28) #3
  store double %29, double* %4, align 8
  %30 = load double, double* %4, align 8
  %31 = fcmp oeq double %30, 0.000000e+00
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load double*, double** %3, align 8
  %34 = call i32 @VectorClear(double* %33)
  store double 0.000000e+00, double* %2, align 8
  br label %60

35:                                               ; preds = %1
  %36 = load double, double* %4, align 8
  %37 = fdiv double 1.000000e+00, %36
  store double %37, double* %5, align 8
  %38 = load double*, double** %3, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = load double, double* %5, align 8
  %42 = fmul double %40, %41
  %43 = load double*, double** %3, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  store double %42, double* %44, align 8
  %45 = load double*, double** %3, align 8
  %46 = getelementptr inbounds double, double* %45, i64 1
  %47 = load double, double* %46, align 8
  %48 = load double, double* %5, align 8
  %49 = fmul double %47, %48
  %50 = load double*, double** %3, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  store double %49, double* %51, align 8
  %52 = load double*, double** %3, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  %54 = load double, double* %53, align 8
  %55 = load double, double* %5, align 8
  %56 = fmul double %54, %55
  %57 = load double*, double** %3, align 8
  %58 = getelementptr inbounds double, double* %57, i64 2
  store double %56, double* %58, align 8
  %59 = load double, double* %4, align 8
  store double %59, double* %2, align 8
  br label %60

60:                                               ; preds = %35, %32
  %61 = load double, double* %2, align 8
  ret double %61
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local i32 @VectorClear(double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
