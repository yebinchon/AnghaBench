; ModuleID = '/home/carl/AnghaBench/libui/_doc/misctests/extr_gtkprogresstable.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/_doc/misctests/extr_gtkprogresstable.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@mainwin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@onClosing = common dso_local global i32 0, align 4
@GTK_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@vbox = common dso_local global i32 0, align 4
@GTK_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@hbox = common dso_local global i32 0, align 4
@GTK_ALIGN_CENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Start Progress Bar\00", align 1
@startProgress = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@onStartProgressClicked = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Start Table Cell Renderer\00", align 1
@startTable = common dso_local global i32 0, align 4
@onStartTableClicked = common dso_local global i32 0, align 4
@progressbar = common dso_local global i32 0, align 4
@scrolledWindow = common dso_local global i32 0, align 4
@GTK_SHADOW_IN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@G_TYPE_INT = common dso_local global i32 0, align 4
@model = common dso_local global i32 0, align 4
@treeview = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Column\00", align 1
@pbarDataFunc = common dso_local global i32 0, align 4
@hbox2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"These buttons\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"do nothing\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"when clicked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 @gtk_init(i32* null, i32* null)
  %6 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %7 = call i32 @gtk_window_new(i32 %6)
  store i32 %7, i32* @mainwin, align 4
  %8 = load i32, i32* @mainwin, align 4
  %9 = load i32, i32* @onClosing, align 4
  %10 = call i32 @G_CALLBACK(i32 %9)
  %11 = call i32 @g_signal_connect(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32* null)
  %12 = load i32, i32* @GTK_ORIENTATION_VERTICAL, align 4
  %13 = call i32 @gtk_box_new(i32 %12, i32 12)
  store i32 %13, i32* @vbox, align 4
  %14 = load i32, i32* @vbox, align 4
  %15 = call i32 @GTK_CONTAINER(i32 %14)
  %16 = call i32 @gtk_container_set_border_width(i32 %15, i32 12)
  %17 = load i32, i32* @mainwin, align 4
  %18 = call i32 @GTK_CONTAINER(i32 %17)
  %19 = load i32, i32* @vbox, align 4
  %20 = call i32 @gtk_container_add(i32 %18, i32 %19)
  %21 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %22 = call i32 @gtk_box_new(i32 %21, i32 6)
  store i32 %22, i32* @hbox, align 4
  %23 = load i32, i32* @hbox, align 4
  %24 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %25 = call i32 @gtk_widget_set_halign(i32 %23, i32 %24)
  %26 = load i32, i32* @vbox, align 4
  %27 = call i32 @GTK_CONTAINER(i32 %26)
  %28 = load i32, i32* @hbox, align 4
  %29 = call i32 @gtk_container_add(i32 %27, i32 %28)
  %30 = call i32 @gtk_button_new_with_label(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* @startProgress, align 4
  %31 = load i32, i32* @startProgress, align 4
  %32 = load i32, i32* @onStartProgressClicked, align 4
  %33 = call i32 @G_CALLBACK(i32 %32)
  %34 = call i32 @g_signal_connect(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32* null)
  %35 = load i32, i32* @hbox, align 4
  %36 = call i32 @GTK_CONTAINER(i32 %35)
  %37 = load i32, i32* @startProgress, align 4
  %38 = call i32 @gtk_container_add(i32 %36, i32 %37)
  %39 = call i32 @gtk_button_new_with_label(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* @startTable, align 4
  %40 = load i32, i32* @startTable, align 4
  %41 = load i32, i32* @onStartTableClicked, align 4
  %42 = call i32 @G_CALLBACK(i32 %41)
  %43 = call i32 @g_signal_connect(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32* null)
  %44 = load i32, i32* @hbox, align 4
  %45 = call i32 @GTK_CONTAINER(i32 %44)
  %46 = load i32, i32* @startTable, align 4
  %47 = call i32 @gtk_container_add(i32 %45, i32 %46)
  %48 = call i32 (...) @gtk_progress_bar_new()
  store i32 %48, i32* @progressbar, align 4
  %49 = load i32, i32* @vbox, align 4
  %50 = call i32 @GTK_CONTAINER(i32 %49)
  %51 = load i32, i32* @progressbar, align 4
  %52 = call i32 @gtk_container_add(i32 %50, i32 %51)
  %53 = call i32 @gtk_scrolled_window_new(i32* null, i32* null)
  store i32 %53, i32* @scrolledWindow, align 4
  %54 = load i32, i32* @scrolledWindow, align 4
  %55 = call i32 @GTK_SCROLLED_WINDOW(i32 %54)
  %56 = load i32, i32* @GTK_SHADOW_IN, align 4
  %57 = call i32 @gtk_scrolled_window_set_shadow_type(i32 %55, i32 %56)
  %58 = load i32, i32* @scrolledWindow, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @gtk_widget_set_vexpand(i32 %58, i32 %59)
  %61 = load i32, i32* @vbox, align 4
  %62 = call i32 @GTK_CONTAINER(i32 %61)
  %63 = load i32, i32* @scrolledWindow, align 4
  %64 = call i32 @gtk_container_add(i32 %62, i32 %63)
  %65 = load i32, i32* @G_TYPE_INT, align 4
  %66 = call i32 @gtk_list_store_new(i32 1, i32 %65)
  store i32 %66, i32* @model, align 4
  %67 = load i32, i32* @model, align 4
  %68 = call i32 @gtk_list_store_append(i32 %67, i32* %2)
  %69 = load i32, i32* @model, align 4
  %70 = call i32 @gtk_list_store_set(i32 %69, i32* %2, i32 0, i32 0, i32 -1)
  %71 = load i32, i32* @model, align 4
  %72 = call i32 @GTK_TREE_MODEL(i32 %71)
  %73 = call i32 @gtk_tree_view_new_with_model(i32 %72)
  store i32 %73, i32* @treeview, align 4
  %74 = load i32, i32* @scrolledWindow, align 4
  %75 = call i32 @GTK_CONTAINER(i32 %74)
  %76 = load i32, i32* @treeview, align 4
  %77 = call i32 @gtk_container_add(i32 %75, i32 %76)
  %78 = call i32* (...) @gtk_tree_view_column_new()
  store i32* %78, i32** %3, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32 @gtk_tree_view_column_set_resizable(i32* %79, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @gtk_tree_view_column_set_title(i32* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @treeview, align 4
  %85 = call i32 @GTK_TREE_VIEW(i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @gtk_tree_view_append_column(i32 %85, i32* %86)
  %88 = call i32* (...) @gtk_cell_renderer_progress_new()
  store i32* %88, i32** %4, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @gtk_tree_view_column_pack_start(i32* %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @pbarDataFunc, align 4
  %96 = call i32 @gtk_tree_view_column_set_cell_data_func(i32* %93, i32* %94, i32 %95, i32* null, i32* null)
  %97 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %98 = call i32 @gtk_box_new(i32 %97, i32 6)
  store i32 %98, i32* @hbox2, align 4
  %99 = load i32, i32* @hbox2, align 4
  %100 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %101 = call i32 @gtk_widget_set_halign(i32 %99, i32 %100)
  %102 = load i32, i32* @vbox, align 4
  %103 = call i32 @GTK_CONTAINER(i32 %102)
  %104 = load i32, i32* @hbox2, align 4
  %105 = call i32 @gtk_container_add(i32 %103, i32 %104)
  %106 = load i32, i32* @hbox2, align 4
  %107 = call i32 @GTK_CONTAINER(i32 %106)
  %108 = call i32 @gtk_button_new_with_label(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %109 = call i32 @gtk_container_add(i32 %107, i32 %108)
  %110 = load i32, i32* @hbox2, align 4
  %111 = call i32 @GTK_CONTAINER(i32 %110)
  %112 = call i32 @gtk_button_new_with_label(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %113 = call i32 @gtk_container_add(i32 %111, i32 %112)
  %114 = load i32, i32* @hbox2, align 4
  %115 = call i32 @GTK_CONTAINER(i32 %114)
  %116 = call i32 @gtk_button_new_with_label(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %117 = call i32 @gtk_container_add(i32 %115, i32 %116)
  %118 = load i32, i32* @mainwin, align 4
  %119 = call i32 @gtk_widget_show_all(i32 %118)
  %120 = call i32 (...) @gtk_main()
  ret i32 0
}

declare dso_local i32 @gtk_init(i32*, i32*) #1

declare dso_local i32 @gtk_window_new(i32) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_box_new(i32, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32) #1

declare dso_local i32 @gtk_container_add(i32, i32) #1

declare dso_local i32 @gtk_widget_set_halign(i32, i32) #1

declare dso_local i32 @gtk_button_new_with_label(i8*) #1

declare dso_local i32 @gtk_progress_bar_new(...) #1

declare dso_local i32 @gtk_scrolled_window_new(i32*, i32*) #1

declare dso_local i32 @gtk_scrolled_window_set_shadow_type(i32, i32) #1

declare dso_local i32 @GTK_SCROLLED_WINDOW(i32) #1

declare dso_local i32 @gtk_widget_set_vexpand(i32, i32) #1

declare dso_local i32 @gtk_list_store_new(i32, i32) #1

declare dso_local i32 @gtk_list_store_append(i32, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @gtk_tree_view_new_with_model(i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32* @gtk_tree_view_column_new(...) #1

declare dso_local i32 @gtk_tree_view_column_set_resizable(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_set_title(i32*, i8*) #1

declare dso_local i32 @gtk_tree_view_append_column(i32, i32*) #1

declare dso_local i32 @GTK_TREE_VIEW(i32) #1

declare dso_local i32* @gtk_cell_renderer_progress_new(...) #1

declare dso_local i32 @gtk_tree_view_column_pack_start(i32*, i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_set_cell_data_func(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @gtk_widget_show_all(i32) #1

declare dso_local i32 @gtk_main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
