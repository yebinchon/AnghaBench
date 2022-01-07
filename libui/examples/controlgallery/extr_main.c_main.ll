; ModuleID = '/home/carl/AnghaBench/libui/examples/controlgallery/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/examples/controlgallery/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error initializing libui: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"libui Control Gallery\00", align 1
@mainwin = common dso_local global i32* null, align 8
@onClosing = common dso_local global i32 0, align 4
@onShouldQuit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Basic Controls\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Numbers and Lists\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Data Choosers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 @memset(i32* %2, i32 0, i32 4)
  %6 = call i8* @uiInit(i32* %2)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @uiFreeInitError(i8* %13)
  store i32 1, i32* %1, align 4
  br label %49

15:                                               ; preds = %0
  %16 = call i32* @uiNewWindow(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 640, i32 480, i32 1)
  store i32* %16, i32** @mainwin, align 8
  %17 = load i32*, i32** @mainwin, align 8
  %18 = load i32, i32* @onClosing, align 4
  %19 = call i32 @uiWindowOnClosing(i32* %17, i32 %18, i32* null)
  %20 = load i32, i32* @onShouldQuit, align 4
  %21 = load i32*, i32** @mainwin, align 8
  %22 = call i32 @uiOnShouldQuit(i32 %20, i32* %21)
  %23 = call i32* (...) @uiNewTab()
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** @mainwin, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @uiControl(i32* %25)
  %27 = call i32 @uiWindowSetChild(i32* %24, i32 %26)
  %28 = load i32*, i32** @mainwin, align 8
  %29 = call i32 @uiWindowSetMargined(i32* %28, i32 1)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (...) @makeBasicControlsPage()
  %32 = call i32 @uiTabAppend(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @uiTabSetMargined(i32* %33, i32 0, i32 1)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 (...) @makeNumbersPage()
  %37 = call i32 @uiTabAppend(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @uiTabSetMargined(i32* %38, i32 1, i32 1)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (...) @makeDataChoosersPage()
  %42 = call i32 @uiTabAppend(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @uiTabSetMargined(i32* %43, i32 2, i32 1)
  %45 = load i32*, i32** @mainwin, align 8
  %46 = call i32 @uiControl(i32* %45)
  %47 = call i32 @uiControlShow(i32 %46)
  %48 = call i32 (...) @uiMain()
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %15, %9
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @uiInit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uiFreeInitError(i8*) #1

declare dso_local i32* @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowOnClosing(i32*, i32, i32*) #1

declare dso_local i32 @uiOnShouldQuit(i32, i32*) #1

declare dso_local i32* @uiNewTab(...) #1

declare dso_local i32 @uiWindowSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32 @uiWindowSetMargined(i32*, i32) #1

declare dso_local i32 @uiTabAppend(i32*, i8*, i32) #1

declare dso_local i32 @makeBasicControlsPage(...) #1

declare dso_local i32 @uiTabSetMargined(i32*, i32, i32) #1

declare dso_local i32 @makeNumbersPage(...) #1

declare dso_local i32 @makeDataChoosersPage(...) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
