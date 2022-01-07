; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page8.c_makePage8.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page8.c_makePage8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Font Families\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"List Font Families\00", align 1
@onListFonts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage8() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* (...) @newHorizontalBox()
  store i32* %6, i32** %1, align 8
  %7 = call i32* @newGroup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @uiControl(i32* %9)
  %11 = call i32 @uiBoxAppend(i32* %8, i32 %10, i32 1)
  %12 = call i32* (...) @newVerticalBox()
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @uiControl(i32* %14)
  %16 = call i32 @uiGroupSetChild(i32* %13, i32 %15)
  %17 = call i32* (...) @uiNewMultilineEntry()
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @uiControl(i32* %19)
  %21 = call i32 @uiBoxAppend(i32* %18, i32 %20, i32 1)
  %22 = call i32* @uiNewButton(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @onListFonts, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @uiButtonOnClicked(i32* %23, i32 %24, i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @uiControl(i32* %28)
  %30 = call i32 @uiBoxAppend(i32* %27, i32 %29, i32 0)
  %31 = load i32*, i32** %1, align 8
  ret i32* %31
}

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @newGroup(i8*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32 @uiGroupSetChild(i32*, i32) #1

declare dso_local i32* @uiNewMultilineEntry(...) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
