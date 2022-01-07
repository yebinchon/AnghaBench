; ModuleID = '/home/carl/AnghaBench/htop/extr_ColorsPanel.c_ColorsPanel_eventHandler.c'
source_filename = "/home/carl/AnghaBench/htop/extr_ColorsPanel.c_ColorsPanel_eventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@IGNORED = common dso_local global i64 0, align 8
@ColorSchemeNames = common dso_local global i32** null, align 8
@HANDLED = common dso_local global i64 0, align 8
@CRT_colors = common dso_local global i32* null, align 8
@PANEL_HEADER_FOCUS = common dso_local global i64 0, align 8
@PANEL_HEADER_UNFOCUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32)* @ColorsPanel_eventHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ColorsPanel_eventHandler(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = bitcast %struct.TYPE_11__* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load i64, i64* @IGNORED, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @Panel_getSelectedIndex(%struct.TYPE_11__* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %46 [
    i32 10, label %17
    i32 13, label %17
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 32, label %17
  ]

17:                                               ; preds = %2, %2, %2, %2, %2, %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32**, i32*** @ColorSchemeNames, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @Panel_get(%struct.TYPE_11__* %26, i32 %27)
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @CheckItem_set(i32* %29, i32 0)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @Panel_get(%struct.TYPE_11__* %35, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @CheckItem_set(i32* %38, i32 1)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i64, i64* @HANDLED, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %34, %2
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @HANDLED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @CRT_setColors(i32 %60)
  %62 = call i32 (...) @clear()
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @Vector_get(i32 %67, i32 0)
  %69 = inttoptr i64 %68 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %10, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = call i32 @Header_draw(%struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32*, i32** @CRT_colors, align 8
  %75 = load i64, i64* @PANEL_HEADER_FOCUS, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RichString_setAttr(i32* %73, i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32*, i32** @CRT_colors, align 8
  %82 = load i64, i64* @PANEL_HEADER_UNFOCUS, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @RichString_setAttr(i32* %80, i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ScreenManager_resize(%struct.TYPE_14__* %88, i32 %93, i32 %96, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %50, %46
  %109 = load i64, i64* %6, align 8
  ret i64 %109
}

declare dso_local i32 @Panel_getSelectedIndex(%struct.TYPE_11__*) #1

declare dso_local i32 @CheckItem_set(i32*, i32) #1

declare dso_local i64 @Panel_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @CRT_setColors(i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i64 @Vector_get(i32, i32) #1

declare dso_local i32 @Header_draw(%struct.TYPE_12__*) #1

declare dso_local i32 @RichString_setAttr(i32*, i32) #1

declare dso_local i32 @ScreenManager_resize(%struct.TYPE_14__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
