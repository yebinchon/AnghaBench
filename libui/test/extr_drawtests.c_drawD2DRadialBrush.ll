; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DRadialBrush.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DRadialBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { double, double, i32, i32, i32 }
%struct.TYPE_10__ = type { double, i32, i32, i32, i64, i64, i32* }

@uiDrawBrushTypeRadialGradient = common dso_local global i32 0, align 4
@d2dYellow = common dso_local global i32 0, align 4
@d2dForestGreen = common dso_local global i32 0, align 4
@d2dBlack = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiPi = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @drawD2DRadialBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DRadialBrush(%struct.TYPE_13__* %0) #0 {
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
  %12 = call i32 @uiDrawMatrixSetIdentity(i32* %8)
  %13 = call i32 @uiDrawMatrixTranslate(i32* %8, i32 25, i32 25)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @uiDrawTransform(i32 %16, i32* %8)
  %18 = load i32, i32* @uiDrawBrushTypeRadialGradient, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 7
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 75, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 75, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 75, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i32 75, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i32 75, i32* %24, align 8
  %25 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store double 0.000000e+00, double* %26, align 16
  %27 = load i32, i32* @d2dYellow, align 4
  %28 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = call i32 @d2dColorToRGB(i32 %27, i32* %29, i32* %31, i32* %33)
  %35 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store double 1.000000e+00, double* %36, align 8
  %37 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store double 1.000000e+00, double* %38, align 16
  %39 = load i32, i32* @d2dForestGreen, align 4
  %40 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = call i32 @d2dColorToRGB(i32 %39, i32* %41, i32* %43, i32* %45)
  %47 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store double 1.000000e+00, double* %48, align 8
  %49 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i32 2, i32* %51, align 4
  %52 = load i32, i32* @d2dBlack, align 4
  %53 = call i32 @d2dSolidBrush(%struct.TYPE_12__* %4, i32 %52, double 1.000000e+00)
  %54 = load i32, i32* @uiDrawFillModeWinding, align 4
  %55 = call i32* @uiDrawNewPath(i32 %54)
  store i32* %55, i32** %3, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @uiDrawPathNewFigure(i32* %56, i32 150, i32 75)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @uiPi, align 4
  %60 = mul nsw i32 2, %59
  %61 = call i32 @uiDrawPathArcTo(i32* %58, i32 75, i32 75, i32 75, i32 0, i32 %60, i32 0)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @uiDrawPathEnd(i32* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @uiDrawFill(i32 %66, i32* %67, %struct.TYPE_12__* %5)
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store double 1.000000e+00, double* %69, align 8
  %70 = load i32, i32* @uiDrawLineCapFlat, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @uiDrawStroke(i32 %78, i32* %79, %struct.TYPE_12__* %4, %struct.TYPE_10__* %7)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @uiDrawFreePath(i32* %81)
  ret void
}

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i32, i32) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @d2dColorToRGB(i32, i32*, i32*, i32*) #1

declare dso_local i32 @d2dSolidBrush(%struct.TYPE_12__*, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathArcTo(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
