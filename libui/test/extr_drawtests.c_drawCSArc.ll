; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSArc.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSArc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiPi = common dso_local global double 0.000000e+00, align 8
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSArc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSArc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store double 1.280000e+02, double* %3, align 8
  store double 1.280000e+02, double* %4, align 8
  store double 1.000000e+02, double* %5, align 8
  %11 = load double, double* @uiPi, align 8
  %12 = fdiv double %11, 1.800000e+02
  %13 = fmul double 4.500000e+01, %12
  store double %13, double* %6, align 8
  %14 = load double, double* @uiPi, align 8
  %15 = fdiv double %14, 1.800000e+02
  %16 = fmul double 1.800000e+02, %15
  store double %16, double* %7, align 8
  %17 = call i32 @crsourcergba(i32* %8, i32 0, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %18 = load i32, i32* @uiDrawLineCapFlat, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store double 1.000000e+01, double* %27, align 8
  %28 = load i32, i32* @uiDrawFillModeWinding, align 4
  %29 = call i32* @uiDrawNewPath(i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load double, double* %3, align 8
  %32 = load double, double* %4, align 8
  %33 = load double, double* %5, align 8
  %34 = load double, double* %6, align 8
  %35 = load double, double* %7, align 8
  %36 = load double, double* %6, align 8
  %37 = fsub double %35, %36
  %38 = fptosi double %37 to i32
  %39 = call i32 @uiDrawPathNewFigureWithArc(i32* %30, double %31, double %32, double %33, double %34, i32 %38, i32 0)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @uiDrawPathEnd(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @uiDrawStroke(i32 %44, i32* %45, i32* %8, %struct.TYPE_5__* %9)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @uiDrawFreePath(i32* %47)
  %49 = call i32 @crsourcergba(i32* %8, i32 1, double 2.000000e-01, double 2.000000e-01, double 6.000000e-01)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store double 6.000000e+00, double* %50, align 8
  %51 = load i32, i32* @uiDrawFillModeWinding, align 4
  %52 = call i32* @uiDrawNewPath(i32 %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load double, double* %3, align 8
  %55 = load double, double* %4, align 8
  %56 = load double, double* @uiPi, align 8
  %57 = fmul double 2.000000e+00, %56
  %58 = fptosi double %57 to i32
  %59 = call i32 @uiDrawPathNewFigureWithArc(i32* %53, double %54, double %55, double 1.000000e+01, double 0.000000e+00, i32 %58, i32 0)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @uiDrawPathEnd(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @uiDrawFill(i32 %64, i32* %65, i32* %8)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @uiDrawFreePath(i32* %67)
  %69 = load i32, i32* @uiDrawFillModeWinding, align 4
  %70 = call i32* @uiDrawNewPath(i32 %69)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load double, double* %3, align 8
  %73 = load double, double* %4, align 8
  %74 = load double, double* %5, align 8
  %75 = load double, double* %6, align 8
  %76 = call i32 @uiDrawPathNewFigureWithArc(i32* %71, double %72, double %73, double %74, double %75, i32 0, i32 0)
  %77 = load i32*, i32** %10, align 8
  %78 = load double, double* %3, align 8
  %79 = load double, double* %4, align 8
  %80 = call i32 @uiDrawPathLineTo(i32* %77, double %78, double %79)
  %81 = load i32*, i32** %10, align 8
  %82 = load double, double* %3, align 8
  %83 = load double, double* %4, align 8
  %84 = load double, double* %5, align 8
  %85 = load double, double* %7, align 8
  %86 = call i32 @uiDrawPathNewFigureWithArc(i32* %81, double %82, double %83, double %84, double %85, i32 0, i32 0)
  %87 = load i32*, i32** %10, align 8
  %88 = load double, double* %3, align 8
  %89 = load double, double* %4, align 8
  %90 = call i32 @uiDrawPathLineTo(i32* %87, double %88, double %89)
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @uiDrawPathEnd(i32* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @uiDrawStroke(i32 %95, i32* %96, i32* %8, %struct.TYPE_5__* %9)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @uiDrawFreePath(i32* %98)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, double, double, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, double, double, double, double, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
