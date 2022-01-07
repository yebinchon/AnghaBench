; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_opentype/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_opentype/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@handlerDraw = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@handlerMouseEvent = common dso_local global i32 0, align 4
@handlerMouseCrossed = common dso_local global i32 0, align 4
@handlerDragBroken = common dso_local global i32 0, align 4
@handlerKeyEvent = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error initializing ui: %s\0A\00", align 1
@shouldQuit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"libui OpenType Features Example\00", align 1
@mainwin = common dso_local global i32* null, align 8
@onClosing = common dso_local global i32 0, align 4
@fontButton = common dso_local global i32* null, align 8
@onFontChanged = common dso_local global i32 0, align 4
@uiAlignFill = common dso_local global i32 0, align 4
@uiAlignCenter = common dso_local global i32 0, align 4
@textEntry = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"afford afire aflight\00", align 1
@onTextChanged = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"NULL uiOpenTypeFeatures\00", align 1
@nullFeatures = common dso_local global i32* null, align 8
@onNULLToggled = common dso_local global i32 0, align 4
@area = common dso_local global i32* null, align 8
@attrstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @handlerDraw, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @handler, i32 0, i32 4), align 4
  %8 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @handler, i32 0, i32 3), align 4
  %9 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @handler, i32 0, i32 2), align 4
  %10 = load i32, i32* @handlerDragBroken, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @handler, i32 0, i32 1), align 4
  %11 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @handler, i32 0, i32 0), align 4
  %12 = call i32 @memset(i32* %2, i32 0, i32 4)
  %13 = call i8* @uiInit(i32* %2)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @uiFreeInitError(i8* %20)
  store i32 1, i32* %1, align 4
  br label %107

22:                                               ; preds = %0
  %23 = load i32, i32* @shouldQuit, align 4
  %24 = call i32 @uiOnShouldQuit(i32 %23, i32* null)
  %25 = call i32* @uiNewWindow(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 640, i32 480, i32 1)
  store i32* %25, i32** @mainwin, align 8
  %26 = load i32*, i32** @mainwin, align 8
  %27 = call i32 @uiWindowSetMargined(i32* %26, i32 1)
  %28 = load i32*, i32** @mainwin, align 8
  %29 = load i32, i32* @onClosing, align 4
  %30 = call i32 @uiWindowOnClosing(i32* %28, i32 %29, i32* null)
  %31 = call i32* (...) @uiNewGrid()
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @uiGridSetPadded(i32* %32, i32 1)
  %34 = load i32*, i32** @mainwin, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @uiControl(i32* %35)
  %37 = call i32 @uiWindowSetChild(i32* %34, i32 %36)
  %38 = call i32* (...) @uiNewFontButton()
  store i32* %38, i32** @fontButton, align 8
  %39 = load i32*, i32** @fontButton, align 8
  %40 = load i32, i32* @onFontChanged, align 4
  %41 = call i32 @uiFontButtonOnChanged(i32* %39, i32 %40, i32* null)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** @fontButton, align 8
  %44 = call i32 @uiControl(i32* %43)
  %45 = load i32, i32* @uiAlignFill, align 4
  %46 = load i32, i32* @uiAlignCenter, align 4
  %47 = call i32 @uiGridAppend(i32* %42, i32 %44, i32 0, i32 0, i32 1, i32 1, i32 0, i32 %45, i32 0, i32 %46)
  %48 = call i32* (...) @uiNewEntry()
  store i32* %48, i32** @textEntry, align 8
  %49 = load i32*, i32** @textEntry, align 8
  %50 = call i32 @uiEntrySetText(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32*, i32** @textEntry, align 8
  %52 = load i32, i32* @onTextChanged, align 4
  %53 = call i32 @uiEntryOnChanged(i32* %51, i32 %52, i32* null)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** @textEntry, align 8
  %56 = call i32 @uiControl(i32* %55)
  %57 = load i32, i32* @uiAlignFill, align 4
  %58 = load i32, i32* @uiAlignCenter, align 4
  %59 = call i32 @uiGridAppend(i32* %54, i32 %56, i32 1, i32 0, i32 1, i32 1, i32 1, i32 %57, i32 0, i32 %58)
  %60 = call i32* (...) @uiNewVerticalBox()
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @uiBoxSetPadded(i32* %61, i32 1)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @uiControl(i32* %64)
  %66 = load i32, i32* @uiAlignFill, align 4
  %67 = load i32, i32* @uiAlignFill, align 4
  %68 = call i32 @uiGridAppend(i32* %63, i32 %65, i32 0, i32 1, i32 1, i32 1, i32 0, i32 %66, i32 1, i32 %67)
  %69 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32* %69, i32** @nullFeatures, align 8
  %70 = load i32*, i32** @nullFeatures, align 8
  %71 = load i32, i32* @onNULLToggled, align 4
  %72 = call i32 @uiCheckboxOnToggled(i32* %70, i32 %71, i32* null)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** @nullFeatures, align 8
  %75 = call i32 @uiControl(i32* %74)
  %76 = call i32 @uiBoxAppend(i32* %73, i32 %75, i32 0)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %85, %22
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32*, i32** %5, align 8
  %82 = call i32* (...) @uiNewEntry()
  %83 = call i32 @uiControl(i32* %82)
  %84 = call i32 @uiBoxAppend(i32* %81, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %77

88:                                               ; preds = %77
  %89 = call i32* @uiNewArea(%struct.TYPE_3__* @handler)
  store i32* %89, i32** @area, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** @area, align 8
  %92 = call i32 @uiControl(i32* %91)
  %93 = load i32, i32* @uiAlignFill, align 4
  %94 = load i32, i32* @uiAlignFill, align 4
  %95 = call i32 @uiGridAppend(i32* %90, i32 %92, i32 1, i32 1, i32 1, i32 1, i32 1, i32 %93, i32 1, i32 %94)
  %96 = call i32 (...) @remakeAttrStr()
  %97 = load i32*, i32** @mainwin, align 8
  %98 = call i32 @uiControl(i32* %97)
  %99 = call i32 @uiControlShow(i32 %98)
  %100 = call i32 (...) @uiMain()
  %101 = load i32*, i32** @mainwin, align 8
  %102 = call i32 @uiControl(i32* %101)
  %103 = call i32 @uiControlDestroy(i32 %102)
  %104 = load i32, i32* @attrstr, align 4
  %105 = call i32 @uiFreeAttributedString(i32 %104)
  %106 = call i32 (...) @uiUninit()
  store i32 0, i32* %1, align 4
  br label %107

107:                                              ; preds = %88, %16
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @uiInit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uiFreeInitError(i8*) #1

declare dso_local i32 @uiOnShouldQuit(i32, i32*) #1

declare dso_local i32* @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowSetMargined(i32*, i32) #1

declare dso_local i32 @uiWindowOnClosing(i32*, i32, i32*) #1

declare dso_local i32* @uiNewGrid(...) #1

declare dso_local i32 @uiGridSetPadded(i32*, i32) #1

declare dso_local i32 @uiWindowSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewFontButton(...) #1

declare dso_local i32 @uiFontButtonOnChanged(i32*, i32, i32*) #1

declare dso_local i32 @uiGridAppend(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntrySetText(i32*, i8*) #1

declare dso_local i32 @uiEntryOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewVerticalBox(...) #1

declare dso_local i32 @uiBoxSetPadded(i32*, i32) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32 @uiCheckboxOnToggled(i32*, i32, i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32* @uiNewArea(%struct.TYPE_3__*) #1

declare dso_local i32 @remakeAttrStr(...) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

declare dso_local i32 @uiControlDestroy(i32) #1

declare dso_local i32 @uiFreeAttributedString(i32) #1

declare dso_local i32 @uiUninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
