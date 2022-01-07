; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSRoundRect.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSRoundRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiPi = common dso_local global double 0.000000e+00, align 8
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSRoundRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSRoundRect(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store double 2.560000e+01, double* %3, align 8
  store double 2.560000e+01, double* %4, align 8
  store double 2.048000e+02, double* %5, align 8
  store double 2.048000e+02, double* %6, align 8
  store double 1.000000e+00, double* %7, align 8
  %14 = load double, double* %6, align 8
  %15 = fdiv double %14, 1.000000e+01
  store double %15, double* %8, align 8
  %16 = load double, double* %8, align 8
  %17 = load double, double* %7, align 8
  %18 = fdiv double %16, %17
  store double %18, double* %9, align 8
  %19 = load double, double* @uiPi, align 8
  %20 = fdiv double %19, 1.800000e+02
  store double %20, double* %10, align 8
  %21 = call i32 @crsourcergba(i32* %11, double 0.000000e+00, double 0.000000e+00, i32 0, double 1.000000e+00)
  %22 = load i32, i32* @uiDrawLineCapFlat, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @uiDrawFillModeWinding, align 4
  %32 = call i32* @uiDrawNewPath(i32 %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load double, double* %3, align 8
  %35 = load double, double* %5, align 8
  %36 = fadd double %34, %35
  %37 = load double, double* %9, align 8
  %38 = fsub double %36, %37
  %39 = load double, double* %4, align 8
  %40 = load double, double* %9, align 8
  %41 = fadd double %39, %40
  %42 = load double, double* %9, align 8
  %43 = load double, double* %10, align 8
  %44 = fmul double -9.000000e+01, %43
  %45 = fptosi double %44 to i32
  %46 = load double, double* @uiPi, align 8
  %47 = fdiv double %46, 2.000000e+00
  %48 = call i32 @uiDrawPathNewFigureWithArc(i32* %33, double %38, double %41, double %42, i32 %45, double %47, i32 0)
  %49 = load i32*, i32** %13, align 8
  %50 = load double, double* %3, align 8
  %51 = load double, double* %5, align 8
  %52 = fadd double %50, %51
  %53 = load double, double* %9, align 8
  %54 = fsub double %52, %53
  %55 = load double, double* %4, align 8
  %56 = load double, double* %6, align 8
  %57 = fadd double %55, %56
  %58 = load double, double* %9, align 8
  %59 = fsub double %57, %58
  %60 = load double, double* %9, align 8
  %61 = load double, double* %10, align 8
  %62 = fmul double 0.000000e+00, %61
  %63 = fptosi double %62 to i32
  %64 = load double, double* @uiPi, align 8
  %65 = fdiv double %64, 2.000000e+00
  %66 = call i32 @uiDrawPathArcTo(i32* %49, double %54, double %59, double %60, i32 %63, double %65, i32 0)
  %67 = load i32*, i32** %13, align 8
  %68 = load double, double* %3, align 8
  %69 = load double, double* %9, align 8
  %70 = fadd double %68, %69
  %71 = load double, double* %4, align 8
  %72 = load double, double* %6, align 8
  %73 = fadd double %71, %72
  %74 = load double, double* %9, align 8
  %75 = fsub double %73, %74
  %76 = load double, double* %9, align 8
  %77 = load double, double* %10, align 8
  %78 = fmul double 9.000000e+01, %77
  %79 = fptosi double %78 to i32
  %80 = load double, double* @uiPi, align 8
  %81 = fdiv double %80, 2.000000e+00
  %82 = call i32 @uiDrawPathArcTo(i32* %67, double %70, double %75, double %76, i32 %79, double %81, i32 0)
  %83 = load i32*, i32** %13, align 8
  %84 = load double, double* %3, align 8
  %85 = load double, double* %9, align 8
  %86 = fadd double %84, %85
  %87 = load double, double* %4, align 8
  %88 = load double, double* %9, align 8
  %89 = fadd double %87, %88
  %90 = load double, double* %9, align 8
  %91 = load double, double* %10, align 8
  %92 = fmul double 1.800000e+02, %91
  %93 = fptosi double %92 to i32
  %94 = load double, double* @uiPi, align 8
  %95 = fdiv double %94, 2.000000e+00
  %96 = call i32 @uiDrawPathArcTo(i32* %83, double %86, double %89, double %90, i32 %93, double %95, i32 0)
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @uiDrawPathCloseFigure(i32* %97)
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @uiDrawPathEnd(i32* %99)
  %101 = call i32 @crsourcergba(i32* %11, double 5.000000e-01, double 5.000000e-01, i32 1, double 1.000000e+00)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @uiDrawFill(i32 %104, i32* %105, i32* %11)
  %107 = call i32 @crsourcergba(i32* %11, double 5.000000e-01, double 0.000000e+00, i32 0, double 5.000000e-01)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store double 1.000000e+01, double* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @uiDrawStroke(i32 %111, i32* %112, i32* %11, %struct.TYPE_5__* %12)
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @uiDrawFreePath(i32* %114)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, double, double, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, double, double, double, i32, double, i32) #1

declare dso_local i32 @uiDrawPathArcTo(i32*, double, double, double, i32, double, i32) #1

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
