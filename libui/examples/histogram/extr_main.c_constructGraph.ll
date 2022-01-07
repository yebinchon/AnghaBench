; ModuleID = '/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_constructGraph.c'
source_filename = "/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_constructGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (double, double, i32)* @constructGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @constructGraph(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [10 x double], align 16
  %9 = alloca [10 x double], align 16
  %10 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load double, double* %4, align 8
  %12 = load double, double* %5, align 8
  %13 = getelementptr inbounds [10 x double], [10 x double]* %8, i64 0, i64 0
  %14 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 0
  %15 = call i32 @pointLocations(double %11, double %12, double* %13, double* %14)
  %16 = load i32, i32* @uiDrawFillModeWinding, align 4
  %17 = call i32* @uiDrawNewPath(i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds [10 x double], [10 x double]* %8, i64 0, i64 0
  %20 = load double, double* %19, align 16
  %21 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 0
  %22 = load double, double* %21, align 16
  %23 = call i32 @uiDrawPathNewFigure(i32* %18, double %20, double %22)
  store i32 1, i32* %10, align 4
  br label %24

24:                                               ; preds = %38, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x double], [10 x double]* %8, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 %34
  %36 = load double, double* %35, align 8
  %37 = call i32 @uiDrawPathLineTo(i32* %28, double %32, double %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load double, double* %4, align 8
  %47 = load double, double* %5, align 8
  %48 = call i32 @uiDrawPathLineTo(i32* %45, double %46, double %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load double, double* %5, align 8
  %51 = call i32 @uiDrawPathLineTo(i32* %49, double 0.000000e+00, double %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @uiDrawPathCloseFigure(i32* %52)
  br label %54

54:                                               ; preds = %44, %41
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @uiDrawPathEnd(i32* %55)
  %57 = load i32*, i32** %7, align 8
  ret i32* %57
}

declare dso_local i32 @pointLocations(double, double, double*, double*) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #1

declare dso_local i32 @uiDrawPathCloseFigure(i32*) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
