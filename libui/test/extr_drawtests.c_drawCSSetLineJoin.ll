; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSSetLineJoin.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSSetLineJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i8*, i64, i64, i32*, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i8* null, align 8
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawLineJoinBevel = common dso_local global i8* null, align 8
@uiDrawLineJoinRound = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSSetLineJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSSetLineJoin(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @crsourcergba(i32* %3, i32 0, i32 0, i32 0, i32 1)
  %7 = load i32, i32* @uiDrawLineCapFlat, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  store i32 %7, i32* %8, align 4
  %9 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %9, i8** %10, align 8
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
  store double 4.096000e+01, double* %16, align 8
  %17 = load i32, i32* @uiDrawFillModeWinding, align 4
  %18 = call i32* @uiDrawNewPath(i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @uiDrawPathNewFigure(i32* %19, double 0x4053333333333333, double 8.448000e+01)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @uiDrawPathLineTo(i32* %21, double 1.280000e+02, double 3.328000e+01)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @uiDrawPathLineTo(i32* %23, double 1.792000e+02, double 8.448000e+01)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @uiDrawPathEnd(i32* %25)
  %27 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @uiDrawStroke(i32 %31, i32* %32, i32* %3, %struct.TYPE_5__* %4)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @uiDrawFreePath(i32* %34)
  %36 = load i32, i32* @uiDrawFillModeWinding, align 4
  %37 = call i32* @uiDrawNewPath(i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @uiDrawPathNewFigure(i32* %38, double 0x4053333333333333, double 1.612800e+02)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @uiDrawPathLineTo(i32* %40, double 1.280000e+02, double 1.100800e+02)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @uiDrawPathLineTo(i32* %42, double 1.792000e+02, double 1.612800e+02)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @uiDrawPathEnd(i32* %44)
  %46 = load i8*, i8** @uiDrawLineJoinBevel, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @uiDrawStroke(i32 %50, i32* %51, i32* %3, %struct.TYPE_5__* %4)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @uiDrawFreePath(i32* %53)
  %55 = load i32, i32* @uiDrawFillModeWinding, align 4
  %56 = call i32* @uiDrawNewPath(i32 %55)
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @uiDrawPathNewFigure(i32* %57, double 0x4053333333333333, double 2.380800e+02)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @uiDrawPathLineTo(i32* %59, double 1.280000e+02, double 1.868800e+02)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @uiDrawPathLineTo(i32* %61, double 1.792000e+02, double 0x406DC28F5C28F5C2)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @uiDrawPathEnd(i32* %63)
  %65 = load i8*, i8** @uiDrawLineJoinRound, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @uiDrawStroke(i32 %69, i32* %70, i32* %3, %struct.TYPE_5__* %4)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @uiDrawFreePath(i32* %72)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, i32, i32, i32) #1

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
