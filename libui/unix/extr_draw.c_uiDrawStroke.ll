; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_draw.c_uiDrawStroke.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_draw.c_uiDrawStroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CAIRO_LINE_CAP_BUTT = common dso_local global i32 0, align 4
@CAIRO_LINE_CAP_ROUND = common dso_local global i32 0, align 4
@CAIRO_LINE_CAP_SQUARE = common dso_local global i32 0, align 4
@CAIRO_LINE_JOIN_MITER = common dso_local global i32 0, align 4
@CAIRO_LINE_JOIN_ROUND = common dso_local global i32 0, align 4
@CAIRO_LINE_JOIN_BEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawStroke(%struct.TYPE_6__* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @uiprivRunPath(i32* %10, i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @mkbrush(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @cairo_set_source(i32 %19, i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %43 [
    i32 133, label %25
    i32 132, label %31
    i32 131, label %37
  ]

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAIRO_LINE_CAP_BUTT, align 4
  %30 = call i32 @cairo_set_line_cap(i32 %28, i32 %29)
  br label %43

31:                                               ; preds = %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CAIRO_LINE_CAP_ROUND, align 4
  %36 = call i32 @cairo_set_line_cap(i32 %34, i32 %35)
  br label %43

37:                                               ; preds = %4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CAIRO_LINE_CAP_SQUARE, align 4
  %42 = call i32 @cairo_set_line_cap(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %4, %37, %31, %25
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %72 [
    i32 129, label %47
    i32 128, label %60
    i32 130, label %66
  ]

47:                                               ; preds = %43
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CAIRO_LINE_JOIN_MITER, align 4
  %52 = call i32 @cairo_set_line_join(i32 %50, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cairo_set_miter_limit(i32 %55, i32 %58)
  br label %72

60:                                               ; preds = %43
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAIRO_LINE_JOIN_ROUND, align 4
  %65 = call i32 @cairo_set_line_join(i32 %63, i32 %64)
  br label %72

66:                                               ; preds = %43
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAIRO_LINE_JOIN_BEVEL, align 4
  %71 = call i32 @cairo_set_line_join(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %43, %66, %60, %47
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cairo_set_line_width(i32 %75, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @cairo_set_dash(i32 %82, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cairo_stroke(i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @cairo_pattern_destroy(i32* %97)
  ret void
}

declare dso_local i32 @uiprivRunPath(i32*, i32) #1

declare dso_local i32* @mkbrush(i32*) #1

declare dso_local i32 @cairo_set_source(i32, i32*) #1

declare dso_local i32 @cairo_set_line_cap(i32, i32) #1

declare dso_local i32 @cairo_set_line_join(i32, i32) #1

declare dso_local i32 @cairo_set_miter_limit(i32, i32) #1

declare dso_local i32 @cairo_set_line_width(i32, i32) #1

declare dso_local i32 @cairo_set_dash(i32, i32, i32, i32) #1

declare dso_local i32 @cairo_stroke(i32) #1

declare dso_local i32 @cairo_pattern_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
