; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_draw_text_pango.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_draw_text_pango.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@conn = common dso_local global i32 0, align 4
@savedFont = common dso_local global %struct.TYPE_4__* null, align 8
@PANGO_SCALE = common dso_local global i32 0, align 4
@PANGO_WRAP_CHAR = common dso_local global i32 0, align 4
@PANGO_ELLIPSIZE_END = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_SOURCE = common dso_local global i32 0, align 4
@pango_font_red = common dso_local global i32 0, align 4
@pango_font_green = common dso_local global i32 0, align 4
@pango_font_blue = common dso_local global i32 0, align 4
@pango_font_alpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32*, i32, i32, i32, i32)* @draw_text_pango to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_text_pango(i8* %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* @conn, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %15, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @savedFont, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = call i32* @cairo_xcb_surface_create(i32 %22, i32 %23, i32* %24, i32 %27, i32 %32)
  store i32* %33, i32** %17, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = call i32* @cairo_create(i32* %34)
  store i32* %35, i32** %18, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i32* @create_layout_with_dpi(i32* %36)
  store i32* %37, i32** %19, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @savedFont, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pango_layout_set_font_description(i32* %38, i32 %42)
  %44 = load i32*, i32** %19, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @PANGO_SCALE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @pango_layout_set_width(i32* %44, i32 %47)
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* @PANGO_WRAP_CHAR, align 4
  %51 = call i32 @pango_layout_set_wrap(i32* %49, i32 %50)
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* @PANGO_ELLIPSIZE_END, align 4
  %54 = call i32 @pango_layout_set_ellipsize(i32* %52, i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %8
  %58 = load i32*, i32** %19, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @pango_layout_set_markup(i32* %58, i8* %59, i64 %60)
  br label %67

62:                                               ; preds = %8
  %63 = load i32*, i32** %19, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @pango_layout_set_text(i32* %63, i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32*, i32** %18, align 8
  %69 = load i32, i32* @CAIRO_OPERATOR_SOURCE, align 4
  %70 = call i32 @cairo_set_operator(i32* %68, i32 %69)
  %71 = load i32*, i32** %18, align 8
  %72 = load i32, i32* @pango_font_red, align 4
  %73 = load i32, i32* @pango_font_green, align 4
  %74 = load i32, i32* @pango_font_blue, align 4
  %75 = load i32, i32* @pango_font_alpha, align 4
  %76 = call i32 @cairo_set_source_rgba(i32* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %18, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = call i32 @pango_cairo_update_layout(i32* %77, i32* %78)
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @pango_layout_get_pixel_size(i32* %80, i32* null, i32* %20)
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @savedFont, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %21, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %21, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 @cairo_move_to(i32* %88, i32 %89, i32 %92)
  %94 = load i32*, i32** %18, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = call i32 @pango_cairo_show_layout(i32* %94, i32* %95)
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @g_object_unref(i32* %97)
  %99 = load i32*, i32** %18, align 8
  %100 = call i32 @cairo_destroy(i32* %99)
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @cairo_surface_destroy(i32* %101)
  ret void
}

declare dso_local i32* @cairo_xcb_surface_create(i32, i32, i32*, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32* @create_layout_with_dpi(i32*) #1

declare dso_local i32 @pango_layout_set_font_description(i32*, i32) #1

declare dso_local i32 @pango_layout_set_width(i32*, i32) #1

declare dso_local i32 @pango_layout_set_wrap(i32*, i32) #1

declare dso_local i32 @pango_layout_set_ellipsize(i32*, i32) #1

declare dso_local i32 @pango_layout_set_markup(i32*, i8*, i64) #1

declare dso_local i32 @pango_layout_set_text(i32*, i8*, i64) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_set_source_rgba(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pango_cairo_update_layout(i32*, i32*) #1

declare dso_local i32 @pango_layout_get_pixel_size(i32*, i32*, i32*) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_cairo_show_layout(i32*, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
