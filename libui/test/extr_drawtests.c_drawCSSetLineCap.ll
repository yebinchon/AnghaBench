; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSSetLineCap.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSSetLineCap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i8*, i64, i64, i32*, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i8* null, align 8
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawLineCapRound = common dso_local global i8* null, align 8
@uiDrawLineCapSquare = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSSetLineCap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSSetLineCap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @crsourcergba(i32* %3, i32 0, double 0.000000e+00, double 0.000000e+00, i32 1)
  %7 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %7, i8** %8, align 8
  %9 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store double 3.000000e+01, double* %16, align 8
  %17 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @uiDrawFillModeWinding, align 4
  %20 = call i32* @uiDrawNewPath(i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @uiDrawPathNewFigure(i32* %21, double 6.400000e+01, double 5.000000e+01)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @uiDrawPathLineTo(i32* %23, double 6.400000e+01, double 2.000000e+02)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @uiDrawPathEnd(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @uiDrawStroke(i32 %29, i32* %30, i32* %3, %struct.TYPE_5__* %4)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @uiDrawFreePath(i32* %32)
  %34 = load i8*, i8** @uiDrawLineCapRound, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @uiDrawFillModeWinding, align 4
  %37 = call i32* @uiDrawNewPath(i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @uiDrawPathNewFigure(i32* %38, double 1.280000e+02, double 5.000000e+01)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @uiDrawPathLineTo(i32* %40, double 1.280000e+02, double 2.000000e+02)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @uiDrawPathEnd(i32* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @uiDrawStroke(i32 %46, i32* %47, i32* %3, %struct.TYPE_5__* %4)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @uiDrawFreePath(i32* %49)
  %51 = load i8*, i8** @uiDrawLineCapSquare, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @uiDrawFillModeWinding, align 4
  %54 = call i32* @uiDrawNewPath(i32 %53)
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @uiDrawPathNewFigure(i32* %55, double 1.920000e+02, double 5.000000e+01)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @uiDrawPathLineTo(i32* %57, double 1.920000e+02, double 2.000000e+02)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @uiDrawPathEnd(i32* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @uiDrawStroke(i32 %63, i32* %64, i32* %3, %struct.TYPE_5__* %4)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @uiDrawFreePath(i32* %66)
  %68 = call i32 @crsourcergba(i32* %3, i32 1, double 2.000000e-01, double 2.000000e-01, i32 1)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store double 2.560000e+00, double* %69, align 8
  %70 = load i32, i32* @uiDrawFillModeWinding, align 4
  %71 = call i32* @uiDrawNewPath(i32 %70)
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @uiDrawPathNewFigure(i32* %72, double 6.400000e+01, double 5.000000e+01)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @uiDrawPathLineTo(i32* %74, double 6.400000e+01, double 2.000000e+02)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @uiDrawPathNewFigure(i32* %76, double 1.280000e+02, double 5.000000e+01)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @uiDrawPathLineTo(i32* %78, double 1.280000e+02, double 2.000000e+02)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @uiDrawPathNewFigure(i32* %80, double 1.920000e+02, double 5.000000e+01)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @uiDrawPathLineTo(i32* %82, double 1.920000e+02, double 2.000000e+02)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @uiDrawPathEnd(i32* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @uiDrawStroke(i32 %88, i32* %89, i32* %3, %struct.TYPE_5__* %4)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @uiDrawFreePath(i32* %91)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, double, double, i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
