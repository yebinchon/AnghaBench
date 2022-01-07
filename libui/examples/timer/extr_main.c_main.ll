; ModuleID = '/home/carl/AnghaBench/libui/examples/timer/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/examples/timer/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@e = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Say Something\00", align 1
@saySomething = common dso_local global i32 0, align 4
@sayTime = common dso_local global i32 0, align 4
@onClosing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 @memset(i32* %2, i32 0, i32 4)
  %7 = call i32* @uiInit(i32* %2)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @abort() #3
  unreachable

11:                                               ; preds = %0
  %12 = call i32* @uiNewWindow(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 320, i32 240, i32 0)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @uiWindowSetMargined(i32* %13, i32 1)
  %15 = call i32* (...) @uiNewVerticalBox()
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @uiBoxSetPadded(i32* %16, i32 1)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @uiControl(i32* %19)
  %21 = call i32 @uiWindowSetChild(i32* %18, i32 %20)
  %22 = call i32* (...) @uiNewMultilineEntry()
  store i32* %22, i32** @e, align 8
  %23 = load i32*, i32** @e, align 8
  %24 = call i32 @uiMultilineEntrySetReadOnly(i32* %23, i32 1)
  %25 = call i32* @uiNewButton(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @saySomething, align 4
  %28 = call i32 @uiButtonOnClicked(i32* %26, i32 %27, i32* null)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @uiControl(i32* %30)
  %32 = call i32 @uiBoxAppend(i32* %29, i32 %31, i32 0)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** @e, align 8
  %35 = call i32 @uiControl(i32* %34)
  %36 = call i32 @uiBoxAppend(i32* %33, i32 %35, i32 1)
  %37 = load i32, i32* @sayTime, align 4
  %38 = call i32 @uiTimer(i32 1000, i32 %37, i32* null)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @onClosing, align 4
  %41 = call i32 @uiWindowOnClosing(i32* %39, i32 %40, i32* null)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @uiControl(i32* %42)
  %44 = call i32 @uiControlShow(i32 %43)
  %45 = call i32 (...) @uiMain()
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @uiInit(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowSetMargined(i32*, i32) #1

declare dso_local i32* @uiNewVerticalBox(...) #1

declare dso_local i32 @uiBoxSetPadded(i32*, i32) #1

declare dso_local i32 @uiWindowSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewMultilineEntry(...) #1

declare dso_local i32 @uiMultilineEntrySetReadOnly(i32*, i32) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiTimer(i32, i32, i32*) #1

declare dso_local i32 @uiWindowOnClosing(i32*, i32, i32*) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
