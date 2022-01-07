; ModuleID = '/home/carl/AnghaBench/libui/examples/datetime/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/examples/datetime/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error initializing ui: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Date / Time\00", align 1
@dtboth = common dso_local global i32* null, align 8
@dtdate = common dso_local global i32* null, align 8
@dttime = common dso_local global i32* null, align 8
@uiAlignFill = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@uiAlignCenter = common dso_local global i32 0, align 4
@onChanged = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"Now\00", align 1
@onClicked = common dso_local global i32 0, align 4
@uiAlignEnd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Unix epoch\00", align 1
@onClosing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %8 = call i32 @memset(i32* %2, i32 0, i32 4)
  %9 = call i8* @uiInit(i32* %2)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @uiFreeInitError(i8* %16)
  store i32 1, i32* %1, align 4
  br label %110

18:                                               ; preds = %0
  %19 = call i32* @uiNewWindow(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 320, i32 240, i32 0)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @uiWindowSetMargined(i32* %20, i32 1)
  %22 = call i32* (...) @uiNewGrid()
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @uiGridSetPadded(i32* %23, i32 1)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @uiControl(i32* %26)
  %28 = call i32 @uiWindowSetChild(i32* %25, i32 %27)
  %29 = call i32* (...) @uiNewDateTimePicker()
  store i32* %29, i32** @dtboth, align 8
  %30 = call i32* (...) @uiNewDatePicker()
  store i32* %30, i32** @dtdate, align 8
  %31 = call i32* (...) @uiNewTimePicker()
  store i32* %31, i32** @dttime, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** @dtboth, align 8
  %34 = call i32 @uiControl(i32* %33)
  %35 = load i32, i32* @uiAlignFill, align 4
  %36 = load i32, i32* @uiAlignFill, align 4
  %37 = call i32 @uiGridAppend(i32* %32, i32 %34, i32 0, i32 0, i32 2, i32 1, i32 1, i32 %35, i32 0, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** @dtdate, align 8
  %40 = call i32 @uiControl(i32* %39)
  %41 = load i32, i32* @uiAlignFill, align 4
  %42 = load i32, i32* @uiAlignFill, align 4
  %43 = call i32 @uiGridAppend(i32* %38, i32 %40, i32 0, i32 1, i32 1, i32 1, i32 1, i32 %41, i32 0, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** @dttime, align 8
  %46 = call i32 @uiControl(i32* %45)
  %47 = load i32, i32* @uiAlignFill, align 4
  %48 = load i32, i32* @uiAlignFill, align 4
  %49 = call i32 @uiGridAppend(i32* %44, i32 %46, i32 1, i32 1, i32 1, i32 1, i32 1, i32 %47, i32 0, i32 %48)
  %50 = call i32* @uiNewLabel(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @uiControl(i32* %52)
  %54 = load i32, i32* @uiAlignCenter, align 4
  %55 = load i32, i32* @uiAlignFill, align 4
  %56 = call i32 @uiGridAppend(i32* %51, i32 %53, i32 0, i32 2, i32 2, i32 1, i32 1, i32 %54, i32 0, i32 %55)
  %57 = load i32*, i32** @dtboth, align 8
  %58 = load i32, i32* @onChanged, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @uiDateTimePickerOnChanged(i32* %57, i32 %58, i32* %59)
  %61 = call i32* @uiNewLabel(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %61, i32** %6, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @uiControl(i32* %63)
  %65 = load i32, i32* @uiAlignCenter, align 4
  %66 = load i32, i32* @uiAlignFill, align 4
  %67 = call i32 @uiGridAppend(i32* %62, i32 %64, i32 0, i32 3, i32 1, i32 1, i32 1, i32 %65, i32 0, i32 %66)
  %68 = load i32*, i32** @dtdate, align 8
  %69 = load i32, i32* @onChanged, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @uiDateTimePickerOnChanged(i32* %68, i32 %69, i32* %70)
  %72 = call i32* @uiNewLabel(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @uiControl(i32* %74)
  %76 = load i32, i32* @uiAlignCenter, align 4
  %77 = load i32, i32* @uiAlignFill, align 4
  %78 = call i32 @uiGridAppend(i32* %73, i32 %75, i32 1, i32 3, i32 1, i32 1, i32 1, i32 %76, i32 0, i32 %77)
  %79 = load i32*, i32** @dttime, align 8
  %80 = load i32, i32* @onChanged, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @uiDateTimePickerOnChanged(i32* %79, i32 %80, i32* %81)
  %83 = call i32* @uiNewButton(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32* %83, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @onClicked, align 4
  %86 = call i32 @uiButtonOnClicked(i32* %84, i32 %85, i8* inttoptr (i64 1 to i8*))
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @uiControl(i32* %88)
  %90 = load i32, i32* @uiAlignFill, align 4
  %91 = load i32, i32* @uiAlignEnd, align 4
  %92 = call i32 @uiGridAppend(i32* %87, i32 %89, i32 0, i32 4, i32 1, i32 1, i32 1, i32 %90, i32 1, i32 %91)
  %93 = call i32* @uiNewButton(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @onClicked, align 4
  %96 = call i32 @uiButtonOnClicked(i32* %94, i32 %95, i8* null)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @uiControl(i32* %98)
  %100 = load i32, i32* @uiAlignFill, align 4
  %101 = load i32, i32* @uiAlignEnd, align 4
  %102 = call i32 @uiGridAppend(i32* %97, i32 %99, i32 1, i32 4, i32 1, i32 1, i32 1, i32 %100, i32 1, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @onClosing, align 4
  %105 = call i32 @uiWindowOnClosing(i32* %103, i32 %104, i32* null)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @uiControl(i32* %106)
  %108 = call i32 @uiControlShow(i32 %107)
  %109 = call i32 (...) @uiMain()
  store i32 0, i32* %1, align 4
  br label %110

110:                                              ; preds = %18, %12
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @uiInit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uiFreeInitError(i8*) #1

declare dso_local i32* @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowSetMargined(i32*, i32) #1

declare dso_local i32* @uiNewGrid(...) #1

declare dso_local i32 @uiGridSetPadded(i32*, i32) #1

declare dso_local i32 @uiWindowSetChild(i32*, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewDateTimePicker(...) #1

declare dso_local i32* @uiNewDatePicker(...) #1

declare dso_local i32* @uiNewTimePicker(...) #1

declare dso_local i32 @uiGridAppend(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @uiNewLabel(i8*) #1

declare dso_local i32 @uiDateTimePickerOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i8*) #1

declare dso_local i32 @uiWindowOnClosing(i32*, i32, i32*) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
