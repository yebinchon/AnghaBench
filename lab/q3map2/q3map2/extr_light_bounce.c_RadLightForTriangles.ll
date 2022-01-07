; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadLightForTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadLightForTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32** }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32** }

@bspDrawSurfaces = common dso_local global %struct.TYPE_10__* null, align 8
@surfaceInfos = common dso_local global i32* null, align 8
@bspDrawIndexes = common dso_local global i32* null, align 8
@yDrawVerts = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RadLightForTriangles(i32 %0, i32 %1, i32* %2, i32* %3, float %4, float %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32* %6, i32** %14, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspDrawSurfaces, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %25
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %19, align 8
  %27 = load i32*, i32** @surfaceInfos, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 3, i32* %31, align 8
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %144, %7
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %147

38:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %131, %38
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %134

42:                                               ; preds = %39
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @bspDrawIndexes, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %45, %56
  store i32 %57, i32* %18, align 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yDrawVerts, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %65
  %67 = call i32 @memcpy(%struct.TYPE_12__* %62, %struct.TYPE_11__* %66, i32 4)
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %127, %42
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %130

72:                                               ; preds = %68
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @bspDrawIndexes, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %77, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %76, %87
  %89 = call float* @RAD_VERTEX_LUXEL(i32 %73, i32 %88)
  store float* %89, float** %21, align 8
  %90 = load float*, float** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @VectorCopy(float* %90, i32* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yDrawVerts, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  store i32 %114, i32* %126, align 4
  br label %127

127:                                              ; preds = %72
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %68

130:                                              ; preds = %68
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %39

134:                                              ; preds = %39
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load float, float* %12, align 4
  %140 = load float, float* %13, align 4
  %141 = load i32, i32* @qtrue, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = call i32 @RadSubdivideDiffuseLight(i32 %135, %struct.TYPE_10__* %136, i32* %137, i32* %138, float %139, float %140, i32 %141, %struct.TYPE_9__* %22, i32* %142)
  br label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 3
  store i32 %146, i32* %15, align 4
  br label %32

147:                                              ; preds = %32
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local float* @RAD_VERTEX_LUXEL(i32, i32) #1

declare dso_local i32 @VectorCopy(float*, i32*) #1

declare dso_local i32 @RadSubdivideDiffuseLight(i32, %struct.TYPE_10__*, i32*, i32*, float, float, i32, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
