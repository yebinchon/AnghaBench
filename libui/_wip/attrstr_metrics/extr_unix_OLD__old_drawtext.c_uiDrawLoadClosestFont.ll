; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_uiDrawLoadClosestFont.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_uiDrawLoadClosestFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32 }

@PANGO_SCALE = common dso_local global i32 0, align 4
@pangoWeights = common dso_local global i32* null, align 8
@pangoItalics = common dso_local global i32* null, align 8
@pangoStretches = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uiDrawLoadClosestFont(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32* (...) @pango_font_description_new()
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pango_font_description_set_family(i32* %6, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PANGO_SCALE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @pango_font_description_set_size(i32* %11, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** @pangoWeights, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pango_font_description_set_weight(i32* %18, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** @pangoItalics, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pango_font_description_set_style(i32* %26, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** @pangoStretches, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pango_font_description_set_stretch(i32* %34, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @pangoDescToPangoFont(i32* %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @pango_font_description_free(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32* @mkTextFont(i32* %46, i32 %47)
  ret i32* %48
}

declare dso_local i32* @pango_font_description_new(...) #1

declare dso_local i32 @pango_font_description_set_family(i32*, i32) #1

declare dso_local i32 @pango_font_description_set_size(i32*, i32) #1

declare dso_local i32 @pango_font_description_set_weight(i32*, i32) #1

declare dso_local i32 @pango_font_description_set_style(i32*, i32) #1

declare dso_local i32 @pango_font_description_set_stretch(i32*, i32) #1

declare dso_local i32* @pangoDescToPangoFont(i32*) #1

declare dso_local i32 @pango_font_description_free(i32*) #1

declare dso_local i32* @mkTextFont(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
