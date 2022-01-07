; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_emptystr_hittest.c_mkEmptyStringExample.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_emptystr_hittest.c_mkEmptyStringExample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.example = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@panel = common dso_local global i32 0, align 4
@vbox = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Caret information is shown here\00", align 1
@caretLabel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Show Line Bounds (for debugging metrics)\00", align 1
@showLineBounds = common dso_local global i32 0, align 4
@fontButton = common dso_local global i32 0, align 4
@changeFont = common dso_local global i32 0, align 4
@textAlign = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@changeTextAlign = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Empty String\00", align 1
@hitTestExample = common dso_local global %struct.example zeroinitializer, align 8
@draw = common dso_local global i32 0, align 4
@mouse = common dso_local global i32 0, align 4
@key = common dso_local global i32 0, align 4
@text = common dso_local global i32 0, align 4
@attrstr = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@defaultFont = common dso_local global i32 0, align 4
@uiDrawTextAlignLeft = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.example* @mkEmptyStringExample() #0 {
  %1 = call i32 (...) @uiNewHorizontalBox()
  store i32 %1, i32* @panel, align 4
  %2 = call i32 (...) @uiNewVerticalBox()
  store i32 %2, i32* @vbox, align 4
  %3 = load i32, i32* @panel, align 4
  %4 = load i32, i32* @vbox, align 4
  %5 = call i32 @uiControl(i32 %4)
  %6 = call i32 @uiBoxAppend(i32 %3, i32 %5, i32 1)
  %7 = call i32 @uiNewLabel(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @caretLabel, align 4
  %8 = load i32, i32* @vbox, align 4
  %9 = load i32, i32* @caretLabel, align 4
  %10 = call i32 @uiControl(i32 %9)
  %11 = call i32 @uiBoxAppend(i32 %8, i32 %10, i32 0)
  %12 = load i32, i32* @vbox, align 4
  %13 = call i32 @newCheckbox(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* @showLineBounds, align 4
  %14 = call i32 (...) @uiNewVerticalBox()
  store i32 %14, i32* @vbox, align 4
  %15 = load i32, i32* @panel, align 4
  %16 = load i32, i32* @vbox, align 4
  %17 = call i32 @uiControl(i32 %16)
  %18 = call i32 @uiBoxAppend(i32 %15, i32 %17, i32 0)
  %19 = call i32 (...) @uiNewFontButton()
  store i32 %19, i32* @fontButton, align 4
  %20 = load i32, i32* @fontButton, align 4
  %21 = load i32, i32* @changeFont, align 4
  %22 = call i32 @uiFontButtonOnChanged(i32 %20, i32 %21, i32* null)
  %23 = load i32, i32* @vbox, align 4
  %24 = load i32, i32* @fontButton, align 4
  %25 = call i32 @uiControl(i32 %24)
  %26 = call i32 @uiBoxAppend(i32 %23, i32 %25, i32 0)
  %27 = call i32 (...) @uiNewCombobox()
  store i32 %27, i32* @textAlign, align 4
  %28 = load i32, i32* @textAlign, align 4
  %29 = call i32 @uiComboboxAppend(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @textAlign, align 4
  %31 = call i32 @uiComboboxAppend(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @textAlign, align 4
  %33 = call i32 @uiComboboxAppend(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* @textAlign, align 4
  %35 = load i32, i32* @changeTextAlign, align 4
  %36 = call i32 @uiComboboxOnSelected(i32 %34, i32 %35, i32* null)
  %37 = load i32, i32* @vbox, align 4
  %38 = load i32, i32* @textAlign, align 4
  %39 = call i32 @uiControl(i32 %38)
  %40 = call i32 @uiBoxAppend(i32 %37, i32 %39, i32 0)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.example, %struct.example* @hitTestExample, i32 0, i32 0), align 8
  %41 = load i32, i32* @panel, align 4
  %42 = call i32 @uiControl(i32 %41)
  store i32 %42, i32* getelementptr inbounds (%struct.example, %struct.example* @hitTestExample, i32 0, i32 4), align 4
  %43 = load i32, i32* @draw, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.example, %struct.example* @hitTestExample, i32 0, i32 3), align 8
  %44 = load i32, i32* @mouse, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.example, %struct.example* @hitTestExample, i32 0, i32 2), align 4
  %45 = load i32, i32* @key, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.example, %struct.example* @hitTestExample, i32 0, i32 1), align 8
  %46 = load i32, i32* @text, align 4
  %47 = call i32 @uiNewAttributedString(i32 %46)
  store i32 %47, i32* @attrstr, align 4
  %48 = load i32, i32* @attrstr, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 2), align 8
  store i32* @defaultFont, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 8
  %49 = load i32, i32* @uiDrawTextAlignLeft, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  ret %struct.example* @hitTestExample
}

declare dso_local i32 @uiNewHorizontalBox(...) #1

declare dso_local i32 @uiNewVerticalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32, i32, i32) #1

declare dso_local i32 @uiControl(i32) #1

declare dso_local i32 @uiNewLabel(i8*) #1

declare dso_local i32 @newCheckbox(i32, i8*) #1

declare dso_local i32 @uiNewFontButton(...) #1

declare dso_local i32 @uiFontButtonOnChanged(i32, i32, i32*) #1

declare dso_local i32 @uiNewCombobox(...) #1

declare dso_local i32 @uiComboboxAppend(i32, i8*) #1

declare dso_local i32 @uiComboboxOnSelected(i32, i32, i32*) #1

declare dso_local i32 @uiNewAttributedString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
