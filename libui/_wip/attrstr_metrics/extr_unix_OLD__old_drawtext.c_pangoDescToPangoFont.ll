; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_pangoDescToPangoFont.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_pangoDescToPangoFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"[libui] no match in pangoDescToPangoFont(); report to andlabs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pangoDescToPangoFont(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32* (...) @mkGenericPangoCairoContext()
  store i32* %5, i32** %4, align 8
  %6 = call i32 (...) @pango_cairo_font_map_get_default()
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @pango_font_map_load_font(i32 %6, i32* %7, i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @g_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @g_object_unref(i32* %15)
  %17 = load i32*, i32** %3, align 8
  ret i32* %17
}

declare dso_local i32* @mkGenericPangoCairoContext(...) #1

declare dso_local i32* @pango_font_map_load_font(i32, i32*, i32*) #1

declare dso_local i32 @pango_cairo_font_map_get_default(...) #1

declare dso_local i32 @g_error(i8*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
