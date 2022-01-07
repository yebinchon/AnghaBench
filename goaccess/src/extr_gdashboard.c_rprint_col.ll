; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_rprint_col.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_rprint_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@COLOR_PANEL_COLS = common dso_local global i32 0, align 4
@DASH_SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i8*, i8*)* @rprint_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rprint_col(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* @COLOR_PANEL_COLS, align 4
  %15 = call %struct.TYPE_5__* @get_color(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @COLOR_PAIR(i32 %24)
  %26 = or i32 %19, %25
  %27 = call i32 @wattron(i32* %16, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @mvwprintw(i32* %28, i32 %29, i32 %31, i8* %32, i32 %33, i8* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @print_horizontal_dash(i32* %36, i32 %38, i32 %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @COLOR_PAIR(i32 %51)
  %53 = or i32 %46, %52
  %54 = call i32 @wattroff(i32* %43, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @DASH_SPACE, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %58
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  ret void
}

declare dso_local %struct.TYPE_5__* @get_color(i32) #1

declare dso_local i32 @wattron(i32*, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @print_horizontal_dash(i32*, i32, i32, i32) #1

declare dso_local i32 @wattroff(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
