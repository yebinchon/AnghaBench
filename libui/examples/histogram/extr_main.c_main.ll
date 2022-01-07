; ModuleID = '/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@handlerDraw = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@handlerMouseEvent = common dso_local global i32 0, align 4
@handlerMouseCrossed = common dso_local global i32 0, align 4
@handlerDragBroken = common dso_local global i32 0, align 4
@handlerKeyEvent = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error initializing ui: %s\0A\00", align 1
@shouldQuit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"libui Histogram Example\00", align 1
@mainwin = common dso_local global i32* null, align 8
@onClosing = common dso_local global i32 0, align 4
@datapoints = common dso_local global i32** null, align 8
@onDatapointChanged = common dso_local global i32 0, align 4
@colorButton = common dso_local global i32* null, align 8
@colorDodgerBlue = common dso_local global i32 0, align 4
@onColorChanged = common dso_local global i32 0, align 4
@histogram = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @handlerDraw, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @handler, i32 0, i32 4), align 4
  %9 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @handler, i32 0, i32 3), align 4
  %10 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @handler, i32 0, i32 2), align 4
  %11 = load i32, i32* @handlerDragBroken, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @handler, i32 0, i32 1), align 4
  %12 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @handler, i32 0, i32 0), align 4
  %13 = call i32 @memset(i32* %2, i32 0, i32 4)
  %14 = call i8* @uiInit(i32* %2)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @uiFreeInitError(i8* %21)
  store i32 1, i32* %1, align 4
  br label %114

23:                                               ; preds = %0
  %24 = load i32, i32* @shouldQuit, align 4
  %25 = call i32 @uiOnShouldQuit(i32 %24, i32* null)
  %26 = call i32* @uiNewWindow(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 640, i32 480, i32 1)
  store i32* %26, i32** @mainwin, align 8
  %27 = load i32*, i32** @mainwin, align 8
  %28 = call i32 @uiWindowSetMargined(i32* %27, i32 1)
  %29 = load i32*, i32** @mainwin, align 8
  %30 = load i32, i32* @onClosing, align 4
  %31 = call i32 @uiWindowOnClosing(i32* %29, i32 %30, i32* null)
  %32 = call i32* (...) @uiNewHorizontalBox()
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @uiBoxSetPadded(i32* %33, i32 1)
  %35 = load i32*, i32** @mainwin, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @uiControl(i32* %36)
  %38 = call i32 @uiWindowSetChild(i32* %35, i32 %37)
  %39 = call i32* (...) @uiNewVerticalBox()
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @uiBoxSetPadded(i32* %40, i32 1)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @uiControl(i32* %43)
  %45 = call i32 @uiBoxAppend(i32* %42, i32 %44, i32 0)
  %46 = call i32 @time(i32* null)
  %47 = call i32 @srand(i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %80, %23
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = call i32* @uiNewSpinbox(i32 0, i32 100)
  %53 = load i32**, i32*** @datapoints, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* %52, i32** %56, align 8
  %57 = load i32**, i32*** @datapoints, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 (...) @rand()
  %63 = srem i32 %62, 101
  %64 = call i32 @uiSpinboxSetValue(i32* %61, i32 %63)
  %65 = load i32**, i32*** @datapoints, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @onDatapointChanged, align 4
  %71 = call i32 @uiSpinboxOnChanged(i32* %69, i32 %70, i32* null)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32**, i32*** @datapoints, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @uiControl(i32* %77)
  %79 = call i32 @uiBoxAppend(i32* %72, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %48

83:                                               ; preds = %48
  %84 = call i32* (...) @uiNewColorButton()
  store i32* %84, i32** @colorButton, align 8
  %85 = load i32, i32* @colorDodgerBlue, align 4
  %86 = call i32 @setSolidBrush(%struct.TYPE_5__* %7, i32 %85, double 1.000000e+00)
  %87 = load i32*, i32** @colorButton, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @uiColorButtonSetColor(i32* %87, i32 %89, i32 %91, i32 %93, i32 %95)
  %97 = load i32*, i32** @colorButton, align 8
  %98 = load i32, i32* @onColorChanged, align 4
  %99 = call i32 @uiColorButtonOnChanged(i32* %97, i32 %98, i32* null)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** @colorButton, align 8
  %102 = call i32 @uiControl(i32* %101)
  %103 = call i32 @uiBoxAppend(i32* %100, i32 %102, i32 0)
  %104 = call i32* @uiNewArea(%struct.TYPE_6__* @handler)
  store i32* %104, i32** @histogram, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = load i32*, i32** @histogram, align 8
  %107 = call i32 @uiControl(i32* %106)
  %108 = call i32 @uiBoxAppend(i32* %105, i32 %107, i32 1)
  %109 = load i32*, i32** @mainwin, align 8
  %110 = call i32 @uiControl(i32* %109)
  %111 = call i32 @uiControlShow(i32 %110)
  %112 = call i32 (...) @uiMain()
  %113 = call i32 (...) @uiUninit()
  store i32 0, i32* %1, align 4
  br label %114

114:                                              ; preds = %83, %17
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @uiInit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uiFreeInitError(i8*) #1

declare dso_local i32 @uiOnShouldQuit(i32, i32*) #1

declare dso_local i32* @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowSetMargined(i32*, i32) #1

declare dso_local i32 @uiWindowOnClosing(i32*, i32, i32*) #1

declare dso_local i32* @uiNewHorizontalBox(...) #1

declare dso_local i32 @uiBoxSetPadded(i32*, i32) #1

declare dso_local i32 @uiWindowSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewVerticalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @uiNewSpinbox(i32, i32) #1

declare dso_local i32 @uiSpinboxSetValue(i32*, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @uiSpinboxOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewColorButton(...) #1

declare dso_local i32 @setSolidBrush(%struct.TYPE_5__*, i32, double) #1

declare dso_local i32 @uiColorButtonSetColor(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uiColorButtonOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewArea(%struct.TYPE_6__*) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

declare dso_local i32 @uiUninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
