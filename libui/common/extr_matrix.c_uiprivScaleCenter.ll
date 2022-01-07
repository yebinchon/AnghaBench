; ModuleID = '/home/carl/AnghaBench/libui/common/extr_matrix.c_uiprivScaleCenter.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_matrix.c_uiprivScaleCenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivScaleCenter(double %0, double %1, double* %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double*, double** %7, align 8
  %11 = load double, double* %10, align 8
  %12 = load double, double* %5, align 8
  %13 = fmul double %11, %12
  %14 = fsub double %9, %13
  %15 = load double*, double** %7, align 8
  store double %14, double* %15, align 8
  %16 = load double, double* %6, align 8
  %17 = load double*, double** %8, align 8
  %18 = load double, double* %17, align 8
  %19 = load double, double* %6, align 8
  %20 = fmul double %18, %19
  %21 = fsub double %16, %20
  %22 = load double*, double** %8, align 8
  store double %21, double* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
