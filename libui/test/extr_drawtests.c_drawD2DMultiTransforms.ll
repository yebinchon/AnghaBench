; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DMultiTransforms.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DMultiTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i8*, i8*, i8*, i64, i64, i32* }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@d2dBlack = common dso_local global i32 0, align 4
@d2dWhite = common dso_local global i32 0, align 4
@d2dForestGreen = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i8* null, align 8
@uiDrawLineJoinMiter = common dso_local global i8* null, align 8
@uiDrawDefaultMiterLimit = common dso_local global i8* null, align 8
@uiPi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawD2DMultiTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DMultiTransforms(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @uiDrawFillModeWinding, align 4
  %18 = call i32* @uiDrawNewPath(i32 %17)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @uiDrawPathAddRectangle(i32* %19, double 3.000000e+02, double 4.000000e+01, double 6.000000e+01, double 6.000000e+01)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @uiDrawPathEnd(i32* %21)
  %23 = load i32, i32* @d2dBlack, align 4
  %24 = call i32 @d2dSolidBrush(i32* %4, i32 %23, double 1.000000e+00)
  %25 = load i32, i32* @d2dWhite, align 4
  %26 = call i32 @d2dSolidBrush(i32* %5, i32 %25, double 5.000000e-01)
  %27 = load i32, i32* @d2dForestGreen, align 4
  %28 = call i32 @d2dSolidBrush(i32* %6, i32 %27, double 1.000000e+00)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store double 1.000000e+00, double* %29, align 8
  %30 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store double 1.000000e+00, double* %36, align 8
  %37 = load i8*, i8** @uiDrawLineCapFlat, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @uiDrawLineJoinMiter, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** @uiDrawDefaultMiterLimit, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = call i32 @uiDrawMatrixSetIdentity(i32* %9)
  %44 = call i32 @uiDrawMatrixTranslate(i32* %9, double 2.000000e+01, double 1.000000e+01)
  %45 = call i32 @uiDrawMatrixSetIdentity(i32* %10)
  %46 = load i32, i32* @uiPi, align 4
  %47 = sdiv i32 %46, 180
  %48 = sitofp i32 %47 to double
  %49 = fmul double 4.500000e+01, %48
  %50 = call i32 @uiDrawMatrixRotate(i32* %10, double 3.300000e+02, double 7.000000e+01, double %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @uiDrawSave(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @uiDrawStroke(i32 %57, i32* %58, i32* %4, %struct.TYPE_5__* %7)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @uiDrawTransform(i32 %62, i32* %10)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @uiDrawTransform(i32 %66, i32* %9)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @uiDrawFill(i32 %70, i32* %71, i32* %5)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @uiDrawStroke(i32 %75, i32* %76, i32* %6, %struct.TYPE_5__* %8)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @uiDrawRestore(i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @uiDrawFreePath(i32* %82)
  %84 = load i32, i32* @uiDrawFillModeWinding, align 4
  %85 = call i32* @uiDrawNewPath(i32 %84)
  store i32* %85, i32** %3, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @uiDrawPathAddRectangle(i32* %86, double 4.000000e+01, double 4.000000e+01, double 6.000000e+01, double 6.000000e+01)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @uiDrawPathEnd(i32* %88)
  %90 = call i32 @uiDrawMatrixSetIdentity(i32* %9)
  %91 = call i32 @uiDrawMatrixTranslate(i32* %9, double 2.000000e+01, double 1.000000e+01)
  %92 = call i32 @uiDrawMatrixSetIdentity(i32* %10)
  %93 = load i32, i32* @uiPi, align 4
  %94 = sdiv i32 %93, 180
  %95 = sitofp i32 %94 to double
  %96 = fmul double 4.500000e+01, %95
  %97 = call i32 @uiDrawMatrixRotate(i32* %10, double 7.000000e+01, double 7.000000e+01, double %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @uiDrawStroke(i32 %100, i32* %101, i32* %4, %struct.TYPE_5__* %7)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @uiDrawTransform(i32 %105, i32* %9)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @uiDrawTransform(i32 %109, i32* %10)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @uiDrawFill(i32 %113, i32* %114, i32* %5)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @uiDrawStroke(i32 %118, i32* %119, i32* %6, %struct.TYPE_5__* %8)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @uiDrawFreePath(i32* %121)
  ret void
}

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @d2dSolidBrush(i32*, i32, double) #1

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, double, double) #1

declare dso_local i32 @uiDrawMatrixRotate(i32*, double, double, double) #1

declare dso_local i32 @uiDrawSave(i32) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawRestore(i32) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
