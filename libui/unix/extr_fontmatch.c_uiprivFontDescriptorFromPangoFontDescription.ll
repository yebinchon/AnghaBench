; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_fontmatch.c_uiprivFontDescriptorFromPangoFontDescription.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_fontmatch.c_uiprivFontDescriptorFromPangoFontDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@uiTextItalicNormal = common dso_local global i64 0, align 8
@uiTextItalicItalic = common dso_local global i64 0, align 8
@pangoItalics = common dso_local global i64* null, align 8
@uiTextStretchUltraCondensed = common dso_local global i64 0, align 8
@uiTextStretchUltraExpanded = common dso_local global i64 0, align 8
@pangoStretches = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivFontDescriptorFromPangoFontDescription(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @pango_font_description_get_family(i32* %7)
  %9 = call i32 @uiUnixStrdupText(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @pango_font_description_get_style(i32* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pango_font_description_get_weight(i32* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @pango_font_description_get_stretch(i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @pango_font_description_get_size(i32* %20)
  %22 = call i32 @pango_units_to_double(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @uiTextItalicNormal, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %45, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @uiTextItalicItalic, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i64*, i64** @pangoItalics, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %50

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %28

50:                                               ; preds = %43, %28
  %51 = load i64, i64* @uiTextStretchUltraCondensed, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %71, %50
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @uiTextStretchUltraExpanded, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load i64*, i64** @pangoStretches, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %76

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %54

76:                                               ; preds = %69, %54
  ret void
}

declare dso_local i32 @uiUnixStrdupText(i32) #1

declare dso_local i32 @pango_font_description_get_family(i32*) #1

declare dso_local i64 @pango_font_description_get_style(i32*) #1

declare dso_local i32 @pango_font_description_get_weight(i32*) #1

declare dso_local i64 @pango_font_description_get_stretch(i32*) #1

declare dso_local i32 @pango_units_to_double(i32) #1

declare dso_local i32 @pango_font_description_get_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
