; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSCurveTo.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSCurveTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSCurveTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSCurveTo(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store double 2.560000e+01, double* %3, align 8
  store double 1.280000e+02, double* %4, align 8
  store double 1.024000e+02, double* %5, align 8
  store double 2.304000e+02, double* %6, align 8
  store double 1.536000e+02, double* %7, align 8
  store double 2.560000e+01, double* %8, align 8
  store double 2.304000e+02, double* %9, align 8
  store double 1.280000e+02, double* %10, align 8
  %14 = call i32 @crsourcergba(i32* %11, i32 0, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %15 = load i32, i32* @uiDrawLineCapFlat, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @uiDrawFillModeWinding, align 4
  %25 = call i32* @uiDrawNewPath(i32 %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = call i32 @uiDrawPathNewFigure(i32* %26, double %27, double %28)
  %30 = load i32*, i32** %13, align 8
  %31 = load double, double* %5, align 8
  %32 = load double, double* %6, align 8
  %33 = load double, double* %7, align 8
  %34 = load double, double* %8, align 8
  %35 = load double, double* %9, align 8
  %36 = load double, double* %10, align 8
  %37 = call i32 @uiDrawPathBezierTo(i32* %30, double %31, double %32, double %33, double %34, double %35, double %36)
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @uiDrawPathEnd(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store double 1.000000e+01, double* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @uiDrawStroke(i32 %43, i32* %44, i32* %11, %struct.TYPE_5__* %12)
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @uiDrawFreePath(i32* %46)
  %48 = call i32 @crsourcergba(i32* %11, i32 1, double 2.000000e-01, double 2.000000e-01, double 6.000000e-01)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store double 6.000000e+00, double* %49, align 8
  %50 = load i32, i32* @uiDrawFillModeWinding, align 4
  %51 = call i32* @uiDrawNewPath(i32 %50)
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load double, double* %3, align 8
  %54 = load double, double* %4, align 8
  %55 = call i32 @uiDrawPathNewFigure(i32* %52, double %53, double %54)
  %56 = load i32*, i32** %13, align 8
  %57 = load double, double* %5, align 8
  %58 = load double, double* %6, align 8
  %59 = call i32 @uiDrawPathLineTo(i32* %56, double %57, double %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load double, double* %7, align 8
  %62 = load double, double* %8, align 8
  %63 = call i32 @uiDrawPathNewFigure(i32* %60, double %61, double %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load double, double* %9, align 8
  %66 = load double, double* %10, align 8
  %67 = call i32 @uiDrawPathLineTo(i32* %64, double %65, double %66)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @uiDrawPathEnd(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @uiDrawStroke(i32 %72, i32* %73, i32* %11, %struct.TYPE_5__* %12)
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @uiDrawFreePath(i32* %75)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, double, double, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #1

declare dso_local i32 @uiDrawPathBezierTo(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
