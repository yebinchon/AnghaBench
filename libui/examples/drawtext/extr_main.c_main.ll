; ModuleID = '/home/carl/AnghaBench/libui/examples/drawtext/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/examples/drawtext/extr_main.c_main.c"
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
@.str.1 = private unnamed_addr constant [27 x i8] c"libui Text-Drawing Example\00", align 1
@mainwin = common dso_local global i32* null, align 8
@onClosing = common dso_local global i32 0, align 4
@fontButton = common dso_local global i32* null, align 8
@onFontChanged = common dso_local global i32 0, align 4
@alignment = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@onComboboxSelected = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Alignment\00", align 1
@area = common dso_local global i32* null, align 8
@attrstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
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
  br label %89

22:                                               ; preds = %0
  %23 = load i32, i32* @shouldQuit, align 4
  %24 = call i32 @uiOnShouldQuit(i32 %23, i32* null)
  %25 = call i32 (...) @makeAttributedString()
  %26 = call i32* @uiNewWindow(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 640, i32 480, i32 1)
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
  %46 = call i32* (...) @uiNewFontButton()
  store i32* %46, i32** @fontButton, align 8
  %47 = load i32*, i32** @fontButton, align 8
  %48 = load i32, i32* @onFontChanged, align 4
  %49 = call i32 @uiFontButtonOnChanged(i32* %47, i32 %48, i32* null)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** @fontButton, align 8
  %52 = call i32 @uiControl(i32* %51)
  %53 = call i32 @uiBoxAppend(i32* %50, i32 %52, i32 0)
  %54 = call i32* (...) @uiNewForm()
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @uiFormSetPadded(i32* %55, i32 1)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @uiControl(i32* %58)
  %60 = call i32 @uiBoxAppend(i32* %57, i32 %59, i32 0)
  %61 = call i32* (...) @uiNewCombobox()
  store i32* %61, i32** @alignment, align 8
  %62 = load i32*, i32** @alignment, align 8
  %63 = call i32 @uiComboboxAppend(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** @alignment, align 8
  %65 = call i32 @uiComboboxAppend(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32*, i32** @alignment, align 8
  %67 = call i32 @uiComboboxAppend(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32*, i32** @alignment, align 8
  %69 = call i32 @uiComboboxSetSelected(i32* %68, i32 0)
  %70 = load i32*, i32** @alignment, align 8
  %71 = load i32, i32* @onComboboxSelected, align 4
  %72 = call i32 @uiComboboxOnSelected(i32* %70, i32 %71, i32* null)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** @alignment, align 8
  %75 = call i32 @uiControl(i32* %74)
  %76 = call i32 @uiFormAppend(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 0)
  %77 = call i32* @uiNewArea(%struct.TYPE_3__* @handler)
  store i32* %77, i32** @area, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** @area, align 8
  %80 = call i32 @uiControl(i32* %79)
  %81 = call i32 @uiBoxAppend(i32* %78, i32 %80, i32 1)
  %82 = load i32*, i32** @mainwin, align 8
  %83 = call i32 @uiControl(i32* %82)
  %84 = call i32 @uiControlShow(i32 %83)
  %85 = call i32 (...) @uiMain()
  %86 = load i32, i32* @attrstr, align 4
  %87 = call i32 @uiFreeAttributedString(i32 %86)
  %88 = call i32 (...) @uiUninit()
  store i32 0, i32* %1, align 4
  br label %89

89:                                               ; preds = %22, %16
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @uiInit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uiFreeInitError(i8*) #1

declare dso_local i32 @uiOnShouldQuit(i32, i32*) #1

declare dso_local i32 @makeAttributedString(...) #1

declare dso_local i32* @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowSetMargined(i32*, i32) #1

declare dso_local i32 @uiWindowOnClosing(i32*, i32, i32*) #1

declare dso_local i32* @uiNewHorizontalBox(...) #1

declare dso_local i32 @uiBoxSetPadded(i32*, i32) #1

declare dso_local i32 @uiWindowSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewVerticalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32* @uiNewFontButton(...) #1

declare dso_local i32 @uiFontButtonOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewForm(...) #1

declare dso_local i32 @uiFormSetPadded(i32*, i32) #1

declare dso_local i32* @uiNewCombobox(...) #1

declare dso_local i32 @uiComboboxAppend(i32*, i8*) #1

declare dso_local i32 @uiComboboxSetSelected(i32*, i32) #1

declare dso_local i32 @uiComboboxOnSelected(i32*, i32, i32*) #1

declare dso_local i32 @uiFormAppend(i32*, i8*, i32, i32) #1

declare dso_local i32* @uiNewArea(%struct.TYPE_3__*) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

declare dso_local i32 @uiFreeAttributedString(i32) #1

declare dso_local i32 @uiUninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
