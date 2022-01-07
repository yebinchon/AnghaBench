; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSClip.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSClip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiPi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSClip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSClip(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @crsourcergba(i32* %3, i32 0, i32 0, i32 0, i32 1)
  %7 = load i32, i32* @uiDrawLineCapFlat, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @uiDrawFillModeWinding, align 4
  %17 = call i32* @uiDrawNewPath(i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @uiPi, align 4
  %20 = mul nsw i32 2, %19
  %21 = call i32 @uiDrawPathNewFigureWithArc(i32* %18, double 1.280000e+02, double 1.280000e+02, double 0x4053333333333333, i32 0, i32 %20, i32 0)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @uiDrawPathEnd(i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @uiDrawClip(i32 %26, i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @uiDrawFreePath(i32* %29)
  %31 = load i32, i32* @uiDrawFillModeWinding, align 4
  %32 = call i32* @uiDrawNewPath(i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @uiDrawPathAddRectangle(i32* %33, i32 0, i32 0, i32 256, i32 256)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @uiDrawPathEnd(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @uiDrawFill(i32 %39, i32* %40, i32* %3)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @uiDrawFreePath(i32* %42)
  %44 = call i32 @crsourcergba(i32* %3, i32 0, i32 1, i32 0, i32 1)
  %45 = load i32, i32* @uiDrawFillModeWinding, align 4
  %46 = call i32* @uiDrawNewPath(i32 %45)
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @uiDrawPathNewFigure(i32* %47, i32 0, i32 0)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @uiDrawPathLineTo(i32* %49, i32 256, i32 256)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @uiDrawPathNewFigure(i32* %51, i32 256, i32 0)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @uiDrawPathLineTo(i32* %53, i32 0, i32 256)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @uiDrawPathEnd(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store double 1.000000e+01, double* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @uiDrawStroke(i32 %60, i32* %61, i32* %3, %struct.TYPE_5__* %4)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @uiDrawFreePath(i32* %63)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, double, double, double, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawClip(i32, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, i32) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
