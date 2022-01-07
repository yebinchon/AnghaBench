; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_load_pango_font.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_load_pango_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Could not open font %s with Pango, fallback to X font.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Using Pango font %s, size %d\0A\00", align 1
@PANGO_SCALE = common dso_local global i32 0, align 4
@root_screen = common dso_local global %struct.TYPE_8__* null, align 8
@root_visual_type = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@FONT_TYPE_PANGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @load_pango_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_pango_font(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @pango_font_description_from_string(i8* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @ELOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 0, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pango_font_description_get_family(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pango_font_description_get_size(i32 %32)
  %34 = load i32, i32* @PANGO_SCALE, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_screen, align 8
  %38 = call i32 @get_visualtype(%struct.TYPE_8__* %37)
  store i32 %38, i32* @root_visual_type, align 4
  %39 = load i32, i32* @conn, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_screen, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @root_visual_type, align 4
  %44 = call i32* @cairo_xcb_surface_create(i32 %39, i32 %42, i32 %43, i32 1, i32 1)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @cairo_create(i32* %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @create_layout_with_dpi(i32* %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pango_layout_set_font_description(i32* %49, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @pango_layout_get_pixel_size(i32* %55, i32* null, i32* %9)
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @g_object_unref(i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @cairo_destroy(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @cairo_surface_destroy(i32* %64)
  %66 = load i32, i32* @FONT_TYPE_PANGO, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %23, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @pango_font_description_from_string(i8*) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

declare dso_local i32 @LOG(i8*, i32, i32) #1

declare dso_local i32 @pango_font_description_get_family(i32) #1

declare dso_local i32 @pango_font_description_get_size(i32) #1

declare dso_local i32 @get_visualtype(%struct.TYPE_8__*) #1

declare dso_local i32* @cairo_xcb_surface_create(i32, i32, i32, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32* @create_layout_with_dpi(i32*) #1

declare dso_local i32 @pango_layout_set_font_description(i32*, i32) #1

declare dso_local i32 @pango_layout_get_pixel_size(i32*, i32*, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
