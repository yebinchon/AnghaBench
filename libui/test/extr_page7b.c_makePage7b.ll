; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page7b.c_makePage7b.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page7b.c_makePage7b.c"
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
@.str = private unnamed_addr constant [21 x i8] c"Scrolling Mouse Test\00", align 1
@area = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@label = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage7b() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @handlerDraw, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 4), align 4
  %4 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 3), align 4
  %5 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 2), align 4
  %6 = load i32, i32* @handlerDragBroken, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 1), align 4
  %7 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 0), align 4
  %8 = call i32* @newGroup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = call i32* (...) @newVerticalBox()
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @uiControl(i32* %11)
  %13 = call i32 @uiGroupSetChild(i32* %10, i32 %12)
  %14 = call i32* @uiNewScrollingArea(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @handler, i32 0, i32 0, i32 0), i32 5000, i32 5000)
  store i32* %14, i32** @area, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** @area, align 8
  %17 = call i32 @uiControl(i32* %16)
  %18 = call i32 @uiBoxAppend(i32* %15, i32 %17, i32 1)
  %19 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** @label, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** @label, align 8
  %22 = call i32 @uiControl(i32* %21)
  %23 = call i32 @uiBoxAppend(i32* %20, i32 %22, i32 0)
  %24 = load i32*, i32** %1, align 8
  ret i32* %24
}

declare dso_local i32* @newGroup(i8*) #1

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32 @uiGroupSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewScrollingArea(i32*, i32, i32) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
