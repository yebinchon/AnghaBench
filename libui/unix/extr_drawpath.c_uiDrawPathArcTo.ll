; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_drawpath.c_uiDrawPathArcTo.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_drawpath.c_uiDrawPathArcTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.piece = type { double*, i32, i32 }

@uiPi = common dso_local global i32 0, align 4
@arcTo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawPathArcTo(i32* %0, double %1, double %2, double %3, double %4, double %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.piece, align 8
  store i32* %0, i32** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load double, double* %13, align 8
  %17 = load i32, i32* @uiPi, align 4
  %18 = mul nsw i32 2, %17
  %19 = sitofp i32 %18 to double
  %20 = fcmp ogt double %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* @uiPi, align 4
  %23 = mul nsw i32 2, %22
  %24 = sitofp i32 %23 to double
  store double %24, double* %13, align 8
  br label %25

25:                                               ; preds = %21, %7
  %26 = load i32, i32* @arcTo, align 4
  %27 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load double, double* %9, align 8
  %29 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %30 = load double*, double** %29, align 8
  %31 = getelementptr inbounds double, double* %30, i64 0
  store double %28, double* %31, align 8
  %32 = load double, double* %10, align 8
  %33 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %34 = load double*, double** %33, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  store double %32, double* %35, align 8
  %36 = load double, double* %11, align 8
  %37 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 2
  store double %36, double* %39, align 8
  %40 = load double, double* %12, align 8
  %41 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds double, double* %42, i64 3
  store double %40, double* %43, align 8
  %44 = load double, double* %13, align 8
  %45 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 4
  store double %44, double* %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @add(i32* %50, %struct.piece* %15)
  ret void
}

declare dso_local i32 @add(i32*, %struct.piece*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
