; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_load_agent_list.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_load_agent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@conf = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@stdscr = common dso_local global i32 0, align 4
@AGENTS_MENU_Y = common dso_local global i32 0, align 4
@AGENTS_MENU_X = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@load_host_agents_gmenu = common dso_local global i32 0, align 4
@AGENTSDLG_HEAD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@color_panel_header = common dso_local global i32 0, align 4
@AGENTSDLG_DESC = common dso_local global i32 0, align 4
@REQ_DOWN = common dso_local global i32 0, align 4
@REQ_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_agent_list(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %9, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %143

20:                                               ; preds = %2
  %21 = load i32, i32* @stdscr, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @getmaxyx(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %27, 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @AGENTS_MENU_Y, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @AGENTS_MENU_X, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @AGENTS_MENU_X, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = call i32* @newwin(i32 %38, i32 %39, i32 %43, i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @keypad(i32* %49, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @wborder(i32* %52, i8 signext 124, i8 signext 124, i8 signext 45, i8 signext 45, i8 signext 43, i8 signext 43, i8 signext 43, i8 signext 43)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @AGENTS_MENU_Y, align 4
  %58 = load i32, i32* @AGENTS_MENU_X, align 4
  %59 = call %struct.TYPE_8__* @new_gmenu(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @load_host_agents_gmenu, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = call i32 @set_host_agents(i8* %60, i32 %61, %struct.TYPE_8__* %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %20
  br label %110

66:                                               ; preds = %20
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = call i32 @post_gmenu(%struct.TYPE_8__* %67)
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %70 = load i8*, i8** @AGENTSDLG_HEAD, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @snprintf(i8* %69, i32 256, i8* %70, i8* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %75, 2
  %77 = load i32, i32* @color_panel_header, align 4
  %78 = call i32 @draw_header(i32* %73, i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 %76, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @AGENTSDLG_DESC, align 4
  %81 = call i32 @mvwprintw(i32* %79, i32 2, i32 2, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @wrefresh(i32* %82)
  br label %84

84:                                               ; preds = %100, %66
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i32, i32* @stdscr, align 4
  %89 = call i32 @wgetch(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %100 [
    i32 130, label %91
    i32 128, label %95
    i32 129, label %99
    i32 113, label %99
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = load i32, i32* @REQ_DOWN, align 4
  %94 = call i32 @gmenu_driver(%struct.TYPE_8__* %92, i32 %93)
  br label %100

95:                                               ; preds = %87
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = load i32, i32* @REQ_UP, align 4
  %98 = call i32 @gmenu_driver(%struct.TYPE_8__* %96, i32 %97)
  br label %100

99:                                               ; preds = %87, %87
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %87, %99, %95, %91
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @wrefresh(i32* %101)
  br label %84

103:                                              ; preds = %84
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @touchwin(i32* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @close_win(i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @wrefresh(i32* %108)
  br label %110

110:                                              ; preds = %103, %65
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = call i32 @free(%struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = icmp ne %struct.TYPE_8__* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = call i32 @free(%struct.TYPE_8__* %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = call i32 @free(%struct.TYPE_8__* %141)
  br label %143

143:                                              ; preds = %140, %19
  ret void
}

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @wborder(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_8__* @new_gmenu(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_host_agents(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @post_gmenu(%struct.TYPE_8__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @draw_header(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @wgetch(i32) #1

declare dso_local i32 @gmenu_driver(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @touchwin(i32*) #1

declare dso_local i32 @close_win(i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
