; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_cellrendererbutton.c_cellRendererButton_class_init.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_cellrendererbutton.c_cellRendererButton_class_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@cellRendererButton_dispose = common dso_local global i32 0, align 4
@cellRendererButton_finalize = common dso_local global i32 0, align 4
@cellRendererButton_set_property = common dso_local global i32 0, align 4
@cellRendererButton_get_property = common dso_local global i32 0, align 4
@cellRendererButton_get_request_mode = common dso_local global i32 0, align 4
@cellRendererButton_get_preferred_width = common dso_local global i32 0, align 4
@cellRendererButton_get_preferred_height_for_width = common dso_local global i32 0, align 4
@cellRendererButton_get_preferred_height = common dso_local global i32 0, align 4
@cellRendererButton_get_aligned_area = common dso_local global i32 0, align 4
@cellRendererButton_render = common dso_local global i32 0, align 4
@cellRendererButton_activate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Button text\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@G_PARAM_READWRITE = common dso_local global i32 0, align 4
@G_PARAM_CONSTRUCT = common dso_local global i32 0, align 4
@G_PARAM_STATIC_STRINGS = common dso_local global i32 0, align 4
@props = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@G_SIGNAL_RUN_LAST = common dso_local global i32 0, align 4
@G_TYPE_NONE = common dso_local global i32 0, align 4
@G_TYPE_STRING = common dso_local global i32 0, align 4
@clickedSignal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cellRendererButton_class_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cellRendererButton_class_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @cellRendererButton_dispose, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_4__* @G_OBJECT_CLASS(i32* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @cellRendererButton_finalize, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_4__* @G_OBJECT_CLASS(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @cellRendererButton_set_property, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call %struct.TYPE_4__* @G_OBJECT_CLASS(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @cellRendererButton_get_property, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_4__* @G_OBJECT_CLASS(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @cellRendererButton_get_request_mode, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @cellRendererButton_get_preferred_width, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @cellRendererButton_get_preferred_height_for_width, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @cellRendererButton_get_preferred_height, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @cellRendererButton_get_aligned_area, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @cellRendererButton_render, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @cellRendererButton_activate, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @G_PARAM_READWRITE, align 4
  %48 = load i32, i32* @G_PARAM_CONSTRUCT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @G_PARAM_STATIC_STRINGS, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** @props, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = call %struct.TYPE_4__* @G_OBJECT_CLASS(i32* %55)
  %57 = load i32*, i32** @props, align 8
  %58 = call i32 @g_object_class_install_properties(%struct.TYPE_4__* %56, i32 2, i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @G_TYPE_FROM_CLASS(i32* %59)
  %61 = load i32, i32* @G_SIGNAL_RUN_LAST, align 4
  %62 = load i32, i32* @G_TYPE_NONE, align 4
  %63 = load i32, i32* @G_TYPE_STRING, align 4
  %64 = call i32 @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %61, i32 0, i32* null, i32* null, i32* null, i32 %62, i32 1, i32 %63)
  store i32 %64, i32* @clickedSignal, align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @G_OBJECT_CLASS(i32*) #1

declare dso_local %struct.TYPE_5__* @GTK_CELL_RENDERER_CLASS(i32*) #1

declare dso_local i32 @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @g_object_class_install_properties(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @g_signal_new(i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @G_TYPE_FROM_CLASS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
