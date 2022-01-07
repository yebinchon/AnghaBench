; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_uiDrawTextFontGetMetrics.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_uiDrawTextFontGetMetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawTextFontGetMetrics(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @pango_font_get_metrics(i32 %8, i32* null)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @pango_font_metrics_get_ascent(i32* %10)
  %12 = call i8* @pangoToCairo(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @pango_font_metrics_get_descent(i32* %15)
  %17 = call i8* @pangoToCairo(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @pango_font_metrics_get_underline_position(i32* %22)
  %24 = call i8* @pangoToCairo(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @pango_font_metrics_get_underline_thickness(i32* %27)
  %29 = call i8* @pangoToCairo(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @pango_font_metrics_unref(i32* %32)
  ret void
}

declare dso_local i32* @pango_font_get_metrics(i32, i32*) #1

declare dso_local i8* @pangoToCairo(i32) #1

declare dso_local i32 @pango_font_metrics_get_ascent(i32*) #1

declare dso_local i32 @pango_font_metrics_get_descent(i32*) #1

declare dso_local i32 @pango_font_metrics_get_underline_position(i32*) #1

declare dso_local i32 @pango_font_metrics_get_underline_thickness(i32*) #1

declare dso_local i32 @pango_font_metrics_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
