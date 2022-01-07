; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DSolidBrush.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DSolidBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i32, i32, i32, i64, i64, i32* }

@d2dBlack = common dso_local global i32 0, align 4
@d2dYellowGreen = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawD2DSolidBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DSolidBrush(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @d2dBlack, align 4
  %11 = call i32 @d2dSolidBrush(i32* %4, i32 %10, double 1.000000e+00)
  %12 = load i32, i32* @d2dYellowGreen, align 4
  %13 = call i32 @d2dSolidBrush(i32* %5, i32 %12, double 1.000000e+00)
  %14 = load i32, i32* @uiDrawFillModeWinding, align 4
  %15 = call i32* @uiDrawNewPath(i32 %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @uiDrawPathAddRectangle(i32* %16, i32 25, i32 25, i32 150, i32 150)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @uiDrawPathEnd(i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @uiDrawFill(i32 %22, i32* %23, i32* %5)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store double 1.000000e+00, double* %25, align 8
  %26 = load i32, i32* @uiDrawLineCapFlat, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @uiDrawStroke(i32 %34, i32* %35, i32* %4, %struct.TYPE_5__* %6)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @uiDrawFreePath(i32* %37)
  ret void
}

declare dso_local i32 @d2dSolidBrush(i32*, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

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
