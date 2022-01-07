; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_update_active_module.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_update_active_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@COLOR_ACTIVE_LABEL = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@T_ACTIVE_PANEL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_active_module(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @COLOR_ACTIVE_LABEL, align 4
  %10 = call %struct.TYPE_5__* @get_color(i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @module_to_label(i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* @stdscr, align 4
  %14 = call i32 @getmaxx(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** @T_ACTIVE_PANEL, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @snprintf(i32* null, i32 0, i8* %15, i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i8* @xmalloc(i64 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** @T_ACTIVE_PANEL, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @sprintf(i8* %20, i8* %21, i8* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @wmove(i32* %24, i32 0, i32 30)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @COLOR_PAIR(i32 %34)
  %36 = or i32 %29, %35
  %37 = call i32 @wattron(i32* %26, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sub nsw i32 %39, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @mvwprintw(i32* %38, i32 0, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @COLOR_PAIR(i32 %54)
  %56 = or i32 %49, %55
  %57 = call i32 @wattroff(i32* %46, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @wrefresh(i32* %58)
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @free(i8* %60)
  ret void
}

declare dso_local %struct.TYPE_5__* @get_color(i32) #1

declare dso_local i8* @module_to_label(i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wattron(i32*, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wattroff(i32*, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
