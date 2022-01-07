; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitDrawVerts.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitDrawVerts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float }
%struct.TYPE_14__ = type { i32, i32 }

@numBSPDrawVerts = common dso_local global i32 0, align 4
@MAX_MAP_DRAW_VERTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_VERTS\00", align 1
@bspDrawVerts = common dso_local global %struct.TYPE_13__* null, align 8
@numBSPModels = common dso_local global i64 0, align 8
@bspModels = common dso_local global %struct.TYPE_15__* null, align 8
@debugSurfaces = common dso_local global i64 0, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@debugColors = common dso_local global i32* null, align 8
@mapDrawSurfs = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitDrawVerts(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 4
  store float %15, float* %9, align 4
  %16 = load i32, i32* @numBSPDrawVerts, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %115, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %118

30:                                               ; preds = %24
  %31 = load i32, i32* @numBSPDrawVerts, align 4
  %32 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i32 (...) @IncDrawVerts()
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspDrawVerts, align 8
  %39 = load i32, i32* @numBSPDrawVerts, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %41
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %7, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @memcpy(%struct.TYPE_13__* %43, i32* %49, i32 16)
  %51 = load float, float* %9, align 4
  %52 = fcmp une float %51, 0.000000e+00
  br i1 %52, label %53, label %65

53:                                               ; preds = %36
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load float, float* %9, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @VectorMA(i32 %56, float %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %53, %36
  %66 = load i64, i64* @numBSPModels, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspModels, align 8
  %73 = load i64, i64* @numBSPModels, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspModels, align 8
  %78 = load i64, i64* @numBSPModels, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @AddPointToBounds(i32 %71, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %68, %65
  %84 = load i64, i64* @debugSurfaces, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i32*, i32** @debugColors, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mapDrawSurfs, align 8
  %95 = ptrtoint %struct.TYPE_12__* %93 to i64
  %96 = ptrtoint %struct.TYPE_12__* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 24
  %99 = srem i64 %98, 12
  %100 = getelementptr inbounds i32, i32* %92, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @VectorCopy(i32 %101, i32 %108)
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %87

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %24

118:                                              ; preds = %24
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @IncDrawVerts(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
