; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page5.c_makePage5.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page5.c_makePage5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parent = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Open File\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@openFile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Save File\00", align 1
@saveFile = common dso_local global i32 0, align 4
@title = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@description = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Message Box\00", align 1
@msgBox = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"Error Box\00", align 1
@msgBoxError = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage5(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  store i32* %7, i32** @parent, align 8
  %8 = call i32* (...) @newVerticalBox()
  store i32* %8, i32** %3, align 8
  %9 = call i32* (...) @newHorizontalBox()
  store i32* %9, i32** %4, align 8
  %10 = call i32* @uiNewButton(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %5, align 8
  %11 = call i32 (i8*, ...) bitcast (i32 (...)* @uiNewLabel to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @openFile, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @uiButtonOnClicked(i32* %14, i32 %15, i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @uiControl(i32* %19)
  %21 = call i32 @uiBoxAppend(i32* %18, i32 %20, i32 0)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @uiControl(i32* %23)
  %25 = call i32 @uiBoxAppend(i32* %22, i32 %24, i32 0)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @uiControl(i32* %27)
  %29 = call i32 @uiBoxAppend(i32* %26, i32 %28, i32 0)
  %30 = call i32* (...) @newHorizontalBox()
  store i32* %30, i32** %4, align 8
  %31 = call i32* @uiNewButton(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  %32 = call i32 (i8*, ...) bitcast (i32 (...)* @uiNewLabel to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @saveFile, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @uiButtonOnClicked(i32* %35, i32 %36, i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @uiControl(i32* %40)
  %42 = call i32 @uiBoxAppend(i32* %39, i32 %41, i32 0)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @uiControl(i32* %44)
  %46 = call i32 @uiBoxAppend(i32* %43, i32 %45, i32 0)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @uiControl(i32* %48)
  %50 = call i32 @uiBoxAppend(i32* %47, i32 %49, i32 0)
  %51 = call i32* (...) @uiNewEntry()
  store i32* %51, i32** @title, align 8
  %52 = load i32*, i32** @title, align 8
  %53 = call i32 @uiEntrySetText(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32* (...) @uiNewEntry()
  store i32* %54, i32** @description, align 8
  %55 = load i32*, i32** @description, align 8
  %56 = call i32 @uiEntrySetText(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32* (...) @newHorizontalBox()
  store i32* %57, i32** %4, align 8
  %58 = call i32* @uiNewButton(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @msgBox, align 4
  %61 = call i32 @uiButtonOnClicked(i32* %59, i32 %60, i32* null)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @uiControl(i32* %63)
  %65 = call i32 @uiBoxAppend(i32* %62, i32 %64, i32 0)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** @title, align 8
  %68 = call i32 @uiControl(i32* %67)
  %69 = call i32 @uiBoxAppend(i32* %66, i32 %68, i32 0)
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @uiControl(i32* %71)
  %73 = call i32 @uiBoxAppend(i32* %70, i32 %72, i32 0)
  %74 = call i32* (...) @newHorizontalBox()
  store i32* %74, i32** %4, align 8
  %75 = call i32* @uiNewButton(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %75, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @msgBoxError, align 4
  %78 = call i32 @uiButtonOnClicked(i32* %76, i32 %77, i32* null)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @uiControl(i32* %80)
  %82 = call i32 @uiBoxAppend(i32* %79, i32 %81, i32 0)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** @description, align 8
  %85 = call i32 @uiControl(i32* %84)
  %86 = call i32 @uiBoxAppend(i32* %83, i32 %85, i32 0)
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @uiControl(i32* %88)
  %90 = call i32 @uiBoxAppend(i32* %87, i32 %89, i32 0)
  %91 = load i32*, i32** %3, align 8
  ret i32* %91
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiNewLabel(...) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntrySetText(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
