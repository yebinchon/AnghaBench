; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_drawpath.c_uiDrawPathBezierTo.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_drawpath.c_uiDrawPathBezierTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.piece = type { double*, i32 }

@bezierTo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawPathBezierTo(i32* %0, double %1, double %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.piece, align 8
  store i32* %0, i32** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %16 = load i32, i32* @bezierTo, align 4
  %17 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load double, double* %9, align 8
  %19 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %20 = load double*, double** %19, align 8
  %21 = getelementptr inbounds double, double* %20, i64 0
  store double %18, double* %21, align 8
  %22 = load double, double* %10, align 8
  %23 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  store double %22, double* %25, align 8
  %26 = load double, double* %11, align 8
  %27 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %28 = load double*, double** %27, align 8
  %29 = getelementptr inbounds double, double* %28, i64 2
  store double %26, double* %29, align 8
  %30 = load double, double* %12, align 8
  %31 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %32 = load double*, double** %31, align 8
  %33 = getelementptr inbounds double, double* %32, i64 3
  store double %30, double* %33, align 8
  %34 = load double, double* %13, align 8
  %35 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  %37 = getelementptr inbounds double, double* %36, i64 4
  store double %34, double* %37, align 8
  %38 = load double, double* %14, align 8
  %39 = getelementptr inbounds %struct.piece, %struct.piece* %15, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  %41 = getelementptr inbounds double, double* %40, i64 5
  store double %38, double* %41, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @add(i32* %42, %struct.piece* %15)
  ret void
}

declare dso_local i32 @add(i32*, %struct.piece*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
