; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page15.c_makePage15.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page15.c_makePage15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@width = common dso_local global i32* null, align 8
@height = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Fullscreen\00", align 1
@fullscreen = common dso_local global i32* null, align 8
@sizeWidth = common dso_local global i32 0, align 4
@sizeHeight = common dso_local global i32 0, align 4
@setFullscreen = common dso_local global i32 0, align 4
@onSize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Borderless\00", align 1
@borderless = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Borderless Resizes\00", align 1
@borderWindowOpen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage15(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i32* (...) @newVerticalBox()
  store i32* %7, i32** %3, align 8
  %8 = call i32* (...) @newHorizontalBox()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @uiControl(i32* %10)
  %12 = call i32 @uiBoxAppend(i32* %9, i32 %11, i32 0)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @uiNewLabel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @uiControl(i32* %14)
  %16 = call i32 @uiBoxAppend(i32* %13, i32 %15, i32 0)
  %17 = load i32, i32* @INT_MIN, align 4
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = call i32* @uiNewSpinbox(i32 %17, i32 %18)
  store i32* %19, i32** @width, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** @width, align 8
  %22 = call i32 @uiControl(i32* %21)
  %23 = call i32 @uiBoxAppend(i32* %20, i32 %22, i32 1)
  %24 = load i32, i32* @INT_MIN, align 4
  %25 = load i32, i32* @INT_MAX, align 4
  %26 = call i32* @uiNewSpinbox(i32 %24, i32 %25)
  store i32* %26, i32** @height, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** @height, align 8
  %29 = call i32 @uiControl(i32* %28)
  %30 = call i32 @uiBoxAppend(i32* %27, i32 %29, i32 1)
  %31 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** @fullscreen, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** @fullscreen, align 8
  %34 = call i32 @uiControl(i32* %33)
  %35 = call i32 @uiBoxAppend(i32* %32, i32 %34, i32 0)
  %36 = load i32*, i32** @width, align 8
  %37 = load i32, i32* @sizeWidth, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @uiSpinboxOnChanged(i32* %36, i32 %37, i32* %38)
  %40 = load i32*, i32** @height, align 8
  %41 = load i32, i32* @sizeHeight, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @uiSpinboxOnChanged(i32* %40, i32 %41, i32* %42)
  %44 = load i32*, i32** @fullscreen, align 8
  %45 = load i32, i32* @setFullscreen, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @uiCheckboxOnToggled(i32* %44, i32 %45, i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @onSize, align 4
  %50 = call i32 @uiWindowOnContentSizeChanged(i32* %48, i32 %49, i32* null)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @updatesize(i32* %51)
  %53 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @borderless, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @uiCheckboxOnToggled(i32* %54, i32 %55, i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @uiControl(i32* %59)
  %61 = call i32 @uiBoxAppend(i32* %58, i32 %60, i32 0)
  %62 = call i32* @uiNewButton(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @borderWindowOpen, align 4
  %65 = call i32 @uiButtonOnClicked(i32* %63, i32 %64, i32* null)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @uiControl(i32* %67)
  %69 = call i32 @uiBoxAppend(i32* %66, i32 %68, i32 0)
  %70 = call i32* (...) @newHorizontalBox()
  store i32* %70, i32** %4, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @uiControl(i32* %72)
  %74 = call i32 @uiBoxAppend(i32* %71, i32 %73, i32 1)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32* (...) @uiNewVerticalSeparator()
  %77 = call i32 @uiControl(i32* %76)
  %78 = call i32 @uiBoxAppend(i32* %75, i32 %77, i32 0)
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewLabel(i8*) #1

declare dso_local i32* @uiNewSpinbox(i32, i32) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32 @uiSpinboxOnChanged(i32*, i32, i32*) #1

declare dso_local i32 @uiCheckboxOnToggled(i32*, i32, i32*) #1

declare dso_local i32 @uiWindowOnContentSizeChanged(i32*, i32, i32*) #1

declare dso_local i32 @updatesize(i32*) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32* @uiNewVerticalSeparator(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
