; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_map.c_ConvertModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_map.c_ConvertModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@numBSPPlanes = common dso_local global i32 0, align 4
@nummapplanes = common dso_local global i32 0, align 4
@bspPlanes = common dso_local global %struct.TYPE_15__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@buildBrush = common dso_local global %struct.TYPE_14__* null, align 8
@bspBrushes = common dso_local global i32* null, align 8
@bspDrawSurfaces = common dso_local global %struct.TYPE_12__* null, align 8
@MST_PATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32, i32)* @ConvertModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertModel(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @numBSPPlanes, align 4
  store i32 %13, i32* @nummapplanes, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %60, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @numBSPPlanes, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspPlanes, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @VectorCopy(i32 %24, i32 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspPlanes, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  store i32 %37, i32* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PlaneTypeForNormal(i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  store i32 %49, i32* %54, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %18
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %14

63:                                               ; preds = %14
  %64 = call %struct.TYPE_14__* @AllocBrush(i32 512)
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** @buildBrush, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buildBrush, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buildBrush, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buildBrush, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %69, align 8
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %91, %63
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32*, i32** @bspBrushes, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ConvertBrush(i32* %86, i32 %87, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buildBrush, align 8
  %96 = call i32 @free(%struct.TYPE_14__* %95)
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %125, %94
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %10, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bspDrawSurfaces, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %12, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MST_PATCH, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %103
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @ConvertPatch(i32* %119, i32 %120, %struct.TYPE_12__* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %103
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %97

128:                                              ; preds = %97
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @PlaneTypeForNormal(i32) #1

declare dso_local %struct.TYPE_14__* @AllocBrush(i32) #1

declare dso_local i32 @ConvertBrush(i32*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @ConvertPatch(i32*, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
