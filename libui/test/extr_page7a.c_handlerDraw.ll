; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page7a.c_handlerDraw.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page7a.c_handlerDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@startAngle = common dso_local global i32 0, align 4
@sweep = common dso_local global i32 0, align 4
@uiPi = common dso_local global i32 0, align 4
@radians = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@negative = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_9__*)* @handlerDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlerDraw(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store double 1.280000e+02, double* %7, align 8
  store double 1.280000e+02, double* %8, align 8
  store double 1.000000e+02, double* %9, align 8
  %16 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @uiDrawLineCapFlat, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @startAngle, align 4
  %32 = call i8* @uiEntryText(i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i32, i32* @sweep, align 4
  %34 = call i8* @uiEntryText(i32 %33)
  store i8* %34, i8** %14, align 8
  %35 = load i32, i32* @uiPi, align 4
  %36 = sdiv i32 %35, 180
  %37 = sitofp i32 %36 to double
  store double %37, double* %15, align 8
  %38 = load i32, i32* @radians, align 4
  %39 = call i64 @uiCheckboxChecked(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  store double 1.000000e+00, double* %15, align 8
  br label %42

42:                                               ; preds = %41, %3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store double 1.000000e+01, double* %43, align 8
  %44 = load i32, i32* @uiDrawFillModeWinding, align 4
  %45 = call i32* @uiDrawNewPath(i32 %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load double, double* %7, align 8
  %48 = load double, double* %8, align 8
  %49 = call i32 @uiDrawPathNewFigure(i32* %46, double %47, double %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load double, double* %7, align 8
  %52 = load double, double* %8, align 8
  %53 = load double, double* %9, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call double @atof(i8* %54)
  %56 = load double, double* %15, align 8
  %57 = fmul double %55, %56
  %58 = load i8*, i8** %14, align 8
  %59 = call double @atof(i8* %58)
  %60 = load double, double* %15, align 8
  %61 = fmul double %59, %60
  %62 = load i32, i32* @negative, align 4
  %63 = call i64 @uiCheckboxChecked(i32 %62)
  %64 = call i32 @uiDrawPathArcTo(i32* %50, double %51, double %52, double %53, double %57, double %61, i64 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @uiDrawPathEnd(i32* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @uiDrawStroke(i32 %69, i32* %70, %struct.TYPE_8__* %10, %struct.TYPE_7__* %11)
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @uiDrawFreePath(i32* %72)
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @uiFreeText(i8* %74)
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @uiFreeText(i8* %76)
  ret void
}

declare dso_local i8* @uiEntryText(i32) #1

declare dso_local i64 @uiCheckboxChecked(i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #1

declare dso_local i32 @uiDrawPathArcTo(i32*, double, double, double, double, double, i64) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiFreeText(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
