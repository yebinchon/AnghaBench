; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_attributes.c_draw.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_attributes.c_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@margins = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@showLineBounds = common dso_local global i32 0, align 4
@fillBrushes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @uiDrawSave(i32 %14)
  %16 = load i32, i32* @uiDrawFillModeWinding, align 4
  %17 = call i32* @uiDrawNewPath(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @margins, align 4
  %20 = load i32, i32* @margins, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @margins, align 4
  %25 = mul nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @margins, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %30, %33
  %35 = call i32 @uiDrawPathAddRectangle(i32* %18, i32 %19, i32 %20, i64 %27, i64 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @uiDrawPathEnd(i32* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @uiDrawClip(i32 %40, i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @uiDrawFreePath(i32* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @margins, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @params, i32 0, i32 0), align 8
  %52 = call i32* @uiDrawNewTextLayout(%struct.TYPE_11__* @params)
  store i32* %52, i32** %4, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @margins, align 4
  %58 = load i32, i32* @margins, align 4
  %59 = call i32 @uiDrawText(i32 %55, i32* %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @uiDrawRestore(i32 %62)
  %64 = load i32, i32* @showLineBounds, align 4
  %65 = call i64 @uiCheckboxChecked(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %114

67:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @uiDrawTextLayoutNumLines(i32* %68)
  store i32 %69, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %110, %67
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %113

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @uiDrawTextLayoutLineGetMetrics(i32* %75, i32 %76, %struct.TYPE_8__* %6)
  %78 = load i32, i32* @uiDrawFillModeWinding, align 4
  %79 = call i32* @uiDrawNewPath(i32 %78)
  store i32* %79, i32** %3, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @margins, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %81, %83
  %85 = load i32, i32* @margins, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %85, %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @uiDrawPathAddRectangle(i32* %80, i32 %84, i32 %88, i64 %90, i64 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @uiDrawPathEnd(i32* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* @fillBrushes, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @uiDrawFill(i32 %98, i32* %99, i64 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @uiDrawFreePath(i32* %105)
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  %109 = srem i32 %108, 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %74
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %70

113:                                              ; preds = %70
  br label %114

114:                                              ; preds = %113, %1
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @uiDrawFreeTextLayout(i32* %115)
  ret void
}

declare dso_local i32 @uiDrawSave(i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawClip(i32, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32* @uiDrawNewTextLayout(%struct.TYPE_11__*) #1

declare dso_local i32 @uiDrawText(i32, i32*, i32, i32) #1

declare dso_local i32 @uiDrawRestore(i32) #1

declare dso_local i64 @uiCheckboxChecked(i32) #1

declare dso_local i32 @uiDrawTextLayoutNumLines(i32*) #1

declare dso_local i32 @uiDrawTextLayoutLineGetMetrics(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i64) #1

declare dso_local i32 @uiDrawFreeTextLayout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
