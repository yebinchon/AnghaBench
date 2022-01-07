; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DComplexShape.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DComplexShape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { double, double, double, double, double }
%struct.TYPE_10__ = type { double, i32, i32, i32, i64, i64, i32* }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@d2dBlack = common dso_local global i32 0, align 4
@uiDrawBrushTypeLinearGradient = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @drawD2DComplexShape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DComplexShape(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca [2 x %struct.TYPE_11__], align 16
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @uiDrawFillModeWinding, align 4
  %13 = call i32* @uiDrawNewPath(i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @uiDrawPathNewFigure(i32* %14, i32 0, i32 0)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @uiDrawPathLineTo(i32* %16, i32 200, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @uiDrawPathBezierTo(i32* %18, i32 150, i32 50, i32 150, i32 150, i32 200, i32 200)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @uiDrawPathLineTo(i32* %20, i32 0, i32 200)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @uiDrawPathBezierTo(i32* %22, i32 50, i32 150, i32 50, i32 50, i32 0, i32 0)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @uiDrawPathCloseFigure(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @uiDrawPathEnd(i32* %26)
  %28 = load i32, i32* @d2dBlack, align 4
  %29 = call i32 @d2dSolidBrush(%struct.TYPE_12__* %4, i32 %28, double 1.000000e+00)
  %30 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store double 0.000000e+00, double* %31, align 16
  %32 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store double 0.000000e+00, double* %33, align 8
  %34 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  store double 1.000000e+00, double* %35, align 16
  %36 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  store double 1.000000e+00, double* %37, align 8
  %38 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  store double 2.500000e-01, double* %39, align 16
  %40 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store double 1.000000e+00, double* %41, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store double 0.000000e+00, double* %43, align 8
  %44 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  store double 0.000000e+00, double* %45, align 8
  %46 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  store double 1.000000e+00, double* %47, align 8
  %48 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  store double 1.000000e+00, double* %49, align 8
  %50 = load i32, i32* @uiDrawBrushTypeLinearGradient, align 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 100, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 100, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 200, i32* %55, align 8
  %56 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i32 2, i32* %58, align 4
  %59 = call i32 @uiDrawMatrixSetIdentity(i32* %8)
  %60 = call i32 @uiDrawMatrixTranslate(i32* %8, i32 20, i32 20)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @uiDrawTransform(i32 %63, i32* %8)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store double 1.000000e+01, double* %65, align 8
  %66 = load i32, i32* @uiDrawLineCapFlat, align 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @uiDrawStroke(i32 %74, i32* %75, %struct.TYPE_12__* %4, %struct.TYPE_10__* %7)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @uiDrawFill(i32 %79, i32* %80, %struct.TYPE_12__* %5)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @uiDrawFreePath(i32* %82)
  ret void
}

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathBezierTo(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathCloseFigure(i32*) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @d2dSolidBrush(%struct.TYPE_12__*, i32, double) #1

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i32, i32) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
