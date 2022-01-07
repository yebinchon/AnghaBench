; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page13.c_makePage13.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page13.c_makePage13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Item 1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Item 2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Item 3\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Item A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Item B\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@buttonClicked = common dso_local global i32 0, align 4
@uiNewHorizontalBox = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@uiNewVerticalBox = common dso_local global i32* null, align 8
@entryChanged = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Password Entry\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Search Box\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"MLE\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Toggle Indeterminate\00", align 1
@setIndeterminate = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"Show/Hide\00", align 1
@showHide = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"Delete First\00", align 1
@deleteFirst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage13() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i32* (...) @newVerticalBox()
  store i32* %7, i32** %1, align 8
  %8 = call i32* (...) @uiNewRadioButtons()
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @uiRadioButtonsAppend(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @uiRadioButtonsAppend(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @uiRadioButtonsAppend(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @uiControl(i32* %16)
  %18 = call i32 @uiBoxAppend(i32* %15, i32 %17, i32 0)
  %19 = call i32* (...) @uiNewRadioButtons()
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @uiRadioButtonsAppend(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @uiRadioButtonsAppend(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32*, i32** %1, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @uiControl(i32* %25)
  %27 = call i32 @uiBoxAppend(i32* %24, i32 %26, i32 0)
  %28 = call i32* @uiNewButton(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @buttonClicked, align 4
  %31 = load i32*, i32** @uiNewHorizontalBox, align 8
  %32 = call i32 @uiButtonOnClicked(i32* %29, i32 %30, i32* %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @uiControl(i32* %34)
  %36 = call i32 @uiBoxAppend(i32* %33, i32 %35, i32 0)
  %37 = call i32* @uiNewButton(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32* %37, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @buttonClicked, align 4
  %40 = load i32*, i32** @uiNewVerticalBox, align 8
  %41 = call i32 @uiButtonOnClicked(i32* %38, i32 %39, i32* %40)
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @uiControl(i32* %43)
  %45 = call i32 @uiBoxAppend(i32* %42, i32 %44, i32 0)
  %46 = call i32* (...) @newForm()
  store i32* %46, i32** %4, align 8
  %47 = call i32* (...) @uiNewPasswordEntry()
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @entryChanged, align 4
  %50 = call i32 @uiEntryOnChanged(i32* %48, i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @uiControl(i32* %52)
  %54 = call i32 @uiFormAppend(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %53, i32 0)
  %55 = call i32* (...) @uiNewSearchEntry()
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @entryChanged, align 4
  %58 = call i32 @uiEntryOnChanged(i32* %56, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @uiControl(i32* %60)
  %62 = call i32 @uiFormAppend(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32 0)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32* (...) @uiNewMultilineEntry()
  %65 = call i32 @uiControl(i32* %64)
  %66 = call i32 @uiFormAppend(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %65, i32 1)
  %67 = call i32* (...) @uiNewProgressBar()
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @uiProgressBarSetValue(i32* %68, i32 50)
  %70 = load i32*, i32** %1, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @uiControl(i32* %71)
  %73 = call i32 @uiBoxAppend(i32* %70, i32 %72, i32 0)
  %74 = call i32* @uiNewButton(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32* %74, i32** %3, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @setIndeterminate, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @uiButtonOnClicked(i32* %75, i32 %76, i32* %77)
  %79 = load i32*, i32** %1, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @uiControl(i32* %80)
  %82 = call i32 @uiBoxAppend(i32* %79, i32 %81, i32 0)
  %83 = call i32* @uiNewButton(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store i32* %83, i32** %3, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @showHide, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @uiButtonOnClicked(i32* %84, i32 %85, i32* %86)
  %88 = load i32*, i32** %1, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @uiControl(i32* %89)
  %91 = call i32 @uiBoxAppend(i32* %88, i32 %90, i32 0)
  %92 = call i32* @uiNewButton(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32* %92, i32** %3, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @deleteFirst, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @uiButtonOnClicked(i32* %93, i32 %94, i32* %95)
  %97 = load i32*, i32** %1, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @uiControl(i32* %98)
  %100 = call i32 @uiBoxAppend(i32* %97, i32 %99, i32 0)
  %101 = load i32*, i32** %1, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @uiControl(i32* %102)
  %104 = call i32 @uiBoxAppend(i32* %101, i32 %103, i32 1)
  %105 = load i32*, i32** %1, align 8
  ret i32* %105
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @uiNewRadioButtons(...) #1

declare dso_local i32 @uiRadioButtonsAppend(i32*, i8*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32* @newForm(...) #1

declare dso_local i32* @uiNewPasswordEntry(...) #1

declare dso_local i32 @uiEntryOnChanged(i32*, i32, i8*) #1

declare dso_local i32 @uiFormAppend(i32*, i8*, i32, i32) #1

declare dso_local i32* @uiNewSearchEntry(...) #1

declare dso_local i32* @uiNewMultilineEntry(...) #1

declare dso_local i32* @uiNewProgressBar(...) #1

declare dso_local i32 @uiProgressBarSetValue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
