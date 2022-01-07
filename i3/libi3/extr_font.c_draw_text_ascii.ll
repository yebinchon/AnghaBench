; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_draw_text_ascii.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_draw_text_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@savedFont = common dso_local global %struct.TYPE_8__* null, align 8
@conn = common dso_local global i32 0, align 4
@root_visual_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_text_ascii(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @savedFont, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @savedFont, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %70 [
    i32 130, label %23
    i32 128, label %24
    i32 129, label %60
  ]

23:                                               ; preds = %6
  br label %70

24:                                               ; preds = %6
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ugt i64 %27, 255
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = call i32* @i3string_from_utf8(i8* %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @draw_text(i32* %32, i32 %33, i32 %34, i32* null, i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @i3string_free(i32* %39)
  br label %59

41:                                               ; preds = %24
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @savedFont, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %42, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @conn, align 4
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @xcb_image_text_8(i32 %51, i64 %52, i32 %53, i32 %54, i32 %55, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %41, %29
  br label %70

60:                                               ; preds = %6
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @root_visual_type, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @draw_text_pango(i8* %61, i64 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %23, %60, %6, %59
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @i3string_from_utf8(i8*) #1

declare dso_local i32 @draw_text(i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @i3string_free(i32*) #1

declare dso_local i32 @xcb_image_text_8(i32, i64, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @draw_text_pango(i8*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
