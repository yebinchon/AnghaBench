; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_drawmatrix.c_uiDrawMatrixScale.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_drawmatrix.c_uiDrawMatrixScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawMatrixScale(i32* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @m2c(i32* %14, i32* %11)
  %16 = load double, double* %9, align 8
  store double %16, double* %12, align 8
  %17 = load double, double* %10, align 8
  store double %17, double* %13, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %8, align 8
  %20 = call i32 @uiprivScaleCenter(double %18, double %19, double* %12, double* %13)
  %21 = load double, double* %12, align 8
  %22 = load double, double* %13, align 8
  %23 = call i32 @cairo_matrix_translate(i32* %11, double %21, double %22)
  %24 = load double, double* %9, align 8
  %25 = load double, double* %10, align 8
  %26 = call i32 @cairo_matrix_scale(i32* %11, double %24, double %25)
  %27 = load double, double* %12, align 8
  %28 = fneg double %27
  %29 = load double, double* %13, align 8
  %30 = fneg double %29
  %31 = call i32 @cairo_matrix_translate(i32* %11, double %28, double %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @c2m(i32* %11, i32* %32)
  ret void
}

declare dso_local i32 @m2c(i32*, i32*) #1

declare dso_local i32 @uiprivScaleCenter(double, double, double*, double*) #1

declare dso_local i32 @cairo_matrix_translate(i32*, double, double) #1

declare dso_local i32 @cairo_matrix_scale(i32*, double, double) #1

declare dso_local i32 @c2m(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
