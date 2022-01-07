; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSFillStyle.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSFillStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32*, i32, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeAlternate = common dso_local global i32 0, align 4
@uiPi = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSFillStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSFillStyle(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = call i32 @crsourcergba(i32* %3, i32 0, double 0.000000e+00, double 0.000000e+00, i32 1)
  %8 = load i32, i32* @uiDrawLineCapFlat, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 6, i32* %17, align 8
  %18 = load i32, i32* @uiDrawFillModeAlternate, align 4
  %19 = call i32* @uiDrawNewPath(i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @uiDrawPathAddRectangle(i32* %20, i32 12, i32 12, i32 232, i32 70)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @uiPi, align 4
  %24 = mul nsw i32 2, %23
  %25 = call i32 @uiDrawPathNewFigureWithArc(i32* %22, i32 64, i32 64, i32 40, i32 0, i32 %24, i32 0)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @uiPi, align 4
  %28 = mul nsw i32 -2, %27
  %29 = call i32 @uiDrawPathNewFigureWithArc(i32* %26, i32 192, i32 64, i32 40, i32 0, i32 %28, i32 1)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @uiDrawPathEnd(i32* %30)
  %32 = call i32 @crsourcergba(i32* %3, i32 0, double 0x3FE6666666666666, double 0.000000e+00, i32 1)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @uiDrawFill(i32 %35, i32* %36, i32* %3)
  %38 = call i32 @crsourcergba(i32* %3, i32 0, double 0.000000e+00, double 0.000000e+00, i32 1)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @uiDrawStroke(i32 %41, i32* %42, i32* %3, %struct.TYPE_5__* %4)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @uiDrawFreePath(i32* %44)
  %46 = call i32 @uiDrawMatrixSetIdentity(i32* %6)
  %47 = call i32 @uiDrawMatrixTranslate(i32* %6, i32 0, i32 128)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @uiDrawTransform(i32 %50, i32* %6)
  %52 = load i32, i32* @uiDrawFillModeWinding, align 4
  %53 = call i32* @uiDrawNewPath(i32 %52)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @uiDrawPathAddRectangle(i32* %54, i32 12, i32 12, i32 232, i32 70)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @uiPi, align 4
  %58 = mul nsw i32 2, %57
  %59 = call i32 @uiDrawPathNewFigureWithArc(i32* %56, i32 64, i32 64, i32 40, i32 0, i32 %58, i32 0)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @uiPi, align 4
  %62 = mul nsw i32 -2, %61
  %63 = call i32 @uiDrawPathNewFigureWithArc(i32* %60, i32 192, i32 64, i32 40, i32 0, i32 %62, i32 1)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @uiDrawPathEnd(i32* %64)
  %66 = call i32 @crsourcergba(i32* %3, i32 0, double 0.000000e+00, double 9.000000e-01, i32 1)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @uiDrawFill(i32 %69, i32* %70, i32* %3)
  %72 = call i32 @crsourcergba(i32* %3, i32 0, double 0.000000e+00, double 0.000000e+00, i32 1)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @uiDrawStroke(i32 %75, i32* %76, i32* %3, %struct.TYPE_5__* %4)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @uiDrawFreePath(i32* %78)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, double, double, i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i32, i32) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
