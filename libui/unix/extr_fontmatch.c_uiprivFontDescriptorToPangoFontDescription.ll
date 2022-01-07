; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_fontmatch.c_uiprivFontDescriptorToPangoFontDescription.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_fontmatch.c_uiprivFontDescriptorToPangoFontDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @uiprivFontDescriptorToPangoFontDescription(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32* (...) @pango_font_description_new()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pango_font_description_set_family(i32* %5, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pango_units_from_double(i32 %13)
  %15 = call i32 @pango_font_description_set_size(i32* %10, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @uiprivWeightToPangoWeight(i32 %19)
  %21 = call i32 @pango_font_description_set_weight(i32* %16, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @uiprivItalicToPangoStyle(i32 %25)
  %27 = call i32 @pango_font_description_set_style(i32* %22, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @uiprivStretchToPangoStretch(i32 %31)
  %33 = call i32 @pango_font_description_set_stretch(i32* %28, i32 %32)
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32* @pango_font_description_new(...) #1

declare dso_local i32 @pango_font_description_set_family(i32*, i32) #1

declare dso_local i32 @pango_font_description_set_size(i32*, i32) #1

declare dso_local i32 @pango_units_from_double(i32) #1

declare dso_local i32 @pango_font_description_set_weight(i32*, i32) #1

declare dso_local i32 @uiprivWeightToPangoWeight(i32) #1

declare dso_local i32 @pango_font_description_set_style(i32*, i32) #1

declare dso_local i32 @uiprivItalicToPangoStyle(i32) #1

declare dso_local i32 @pango_font_description_set_stretch(i32*, i32) #1

declare dso_local i32 @uiprivStretchToPangoStretch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
