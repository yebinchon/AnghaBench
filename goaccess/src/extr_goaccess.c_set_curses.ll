; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_curses.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_curses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@NO_COLOR = common dso_local global i32 0, align 4
@header_win = common dso_local global i32 0, align 4
@main_win = common dso_local global i32 0, align 4
@parsing_spinner = common dso_local global i32 0, align 4
@glog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_curses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_curses(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = call i32 (...) @setup_thread_signals()
  %5 = call i32 (...) @set_input_opts()
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i64 (...) @has_colors()
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @NO_COLOR, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  br label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @start_color()
  br label %16

16:                                               ; preds = %14, %12
  %17 = call i32 @init_colors(i32 0)
  %18 = call i32 @init_windows(i32* @header_win, i32* @main_win)
  %19 = load i32, i32* @parsing_spinner, align 4
  %20 = call i32 @set_curses_spinner(i32 %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %16
  %24 = call i8* (...) @verify_formats()
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %23
  %30 = call i32 (...) @refresh()
  %31 = load i32, i32* @glog, align 4
  %32 = load i32, i32* @parsing_spinner, align 4
  %33 = call i32 @render_confdlg(i32 %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  store i32 %33, i32* %34, align 4
  %35 = call i32 (...) @clear()
  br label %49

36:                                               ; preds = %26, %16
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = call i8* (...) @verify_formats()
  store i8* %40, i8** %3, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @FATAL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %48

45:                                               ; preds = %39, %36
  %46 = load i32, i32* @parsing_spinner, align 4
  %47 = call i32 @ui_spinner_create(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %29
  ret void
}

declare dso_local i32 @setup_thread_signals(...) #1

declare dso_local i32 @set_input_opts(...) #1

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @init_colors(i32) #1

declare dso_local i32 @init_windows(i32*, i32*) #1

declare dso_local i32 @set_curses_spinner(i32) #1

declare dso_local i8* @verify_formats(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @render_confdlg(i32, i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @FATAL(i8*, i8*) #1

declare dso_local i32 @ui_spinner_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
