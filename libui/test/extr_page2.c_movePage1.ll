; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page2.c_movePage1.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page2.c_movePage1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@moveBack = common dso_local global i32 0, align 4
@mainBox = common dso_local global i32 0, align 4
@mainTab = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Page 1\00", align 1
@page1 = common dso_local global i32 0, align 4
@moveOutText = common dso_local global i32 0, align 4
@moveBackText = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @movePage1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @movePage1(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @moveBack, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, i32* @mainBox, align 4
  %9 = call i32 @uiBoxDelete(i32 %8, i32 1)
  %10 = load i32, i32* @mainTab, align 4
  %11 = load i32, i32* @page1, align 4
  %12 = call i32 @uiControl(i32 %11)
  %13 = call i32 @uiTabInsertAt(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @moveOutText, align 4
  %16 = call i32 @uiButtonSetText(i32* %14, i32 %15)
  store i32 0, i32* @moveBack, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @mainTab, align 4
  %19 = call i32 @uiTabDelete(i32 %18, i32 0)
  %20 = load i32, i32* @mainBox, align 4
  %21 = load i32, i32* @page1, align 4
  %22 = call i32 @uiControl(i32 %21)
  %23 = call i32 @uiBoxAppend(i32 %20, i32 %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @moveBackText, align 4
  %26 = call i32 @uiButtonSetText(i32* %24, i32 %25)
  store i32 1, i32* @moveBack, align 4
  br label %27

27:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @uiBoxDelete(i32, i32) #1

declare dso_local i32 @uiTabInsertAt(i32, i8*, i32, i32) #1

declare dso_local i32 @uiControl(i32) #1

declare dso_local i32 @uiButtonSetText(i32*, i32) #1

declare dso_local i32 @uiTabDelete(i32, i32) #1

declare dso_local i32 @uiBoxAppend(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
