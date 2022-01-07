; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page7a.c_makePage7a.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page7a.c_makePage7a.c"
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
@.str = private unnamed_addr constant [9 x i8] c"Arc Test\00", align 1
@area = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Start Angle\00", align 1
@startAngle = common dso_local global i32* null, align 8
@entryChanged = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Sweep\00", align 1
@sweep = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"Negative\00", align 1
@negative = common dso_local global i32* null, align 8
@checkboxToggled = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Radians\00", align 1
@radians = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage7a() #0 {
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
  %9 = call i32* @newGroup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %1, align 8
  %10 = call i32* (...) @newVerticalBox()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @uiControl(i32* %12)
  %14 = call i32 @uiGroupSetChild(i32* %11, i32 %13)
  %15 = call i32* @uiNewArea(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 0))
  store i32* %15, i32** @area, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** @area, align 8
  %18 = call i32 @uiControl(i32* %17)
  %19 = call i32 @uiBoxAppend(i32* %16, i32 %18, i32 1)
  %20 = call i32* (...) @newHorizontalBox()
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @uiControl(i32* %22)
  %24 = call i32 @uiBoxAppend(i32* %21, i32 %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32* @uiNewLabel(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @uiControl(i32* %26)
  %28 = call i32 @uiBoxAppend(i32* %25, i32 %27, i32 0)
  %29 = call i32* (...) @uiNewEntry()
  store i32* %29, i32** @startAngle, align 8
  %30 = load i32*, i32** @startAngle, align 8
  %31 = load i32, i32* @entryChanged, align 4
  %32 = call i32 @uiEntryOnChanged(i32* %30, i32 %31, i32* null)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** @startAngle, align 8
  %35 = call i32 @uiControl(i32* %34)
  %36 = call i32 @uiBoxAppend(i32* %33, i32 %35, i32 1)
  %37 = call i32* (...) @newHorizontalBox()
  store i32* %37, i32** %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @uiControl(i32* %39)
  %41 = call i32 @uiBoxAppend(i32* %38, i32 %40, i32 0)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32* @uiNewLabel(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @uiControl(i32* %43)
  %45 = call i32 @uiBoxAppend(i32* %42, i32 %44, i32 0)
  %46 = call i32* (...) @uiNewEntry()
  store i32* %46, i32** @sweep, align 8
  %47 = load i32*, i32** @sweep, align 8
  %48 = load i32, i32* @entryChanged, align 4
  %49 = call i32 @uiEntryOnChanged(i32* %47, i32 %48, i32* null)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** @sweep, align 8
  %52 = call i32 @uiControl(i32* %51)
  %53 = call i32 @uiBoxAppend(i32* %50, i32 %52, i32 1)
  %54 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32* %54, i32** @negative, align 8
  %55 = load i32*, i32** @negative, align 8
  %56 = load i32, i32* @checkboxToggled, align 4
  %57 = call i32 @uiCheckboxOnToggled(i32* %55, i32 %56, i32* null)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** @negative, align 8
  %60 = call i32 @uiControl(i32* %59)
  %61 = call i32 @uiBoxAppend(i32* %58, i32 %60, i32 0)
  %62 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %62, i32** @radians, align 8
  %63 = load i32*, i32** @radians, align 8
  %64 = load i32, i32* @checkboxToggled, align 4
  %65 = call i32 @uiCheckboxOnToggled(i32* %63, i32 %64, i32* null)
  %66 = load i32*, i32** %2, align 8
  %67 = load i32*, i32** @radians, align 8
  %68 = call i32 @uiControl(i32* %67)
  %69 = call i32 @uiBoxAppend(i32* %66, i32 %68, i32 0)
  %70 = load i32*, i32** %1, align 8
  ret i32* %70
}

declare dso_local i32* @newGroup(i8*) #1

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32 @uiGroupSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewArea(i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @uiNewLabel(i8*) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntryOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32 @uiCheckboxOnToggled(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
