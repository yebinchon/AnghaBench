; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_find_dialog.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_render_find_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@FIND_DLG_WIDTH = common dso_local global i32 0, align 4
@FIND_DLG_HEIGHT = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FIND_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@color_panel_header = common dso_local global i32 0, align 4
@FIND_DESC = common dso_local global i32 0, align 4
@find_t = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @render_find_dialog(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* @FIND_DLG_WIDTH, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @FIND_DLG_HEIGHT, align 4
  store i32 %13, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* @stdscr, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @getmaxyx(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = call i32* @newwin(i32 %18, i32 %19, i32 %23, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @keypad(i32* %29, i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @wborder(i32* %32, i8 signext 124, i8 signext 124, i8 signext 45, i8 signext 45, i8 signext 43, i8 signext 43, i8 signext 43, i8 signext 43)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @FIND_HEAD, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 2
  %38 = load i32, i32* @color_panel_header, align 4
  %39 = call i32 @draw_header(i32* %34, i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 %37, i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @FIND_DESC, align 4
  %42 = call i32 @mvwprintw(i32* %40, i32 2, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @find_t, i32 0, i32 1), align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 3
  %46 = call i8* @input_string(i32* %43, i32 4, i32 2, i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @find_t, i32 0, i32 1))
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %2
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @reset_scroll_offsets(i32* %55)
  %57 = call i32 (...) @reset_find()
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @xstrdup(i8* %58)
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @find_t, i32 0, i32 0), align 8
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %49, %2
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @touchwin(i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @close_win(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @wrefresh(i32* %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @wborder(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @draw_header(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i32) #1

declare dso_local i8* @input_string(i32*, i32, i32, i32, i8*, i32, i64*) #1

declare dso_local i32 @reset_scroll_offsets(i32*) #1

declare dso_local i32 @reset_find(...) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @touchwin(i32*) #1

declare dso_local i32 @close_win(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
