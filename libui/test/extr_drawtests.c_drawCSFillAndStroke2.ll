; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSFillAndStroke2.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSFillAndStroke2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSFillAndStroke2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSFillAndStroke2(%struct.TYPE_6__* %0) #0 {
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
  %19 = call i32 @uiDrawPathNewFigure(i32* %18, double 1.280000e+02, double 2.560000e+01)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @uiDrawPathLineTo(i32* %20, double 2.304000e+02, double 2.304000e+02)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @uiDrawPathLineTo(i32* %22, double 1.280000e+02, double 2.304000e+02)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @uiDrawPathBezierTo(i32* %24, double 5.120000e+01, double 2.304000e+02, double 5.120000e+01, double 1.280000e+02, double 1.280000e+02, double 1.280000e+02)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @uiDrawPathCloseFigure(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @uiDrawPathNewFigure(i32* %28, double 6.400000e+01, double 2.560000e+01)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @uiDrawPathLineTo(i32* %30, double 1.152000e+02, double 0x4053333333333334)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @uiDrawPathLineTo(i32* %32, double 6.400000e+01, double 1.280000e+02)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @uiDrawPathLineTo(i32* %34, double 0x4029999999999998, double 0x4053333333333333)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @uiDrawPathCloseFigure(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @uiDrawPathEnd(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store double 1.000000e+01, double* %40, align 8
  %41 = call i32 @crsourcergba(i32* %3, i32 0, i32 0, i32 1, i32 1)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @uiDrawFill(i32 %44, i32* %45, i32* %3)
  %47 = call i32 @crsourcergba(i32* %3, i32 0, i32 0, i32 0, i32 1)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @uiDrawStroke(i32 %50, i32* %51, i32* %3, %struct.TYPE_5__* %4)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @uiDrawFreePath(i32* %53)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #1

declare dso_local i32 @uiDrawPathBezierTo(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @uiDrawPathCloseFigure(i32*) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
