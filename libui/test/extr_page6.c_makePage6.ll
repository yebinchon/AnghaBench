; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page6.c_makePage6.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page6.c_makePage6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@handlerDraw = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@handlerMouseEvent = common dso_local global i32 0, align 4
@handlerMouseCrossed = common dso_local global i32 0, align 4
@handlerDragBroken = common dso_local global i32 0, align 4
@handlerKeyEvent = common dso_local global i32 0, align 4
@which = common dso_local global i32* null, align 8
@shouldntHappen = common dso_local global i32 0, align 4
@redraw = common dso_local global i32 0, align 4
@area = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Consider key events handled\00", align 1
@swallowKeys = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@enableArea = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage6() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @handlerDraw, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 4), align 4
  %5 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 3), align 4
  %6 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 2), align 4
  %7 = load i32, i32* @handlerDragBroken, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 1), align 4
  %8 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 0), align 4
  %9 = call i32* (...) @newVerticalBox()
  store i32* %9, i32** %1, align 8
  %10 = call i32* (...) @newHorizontalBox()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @uiControl(i32* %12)
  %14 = call i32 @uiBoxAppend(i32* %11, i32 %13, i32 0)
  %15 = call i32* (...) @uiNewCombobox()
  store i32* %15, i32** @which, align 8
  %16 = load i32*, i32** @which, align 8
  %17 = call i32 @populateComboboxWithTests(i32* %16)
  %18 = load i32*, i32** @which, align 8
  %19 = load i32, i32* @shouldntHappen, align 4
  %20 = call i32 @uiComboboxOnSelected(i32* %18, i32 %19, i32* null)
  %21 = load i32*, i32** @which, align 8
  %22 = call i32 @uiComboboxSetSelected(i32* %21, i32 0)
  %23 = load i32*, i32** @which, align 8
  %24 = load i32, i32* @redraw, align 4
  %25 = call i32 @uiComboboxOnSelected(i32* %23, i32 %24, i32* null)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** @which, align 8
  %28 = call i32 @uiControl(i32* %27)
  %29 = call i32 @uiBoxAppend(i32* %26, i32 %28, i32 0)
  %30 = call i32* @uiNewArea(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 0))
  store i32* %30, i32** @area, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = load i32*, i32** @area, align 8
  %33 = call i32 @uiControl(i32* %32)
  %34 = call i32 @uiBoxAppend(i32* %31, i32 %33, i32 1)
  %35 = call i32* (...) @newHorizontalBox()
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @uiControl(i32* %37)
  %39 = call i32 @uiBoxAppend(i32* %36, i32 %38, i32 0)
  %40 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** @swallowKeys, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** @swallowKeys, align 8
  %43 = call i32 @uiControl(i32* %42)
  %44 = call i32 @uiBoxAppend(i32* %41, i32 %43, i32 1)
  %45 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %45, i32** %3, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @enableArea, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @uiButtonOnClicked(i32* %46, i32 %47, i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @uiControl(i32* %51)
  %53 = call i32 @uiBoxAppend(i32* %50, i32 %52, i32 0)
  %54 = call i32* @uiNewButton(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %54, i32** %3, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @enableArea, align 4
  %57 = call i32 @uiButtonOnClicked(i32* %55, i32 %56, i32* null)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @uiControl(i32* %59)
  %61 = call i32 @uiBoxAppend(i32* %58, i32 %60, i32 0)
  %62 = load i32*, i32** %1, align 8
  ret i32* %62
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewCombobox(...) #1

declare dso_local i32 @populateComboboxWithTests(i32*) #1

declare dso_local i32 @uiComboboxOnSelected(i32*, i32, i32*) #1

declare dso_local i32 @uiComboboxSetSelected(i32*, i32) #1

declare dso_local i32* @uiNewArea(i32*) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
