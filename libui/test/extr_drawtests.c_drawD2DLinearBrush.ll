; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DLinearBrush.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DLinearBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i64, i64, i32 }
%struct.TYPE_11__ = type { double, double, i32, i32, i32 }
%struct.TYPE_10__ = type { double, i32, i32, i32, i64, i64, i32* }

@uiDrawBrushTypeLinearGradient = common dso_local global i32 0, align 4
@d2dYellow = common dso_local global i32 0, align 4
@d2dForestGreen = common dso_local global i32 0, align 4
@d2dBlack = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @drawD2DLinearBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DLinearBrush(%struct.TYPE_13__* %0) #0 {
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
  %18 = load i32, i32* @uiDrawBrushTypeLinearGradient, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 150, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 150, i32* %23, align 4
  %24 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store double 0.000000e+00, double* %25, align 16
  %26 = load i32, i32* @d2dYellow, align 4
  %27 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = call i32 @d2dColorToRGB(i32 %26, i32* %28, i32* %30, i32* %32)
  %34 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store double 1.000000e+00, double* %35, align 8
  %36 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store double 1.000000e+00, double* %37, align 16
  %38 = load i32, i32* @d2dForestGreen, align 4
  %39 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = call i32 @d2dColorToRGB(i32 %38, i32* %40, i32* %42, i32* %44)
  %46 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store double 1.000000e+00, double* %47, align 8
  %48 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 2, i32* %50, align 8
  %51 = load i32, i32* @d2dBlack, align 4
  %52 = call i32 @d2dSolidBrush(%struct.TYPE_12__* %4, i32 %51, double 1.000000e+00)
  %53 = load i32, i32* @uiDrawFillModeWinding, align 4
  %54 = call i32* @uiDrawNewPath(i32 %53)
  store i32* %54, i32** %3, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @uiDrawPathAddRectangle(i32* %55, i32 0, i32 0, i32 150, i32 150)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @uiDrawPathEnd(i32* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @uiDrawFill(i32 %61, i32* %62, %struct.TYPE_12__* %5)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store double 1.000000e+00, double* %64, align 8
  %65 = load i32, i32* @uiDrawLineCapFlat, align 4
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @uiDrawStroke(i32 %73, i32* %74, %struct.TYPE_12__* %4, %struct.TYPE_10__* %7)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @uiDrawFreePath(i32* %76)
  ret void
}

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i32, i32) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @d2dColorToRGB(i32, i32*, i32*, i32*) #1

declare dso_local i32 @d2dSolidBrush(%struct.TYPE_12__*, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

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
