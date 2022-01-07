; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page10.c_makePage10.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page10.c_makePage10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@textString = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Enter text here\00", align 1
@textFontButton = common dso_local global i32* null, align 8
@onFontChanged = common dso_local global i32 0, align 4
@textColorButton = common dso_local global i32* null, align 8
@onColorChanged = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Apply\00", align 1
@textApply = common dso_local global i32* null, align 8
@textWidth = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"No Z Color\00", align 1
@noZ = common dso_local global i32* null, align 8
@onNoZ = common dso_local global i32 0, align 4
@handlerDraw = common dso_local global i32 0, align 4
@textAreaHandler = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@handlerMouseEvent = common dso_local global i32 0, align 4
@handlerMouseCrossed = common dso_local global i32 0, align 4
@handlerDragBroken = common dso_local global i32 0, align 4
@handlerKeyEvent = common dso_local global i32 0, align 4
@textArea = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage10() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @newVerticalBox()
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  store i32* %5, i32** %2, align 8
  %6 = call i32* (...) @newHorizontalBox()
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @uiControl(i32* %8)
  %10 = call i32 @uiBoxAppend(i32* %7, i32 %9, i32 0)
  %11 = call i32* (...) @uiNewEntry()
  store i32* %11, i32** @textString, align 8
  %12 = load i32*, i32** @textString, align 8
  %13 = call i32 @uiEntrySetText(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** @textString, align 8
  %16 = call i32 @uiControl(i32* %15)
  %17 = call i32 @uiBoxAppend(i32* %14, i32 %16, i32 1)
  %18 = call i32* (...) @uiNewFontButton()
  store i32* %18, i32** @textFontButton, align 8
  %19 = load i32*, i32** @textFontButton, align 8
  %20 = load i32, i32* @onFontChanged, align 4
  %21 = call i32 @uiFontButtonOnChanged(i32* %19, i32 %20, i32* null)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @textFontButton, align 8
  %24 = call i32 @uiControl(i32* %23)
  %25 = call i32 @uiBoxAppend(i32* %22, i32 %24, i32 1)
  %26 = call i32* (...) @uiNewColorButton()
  store i32* %26, i32** @textColorButton, align 8
  %27 = load i32*, i32** @textColorButton, align 8
  %28 = load i32, i32* @onColorChanged, align 4
  %29 = call i32 @uiColorButtonOnChanged(i32* %27, i32 %28, i32* null)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** @textColorButton, align 8
  %32 = call i32 @uiControl(i32* %31)
  %33 = call i32 @uiBoxAppend(i32* %30, i32 %32, i32 1)
  %34 = call i32* (...) @newHorizontalBox()
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @uiControl(i32* %36)
  %38 = call i32 @uiBoxAppend(i32* %35, i32 %37, i32 0)
  %39 = call i32* @uiNewButton(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** @textApply, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** @textApply, align 8
  %42 = call i32 @uiControl(i32* %41)
  %43 = call i32 @uiBoxAppend(i32* %40, i32 %42, i32 1)
  %44 = call i32* (...) @uiNewEntry()
  store i32* %44, i32** @textWidth, align 8
  %45 = load i32*, i32** @textWidth, align 8
  %46 = call i32 @uiEntrySetText(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** @textWidth, align 8
  %49 = call i32 @uiControl(i32* %48)
  %50 = call i32 @uiBoxAppend(i32* %47, i32 %49, i32 1)
  %51 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** @noZ, align 8
  %52 = load i32*, i32** @noZ, align 8
  %53 = load i32, i32* @onNoZ, align 4
  %54 = call i32 @uiCheckboxOnToggled(i32* %52, i32 %53, i32* null)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** @noZ, align 8
  %57 = call i32 @uiControl(i32* %56)
  %58 = call i32 @uiBoxAppend(i32* %55, i32 %57, i32 0)
  %59 = load i32, i32* @handlerDraw, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 4), align 4
  %60 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 3), align 4
  %61 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 2), align 4
  %62 = load i32, i32* @handlerDragBroken, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 1), align 4
  %63 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 0), align 4
  %64 = call i32* @uiNewArea(%struct.TYPE_3__* @textAreaHandler)
  store i32* %64, i32** @textArea, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = load i32*, i32** @textArea, align 8
  %67 = call i32 @uiControl(i32* %66)
  %68 = call i32 @uiBoxAppend(i32* %65, i32 %67, i32 1)
  %69 = call i32* (...) @newHorizontalBox()
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @uiControl(i32* %71)
  %73 = call i32 @uiBoxAppend(i32* %70, i32 %72, i32 0)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32* (...) @uiNewFontButton()
  %76 = call i32 @uiControl(i32* %75)
  %77 = call i32 @uiBoxAppend(i32* %74, i32 %76, i32 1)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32* (...) @uiNewColorButton()
  %80 = call i32 @uiControl(i32* %79)
  %81 = call i32 @uiBoxAppend(i32* %78, i32 %80, i32 1)
  %82 = load i32*, i32** %1, align 8
  ret i32* %82
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntrySetText(i32*, i8*) #1

declare dso_local i32* @uiNewFontButton(...) #1

declare dso_local i32 @uiFontButtonOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewColorButton(...) #1

declare dso_local i32 @uiColorButtonOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32 @uiCheckboxOnToggled(i32*, i32, i32*) #1

declare dso_local i32* @uiNewArea(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
