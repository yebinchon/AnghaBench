; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawQ2DCreateWindowGC.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawQ2DCreateWindowGC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @drawQ2DCreateWindowGC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawQ2DCreateWindowGC(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @crsourcergba(i32* %4, i32 1, i32 0, i32 0, double 1.000000e+00)
  %6 = load i32, i32* @uiDrawFillModeWinding, align 4
  %7 = call i32* @uiDrawNewPath(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = call i32 @cgaddrect(i32* %8, %struct.TYPE_4__* %9, i32 0, i32 0, i32 200, i32 100)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @uiDrawPathEnd(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @uiDrawFill(i32 %15, i32* %16, i32* %4)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @uiDrawFreePath(i32* %18)
  %20 = call i32 @crsourcergba(i32* %4, i32 0, i32 0, i32 1, double 5.000000e-01)
  %21 = load i32, i32* @uiDrawFillModeWinding, align 4
  %22 = call i32* @uiDrawNewPath(i32 %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = call i32 @cgaddrect(i32* %23, %struct.TYPE_4__* %24, i32 0, i32 0, i32 100, i32 200)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @uiDrawPathEnd(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @uiDrawFill(i32 %30, i32* %31, i32* %4)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @uiDrawFreePath(i32* %33)
  ret void
}

declare dso_local i32 @crsourcergba(i32*, i32, i32, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @cgaddrect(i32*, %struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
