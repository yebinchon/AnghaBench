; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_DVectorNormalize.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_DVectorNormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @DVectorNormalize(double* %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load double*, double** %4, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load double, double* %9, align 8
  %11 = load double*, double** %4, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  %13 = load double, double* %12, align 8
  %14 = fmul double %10, %13
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %4, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %17, %20
  %22 = fadd double %14, %21
  %23 = load double*, double** %4, align 8
  %24 = getelementptr inbounds double, double* %23, i64 2
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %4, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  %29 = fmul double %25, %28
  %30 = fadd double %22, %29
  %31 = call i64 @sqrt(double %30)
  %32 = sitofp i64 %31 to double
  store double %32, double* %6, align 8
  %33 = load double, double* %6, align 8
  %34 = fcmp oeq double %33, 0.000000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load double*, double** %5, align 8
  %37 = call i32 @VectorClear(double* %36)
  store double 0.000000e+00, double* %3, align 8
  br label %63

38:                                               ; preds = %2
  %39 = load double, double* %6, align 8
  %40 = fdiv double 1.000000e+00, %39
  store double %40, double* %7, align 8
  %41 = load double*, double** %4, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  %43 = load double, double* %42, align 8
  %44 = load double, double* %7, align 8
  %45 = fmul double %43, %44
  %46 = load double*, double** %5, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  store double %45, double* %47, align 8
  %48 = load double*, double** %4, align 8
  %49 = getelementptr inbounds double, double* %48, i64 1
  %50 = load double, double* %49, align 8
  %51 = load double, double* %7, align 8
  %52 = fmul double %50, %51
  %53 = load double*, double** %5, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  store double %52, double* %54, align 8
  %55 = load double*, double** %4, align 8
  %56 = getelementptr inbounds double, double* %55, i64 2
  %57 = load double, double* %56, align 8
  %58 = load double, double* %7, align 8
  %59 = fmul double %57, %58
  %60 = load double*, double** %5, align 8
  %61 = getelementptr inbounds double, double* %60, i64 2
  store double %59, double* %61, align 8
  %62 = load double, double* %6, align 8
  store double %62, double* %3, align 8
  br label %63

63:                                               ; preds = %38, %35
  %64 = load double, double* %3, align 8
  ret double %64
}

declare dso_local i64 @sqrt(double) #1

declare dso_local i32 @VectorClear(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
