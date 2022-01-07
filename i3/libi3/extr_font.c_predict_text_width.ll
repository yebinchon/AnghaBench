; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_predict_text_width.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_predict_text_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@savedFont = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @predict_text_width(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @savedFont, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @savedFont, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %26 [
    i32 130, label %11
    i32 128, label %12
    i32 129, label %18
  ]

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @i3string_as_ucs2(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @i3string_get_num_glyphs(i32* %15)
  %17 = call i32 @predict_text_width_xcb(i32 %14, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @i3string_as_utf8(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @i3string_get_num_bytes(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @i3string_is_markup(i32* %23)
  %25 = call i32 @predict_text_width_pango(i32 %20, i32 %22, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  %27 = call i32 @assert(i32 0)
  br label %28

28:                                               ; preds = %26, %18, %12, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @predict_text_width_xcb(i32, i32) #1

declare dso_local i32 @i3string_as_ucs2(i32*) #1

declare dso_local i32 @i3string_get_num_glyphs(i32*) #1

declare dso_local i32 @predict_text_width_pango(i32, i32, i32) #1

declare dso_local i32 @i3string_as_utf8(i32*) #1

declare dso_local i32 @i3string_get_num_bytes(i32*) #1

declare dso_local i32 @i3string_is_markup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
