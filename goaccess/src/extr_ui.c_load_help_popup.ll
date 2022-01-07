; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_load_help_popup.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_load_help_popup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i64 }

@HELP_WIN_HEIGHT = common dso_local global i32 0, align 4
@HELP_WIN_WIDTH = common dso_local global i32 0, align 4
@help_main = common dso_local global i32* null, align 8
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HELP_MENU_HEIGHT = common dso_local global i32 0, align 4
@HELP_MENU_WIDTH = common dso_local global i32 0, align 4
@HELP_MENU_Y = common dso_local global i32 0, align 4
@HELP_MENU_X = common dso_local global i32 0, align 4
@HELPDLG_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@color_panel_header = common dso_local global i32 0, align 4
@HELPDLG_DESC = common dso_local global i32 0, align 4
@REQ_DOWN = common dso_local global i32 0, align 4
@REQ_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_help_popup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %4, align 4
  %14 = load i32, i32* @HELP_WIN_HEIGHT, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @HELP_WIN_WIDTH, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** @help_main, align 8
  %19 = call i64 @ARRAY_SIZE(i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @stdscr, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @getmaxyx(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  %34 = call i32* @newwin(i32 %24, i32 %25, i32 %29, i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @keypad(i32* %35, i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @wborder(i32* %38, i8 signext 124, i8 signext 124, i8 signext 45, i8 signext 45, i8 signext 43, i8 signext 43, i8 signext 43, i8 signext 43)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @HELP_MENU_HEIGHT, align 4
  %42 = load i32, i32* @HELP_MENU_WIDTH, align 4
  %43 = load i32, i32* @HELP_MENU_Y, align 4
  %44 = load i32, i32* @HELP_MENU_X, align 4
  %45 = call %struct.TYPE_8__* @new_gmenu(i32* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %13, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @xcalloc(i64 %49, i32 32)
  %51 = inttoptr i64 %50 to %struct.TYPE_8__*
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %76, %1
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32*, i32** @help_main, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_8__* @alloc_string(i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %58
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = call i32 @post_gmenu(%struct.TYPE_8__* %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @HELPDLG_HEAD, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @color_panel_header, align 4
  %86 = call i32 @draw_header(i32* %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 %84, i32 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* @HELPDLG_DESC, align 4
  %89 = call i32 @mvwprintw(i32* %87, i32 2, i32 2, i32 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @wrefresh(i32* %90)
  br label %92

92:                                               ; preds = %108, %79
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load i32, i32* @stdscr, align 4
  %97 = call i32 @wgetch(i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  switch i32 %98, label %108 [
    i32 130, label %99
    i32 128, label %103
    i32 129, label %107
    i32 113, label %107
  ]

99:                                               ; preds = %95
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = load i32, i32* @REQ_DOWN, align 4
  %102 = call i32 @gmenu_driver(%struct.TYPE_8__* %100, i32 %101)
  br label %108

103:                                              ; preds = %95
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %105 = load i32, i32* @REQ_UP, align 4
  %106 = call i32 @gmenu_driver(%struct.TYPE_8__* %104, i32 %105)
  br label %108

107:                                              ; preds = %95, %95
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %95, %107, %103, %99
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @wrefresh(i32* %109)
  br label %92

111:                                              ; preds = %92
  store i64 0, i64* %5, align 8
  br label %112

112:                                              ; preds = %125, %111
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = call i32 @free(%struct.TYPE_8__* %123)
  br label %125

125:                                              ; preds = %116
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %5, align 8
  br label %112

128:                                              ; preds = %112
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = call i32 @free(%struct.TYPE_8__* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %134 = call i32 @free(%struct.TYPE_8__* %133)
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @touchwin(i32* %135)
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @close_win(i32* %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @wrefresh(i32* %139)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @wborder(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_8__* @new_gmenu(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @xcalloc(i64, i32) #1

declare dso_local %struct.TYPE_8__* @alloc_string(i32) #1

declare dso_local i32 @post_gmenu(%struct.TYPE_8__*) #1

declare dso_local i32 @draw_header(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @wgetch(i32) #1

declare dso_local i32 @gmenu_driver(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @touchwin(i32*) #1

declare dso_local i32 @close_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
