; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_render_screens.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_render_screens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@COLOR_DEFAULT = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@main_win = common dso_local global i32 0, align 4
@main_win_height = common dso_local global i32 0, align 4
@glog = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@color_default = common dso_local global i32 0, align 4
@T_HELP_ENTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%d - %s\00", align 1
@now_tm = common dso_local global i32 0, align 4
@T_QUIT = common dso_local global i32 0, align 4
@GO_VERSION = common dso_local global i32 0, align 4
@header_win = common dso_local global i32 0, align 4
@holder = common dso_local global i32 0, align 4
@gscroll = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@dash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @render_screens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_screens() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @COLOR_DEFAULT, align 4
  %6 = call %struct.TYPE_9__* @get_color(i32 %5)
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %1, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @stdscr, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @getmaxyx(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @main_win, align 4
  %12 = call i32 @term_size(i32 %11, i32* @main_win_height)
  %13 = call i32 (...) @generate_time()
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @glog, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @glog, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @stdscr, align 4
  %22 = load i32, i32* %2, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @color_default, align 4
  %26 = call i32 @draw_header(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 0, i32 %24, i32 %25)
  %27 = load i32, i32* @stdscr, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @COLOR_PAIR(i32 %35)
  %37 = or i32 %30, %36
  %38 = call i32 @wattron(i32 %27, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @T_HELP_ENTER, align 4
  %42 = call i32 @mvaddstr(i32 %40, i32 1, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @now_tm, align 4
  %47 = call i32 @asctime(i32 %46)
  %48 = call i32 (i32, i32, i8*, i32, ...) @mvprintw(i32 %44, i32 30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, 21
  %53 = load i32, i32* @T_QUIT, align 4
  %54 = call i32 @mvaddstr(i32 %50, i32 %52, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %3, align 4
  %58 = sub nsw i32 %57, 5
  %59 = load i32, i32* @GO_VERSION, align 4
  %60 = call i32 (i32, i32, i8*, i32, ...) @mvprintw(i32 %56, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @stdscr, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @COLOR_PAIR(i32 %69)
  %71 = or i32 %64, %70
  %72 = call i32 @wattroff(i32 %61, i32 %71)
  %73 = call i32 (...) @refresh()
  %74 = load i32, i32* @header_win, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @glog, align 8
  %76 = load i32, i32* @holder, align 4
  %77 = call i32 @display_general(i32 %74, %struct.TYPE_11__* %75, i32 %76)
  %78 = load i32, i32* @header_win, align 4
  %79 = call i32 @wrefresh(i32 %78)
  %80 = load i32, i32* @header_win, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gscroll, i32 0, i32 0), align 4
  %82 = call i32 @update_active_module(i32 %80, i32 %81)
  %83 = load i32, i32* @main_win, align 4
  %84 = load i32, i32* @dash, align 4
  %85 = call i32 @display_content(i32 %83, i32 %84, %struct.TYPE_10__* @gscroll)
  ret void
}

declare dso_local %struct.TYPE_9__* @get_color(i32) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @term_size(i32, i32*) #1

declare dso_local i32 @generate_time(...) #1

declare dso_local i32 @draw_header(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wattron(i32, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @mvaddstr(i32, i32, i32) #1

declare dso_local i32 @mvprintw(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @asctime(i32) #1

declare dso_local i32 @wattroff(i32, i32) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @display_general(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @update_active_module(i32, i32) #1

declare dso_local i32 @display_content(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
