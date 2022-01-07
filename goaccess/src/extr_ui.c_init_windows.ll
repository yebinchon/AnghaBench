; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_init_windows.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_init_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdscr = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@MIN_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Minimum screen size - 0 columns by 7 lines\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory for header_win.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for main_win.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_windows(i32** %0, i32** %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @stdscr, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @getmaxyx(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MIN_HEIGHT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MIN_WIDTH, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = call i32 @FATAL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32* @newwin(i32 6, i32 %21, i32 0, i32 0)
  %23 = load i32**, i32*** %3, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32**, i32*** %3, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @keypad(i32* %25, i32 %26)
  %28 = load i32**, i32*** %3, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 @FATAL(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32* @newwin(i32 %35, i32 %36, i32 7, i32 0)
  %38 = load i32**, i32*** %4, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %4, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @keypad(i32* %40, i32 %41)
  %43 = load i32**, i32*** %4, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 @FATAL(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %33
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %3, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @set_wbkgd(i32* %50, i32* %52)
  ret void
}

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @FATAL(i8*) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @set_wbkgd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
