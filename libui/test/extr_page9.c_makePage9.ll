; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page9.c_makePage9.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page9.c_makePage9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@textString = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Enter text here\00", align 1
@textFont = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@textSize = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@textWeight = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Thin\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Ultra Light\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Light\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Book\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Semi Bold\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Ultra Bold\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Heavy\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Ultra Heavy\00", align 1
@uiDrawTextWeightNormal = common dso_local global i32 0, align 4
@textItalic = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@uiDrawTextItalicNormal = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"Small Caps\00", align 1
@textSmallCaps = common dso_local global i32* null, align 8
@textStretch = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"Ultra Condensed\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Extra Condensed\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Condensed\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Semi Condensed\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Semi Expanded\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Extra Expanded\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Ultra Expanded\00", align 1
@uiDrawTextStretchNormal = common dso_local global i32 0, align 4
@textWidth = common dso_local global i32* null, align 8
@.str.25 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Apply\00", align 1
@textApply = common dso_local global i32* null, align 8
@onTextApply = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"Add Leading\00", align 1
@addLeading = common dso_local global i32* null, align 8
@handlerDraw = common dso_local global i32 0, align 4
@textAreaHandler = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@handlerMouseEvent = common dso_local global i32 0, align 4
@handlerMouseCrossed = common dso_local global i32 0, align 4
@handlerDragBroken = common dso_local global i32 0, align 4
@handlerKeyEvent = common dso_local global i32 0, align 4
@textArea = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage9() #0 {
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
  %18 = call i32* (...) @uiNewEntry()
  store i32* %18, i32** @textFont, align 8
  %19 = load i32*, i32** @textFont, align 8
  %20 = call i32 @uiEntrySetText(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** @textFont, align 8
  %23 = call i32 @uiControl(i32* %22)
  %24 = call i32 @uiBoxAppend(i32* %21, i32 %23, i32 1)
  %25 = call i32* (...) @uiNewEntry()
  store i32* %25, i32** @textSize, align 8
  %26 = load i32*, i32** @textSize, align 8
  %27 = call i32 @uiEntrySetText(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** @textSize, align 8
  %30 = call i32 @uiControl(i32* %29)
  %31 = call i32 @uiBoxAppend(i32* %28, i32 %30, i32 1)
  %32 = call i32* (...) @newHorizontalBox()
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @uiControl(i32* %34)
  %36 = call i32 @uiBoxAppend(i32* %33, i32 %35, i32 0)
  %37 = call i32* (...) @uiNewCombobox()
  store i32* %37, i32** @textWeight, align 8
  %38 = load i32*, i32** @textWeight, align 8
  %39 = call i32 @uiComboboxAppend(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** @textWeight, align 8
  %41 = call i32 @uiComboboxAppend(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32*, i32** @textWeight, align 8
  %43 = call i32 @uiComboboxAppend(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32*, i32** @textWeight, align 8
  %45 = call i32 @uiComboboxAppend(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32*, i32** @textWeight, align 8
  %47 = call i32 @uiComboboxAppend(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %48 = load i32*, i32** @textWeight, align 8
  %49 = call i32 @uiComboboxAppend(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %50 = load i32*, i32** @textWeight, align 8
  %51 = call i32 @uiComboboxAppend(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %52 = load i32*, i32** @textWeight, align 8
  %53 = call i32 @uiComboboxAppend(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %54 = load i32*, i32** @textWeight, align 8
  %55 = call i32 @uiComboboxAppend(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %56 = load i32*, i32** @textWeight, align 8
  %57 = call i32 @uiComboboxAppend(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %58 = load i32*, i32** @textWeight, align 8
  %59 = call i32 @uiComboboxAppend(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %60 = load i32*, i32** @textWeight, align 8
  %61 = load i32, i32* @uiDrawTextWeightNormal, align 4
  %62 = call i32 @uiComboboxSetSelected(i32* %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** @textWeight, align 8
  %65 = call i32 @uiControl(i32* %64)
  %66 = call i32 @uiBoxAppend(i32* %63, i32 %65, i32 1)
  %67 = call i32* (...) @uiNewCombobox()
  store i32* %67, i32** @textItalic, align 8
  %68 = load i32*, i32** @textItalic, align 8
  %69 = call i32 @uiComboboxAppend(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32*, i32** @textItalic, align 8
  %71 = call i32 @uiComboboxAppend(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %72 = load i32*, i32** @textItalic, align 8
  %73 = call i32 @uiComboboxAppend(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %74 = load i32*, i32** @textItalic, align 8
  %75 = load i32, i32* @uiDrawTextItalicNormal, align 4
  %76 = call i32 @uiComboboxSetSelected(i32* %74, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** @textItalic, align 8
  %79 = call i32 @uiControl(i32* %78)
  %80 = call i32 @uiBoxAppend(i32* %77, i32 %79, i32 1)
  %81 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32* %81, i32** @textSmallCaps, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = load i32*, i32** @textSmallCaps, align 8
  %84 = call i32 @uiControl(i32* %83)
  %85 = call i32 @uiBoxAppend(i32* %82, i32 %84, i32 1)
  %86 = call i32* (...) @newHorizontalBox()
  store i32* %86, i32** %3, align 8
  %87 = load i32*, i32** %2, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @uiControl(i32* %88)
  %90 = call i32 @uiBoxAppend(i32* %87, i32 %89, i32 0)
  %91 = call i32* (...) @uiNewCombobox()
  store i32* %91, i32** @textStretch, align 8
  %92 = load i32*, i32** @textStretch, align 8
  %93 = call i32 @uiComboboxAppend(i32* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %94 = load i32*, i32** @textStretch, align 8
  %95 = call i32 @uiComboboxAppend(i32* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %96 = load i32*, i32** @textStretch, align 8
  %97 = call i32 @uiComboboxAppend(i32* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %98 = load i32*, i32** @textStretch, align 8
  %99 = call i32 @uiComboboxAppend(i32* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %100 = load i32*, i32** @textStretch, align 8
  %101 = call i32 @uiComboboxAppend(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i32*, i32** @textStretch, align 8
  %103 = call i32 @uiComboboxAppend(i32* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %104 = load i32*, i32** @textStretch, align 8
  %105 = call i32 @uiComboboxAppend(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %106 = load i32*, i32** @textStretch, align 8
  %107 = call i32 @uiComboboxAppend(i32* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %108 = load i32*, i32** @textStretch, align 8
  %109 = call i32 @uiComboboxAppend(i32* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %110 = load i32*, i32** @textStretch, align 8
  %111 = load i32, i32* @uiDrawTextStretchNormal, align 4
  %112 = call i32 @uiComboboxSetSelected(i32* %110, i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32*, i32** @textStretch, align 8
  %115 = call i32 @uiControl(i32* %114)
  %116 = call i32 @uiBoxAppend(i32* %113, i32 %115, i32 1)
  %117 = call i32* (...) @uiNewEntry()
  store i32* %117, i32** @textWidth, align 8
  %118 = load i32*, i32** @textWidth, align 8
  %119 = call i32 @uiEntrySetText(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %120 = load i32*, i32** %3, align 8
  %121 = load i32*, i32** @textWidth, align 8
  %122 = call i32 @uiControl(i32* %121)
  %123 = call i32 @uiBoxAppend(i32* %120, i32 %122, i32 1)
  %124 = call i32* (...) @newHorizontalBox()
  store i32* %124, i32** %3, align 8
  %125 = load i32*, i32** %2, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @uiControl(i32* %126)
  %128 = call i32 @uiBoxAppend(i32* %125, i32 %127, i32 0)
  %129 = call i32* @uiNewButton(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  store i32* %129, i32** @textApply, align 8
  %130 = load i32*, i32** @textApply, align 8
  %131 = load i32, i32* @onTextApply, align 4
  %132 = call i32 @uiButtonOnClicked(i32* %130, i32 %131, i32* null)
  %133 = load i32*, i32** %3, align 8
  %134 = load i32*, i32** @textApply, align 8
  %135 = call i32 @uiControl(i32* %134)
  %136 = call i32 @uiBoxAppend(i32* %133, i32 %135, i32 1)
  %137 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  store i32* %137, i32** @addLeading, align 8
  %138 = load i32*, i32** @addLeading, align 8
  %139 = call i32 @uiCheckboxSetChecked(i32* %138, i32 1)
  %140 = load i32*, i32** %3, align 8
  %141 = load i32*, i32** @addLeading, align 8
  %142 = call i32 @uiControl(i32* %141)
  %143 = call i32 @uiBoxAppend(i32* %140, i32 %142, i32 0)
  %144 = load i32, i32* @handlerDraw, align 4
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 4), align 4
  %145 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 3), align 4
  %146 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 2), align 4
  %147 = load i32, i32* @handlerDragBroken, align 4
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 1), align 4
  %148 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @textAreaHandler, i32 0, i32 0), align 4
  %149 = call i32* @uiNewArea(%struct.TYPE_3__* @textAreaHandler)
  store i32* %149, i32** @textArea, align 8
  %150 = load i32*, i32** %2, align 8
  %151 = load i32*, i32** @textArea, align 8
  %152 = call i32 @uiControl(i32* %151)
  %153 = call i32 @uiBoxAppend(i32* %150, i32 %152, i32 1)
  %154 = load i32*, i32** %1, align 8
  ret i32* %154
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntrySetText(i32*, i8*) #1

declare dso_local i32* @uiNewCombobox(...) #1

declare dso_local i32 @uiComboboxAppend(i32*, i8*) #1

declare dso_local i32 @uiComboboxSetSelected(i32*, i32) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32 @uiCheckboxSetChecked(i32*, i32) #1

declare dso_local i32* @uiNewArea(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
