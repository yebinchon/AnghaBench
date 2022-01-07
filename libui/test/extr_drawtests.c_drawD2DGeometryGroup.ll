; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DGeometryGroup.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DGeometryGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { double, i32, i32, i32, i64, i64, i32* }

@uiDrawFillModeAlternate = common dso_local global i32 0, align 4
@uiPi = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@d2dWhite = common dso_local global i32 0, align 4
@d2dForestGreen = common dso_local global i32 0, align 4
@d2dCornflowerBlue = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @drawD2DGeometryGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DGeometryGroup(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @uiDrawFillModeAlternate, align 4
  %13 = call i32* @uiDrawNewPath(i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @uiPi, align 4
  %16 = mul nsw i32 2, %15
  %17 = call i32 @uiDrawPathNewFigureWithArc(i32* %14, i32 105, i32 105, i32 25, i32 0, i32 %16, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @uiPi, align 4
  %20 = mul nsw i32 2, %19
  %21 = call i32 @uiDrawPathNewFigureWithArc(i32* %18, i32 105, i32 105, i32 50, i32 0, i32 %20, i32 0)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @uiPi, align 4
  %24 = mul nsw i32 2, %23
  %25 = call i32 @uiDrawPathNewFigureWithArc(i32* %22, i32 105, i32 105, i32 75, i32 0, i32 %24, i32 0)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @uiPi, align 4
  %28 = mul nsw i32 2, %27
  %29 = call i32 @uiDrawPathNewFigureWithArc(i32* %26, i32 105, i32 105, i32 100, i32 0, i32 %28, i32 0)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @uiDrawPathEnd(i32* %30)
  %32 = load i32, i32* @uiDrawFillModeWinding, align 4
  %33 = call i32* @uiDrawNewPath(i32 %32)
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @uiPi, align 4
  %36 = mul nsw i32 2, %35
  %37 = call i32 @uiDrawPathNewFigureWithArc(i32* %34, i32 105, i32 105, i32 25, i32 0, i32 %36, i32 0)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @uiPi, align 4
  %40 = mul nsw i32 2, %39
  %41 = call i32 @uiDrawPathNewFigureWithArc(i32* %38, i32 105, i32 105, i32 50, i32 0, i32 %40, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @uiPi, align 4
  %44 = mul nsw i32 2, %43
  %45 = call i32 @uiDrawPathNewFigureWithArc(i32* %42, i32 105, i32 105, i32 75, i32 0, i32 %44, i32 0)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @uiPi, align 4
  %48 = mul nsw i32 2, %47
  %49 = call i32 @uiDrawPathNewFigureWithArc(i32* %46, i32 105, i32 105, i32 100, i32 0, i32 %48, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @uiDrawPathEnd(i32* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = load i32, i32* @d2dWhite, align 4
  %54 = call i32 @d2dClear(%struct.TYPE_7__* %52, i32 %53, double 1.000000e+00)
  %55 = load i32, i32* @d2dForestGreen, align 4
  %56 = call i32 @d2dSolidBrush(i32* %5, i32 %55, double 1.000000e+00)
  %57 = load i32, i32* @d2dCornflowerBlue, align 4
  %58 = call i32 @d2dSolidBrush(i32* %6, i32 %57, double 1.000000e+00)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store double 1.000000e+00, double* %59, align 8
  %60 = load i32, i32* @uiDrawLineCapFlat, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @uiDrawFill(i32 %68, i32* %69, i32* %5)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @uiDrawStroke(i32 %73, i32* %74, i32* %6, %struct.TYPE_6__* %7)
  %76 = call i32 @uiDrawMatrixSetIdentity(i32* %8)
  %77 = call i32 @uiDrawMatrixTranslate(i32* %8, i32 300, i32 0)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @uiDrawTransform(i32 %80, i32* %8)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @uiDrawFill(i32 %84, i32* %85, i32* %5)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @uiDrawStroke(i32 %89, i32* %90, i32* %6, %struct.TYPE_6__* %7)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @uiDrawFreePath(i32* %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @uiDrawFreePath(i32* %94)
  ret void
}

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @d2dClear(%struct.TYPE_7__*, i32, double) #1

declare dso_local i32 @d2dSolidBrush(i32*, i32, double) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i32, i32) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
