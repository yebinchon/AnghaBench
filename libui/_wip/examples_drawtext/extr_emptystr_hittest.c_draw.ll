; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_emptystr_hittest.c_draw.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_emptystr_hittest.c_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@margins = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@caretLine = common dso_local global i32 0, align 4
@attrstr = common dso_local global i32 0, align 4
@caretPos = common dso_local global i32 0, align 4
@showLineBounds = common dso_local global i32 0, align 4
@fillBrushes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @uiDrawSave(i32 %11)
  %13 = load i32, i32* @uiDrawFillModeWinding, align 4
  %14 = call i32* @uiDrawNewPath(i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @margins, align 4
  %17 = load i32, i32* @margins, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @margins, align 4
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @margins, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %27, %30
  %32 = call i32 @uiDrawPathAddRectangle(i32* %15, i32 %16, i32 %17, i64 %24, i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @uiDrawPathEnd(i32* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @uiDrawClip(i32 %37, i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @uiDrawFreePath(i32* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @margins, align 4
  %46 = mul nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %44, %47
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @params, i32 0, i32 0), align 8
  %49 = call i32* @uiDrawNewTextLayout(%struct.TYPE_9__* @params)
  store i32* %49, i32** %4, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @margins, align 4
  %55 = load i32, i32* @margins, align 4
  %56 = call i32 @uiDrawText(i32 %52, i32* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @uiDrawRestore(i32 %59)
  %61 = load i32, i32* @caretLine, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %1
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @uiDrawTextLayoutNumLines(i32* %64)
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* @caretLine, align 4
  %67 = load i32, i32* @attrstr, align 4
  %68 = call i32 @uiAttributedStringLen(i32 %67)
  store i32 %68, i32* @caretPos, align 4
  br label %69

69:                                               ; preds = %63, %1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @margins, align 4
  %74 = load i32, i32* @margins, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @caretPos, align 4
  %77 = call i32 @uiDrawCaret(i32 %72, i32 %73, i32 %74, i32* %75, i32 %76, i32* @caretLine)
  %78 = load i32, i32* @showLineBounds, align 4
  %79 = call i64 @uiCheckboxChecked(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @uiDrawTextLayoutNumLines(i32* %82)
  store i32 %83, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %124, %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %127

88:                                               ; preds = %84
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @uiDrawTextLayoutLineGetMetrics(i32* %89, i32 %90, %struct.TYPE_7__* %5)
  %92 = load i32, i32* @uiDrawFillModeWinding, align 4
  %93 = call i32* @uiDrawNewPath(i32 %92)
  store i32* %93, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @margins, align 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %95, %97
  %99 = load i32, i32* @margins, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %99, %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @uiDrawPathAddRectangle(i32* %94, i32 %98, i32 %102, i64 %104, i64 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @uiDrawPathEnd(i32* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i64, i64* @fillBrushes, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = call i32 @uiDrawFill(i32 %112, i32* %113, i64 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @uiDrawFreePath(i32* %119)
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  %123 = srem i32 %122, 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %88
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %84

127:                                              ; preds = %84
  br label %128

128:                                              ; preds = %127, %69
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @uiDrawFreeTextLayout(i32* %129)
  ret void
}

declare dso_local i32 @uiDrawSave(i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawClip(i32, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32* @uiDrawNewTextLayout(%struct.TYPE_9__*) #1

declare dso_local i32 @uiDrawText(i32, i32*, i32, i32) #1

declare dso_local i32 @uiDrawRestore(i32) #1

declare dso_local i32 @uiDrawTextLayoutNumLines(i32*) #1

declare dso_local i32 @uiAttributedStringLen(i32) #1

declare dso_local i32 @uiDrawCaret(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @uiCheckboxChecked(i32) #1

declare dso_local i32 @uiDrawTextLayoutLineGetMetrics(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i64) #1

declare dso_local i32 @uiDrawFreeTextLayout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
