; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_cellrendererbutton.c_setButtonStyle.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_cellrendererbutton.c_setButtonStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"button\00", align 1
@GTK_TYPE_BUTTON = common dso_local global i32 0, align 4
@GTK_STYLE_CLASS_BUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @setButtonStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setButtonStyle(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @gtk_widget_get_style_context(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = call i32* (...) @gtk_style_context_new()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @gtk_style_context_get_path(i32* %9)
  %11 = call i32* @gtk_widget_path_copy(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @G_TYPE_NONE, align 4
  %14 = call i32 @gtk_widget_path_append_type(i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @uiprivFUTURE_gtk_widget_path_iter_set_object_name(i32* %15, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @GTK_TYPE_BUTTON, align 4
  %21 = call i32 @gtk_widget_path_iter_set_object_type(i32* %19, i32 -1, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @gtk_style_context_set_path(i32* %23, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @gtk_style_context_set_parent(i32* %26, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @gtk_style_context_get_state(i32* %30)
  %32 = call i32 @gtk_style_context_set_state(i32* %29, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @gtk_widget_path_unref(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @GTK_STYLE_CLASS_BUTTON, align 4
  %37 = call i32 @gtk_style_context_add_class(i32* %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32* @gtk_widget_get_style_context(i32*) #1

declare dso_local i32* @gtk_style_context_new(...) #1

declare dso_local i32* @gtk_widget_path_copy(i32) #1

declare dso_local i32 @gtk_style_context_get_path(i32*) #1

declare dso_local i32 @gtk_widget_path_append_type(i32*, i32) #1

declare dso_local i32 @uiprivFUTURE_gtk_widget_path_iter_set_object_name(i32*, i32, i8*) #1

declare dso_local i32 @gtk_widget_path_iter_set_object_type(i32*, i32, i32) #1

declare dso_local i32 @gtk_style_context_set_path(i32*, i32*) #1

declare dso_local i32 @gtk_style_context_set_parent(i32*, i32*) #1

declare dso_local i32 @gtk_style_context_set_state(i32*, i32) #1

declare dso_local i32 @gtk_style_context_get_state(i32*) #1

declare dso_local i32 @gtk_widget_path_unref(i32*) #1

declare dso_local i32 @gtk_style_context_add_class(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
