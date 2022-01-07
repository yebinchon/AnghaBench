; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadLight.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadLight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { float, i32, float, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@bspDrawSurfaces = common dso_local global %struct.TYPE_11__* null, align 8
@surfaceInfos = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"nodraw\00", align 1
@C_SKY = common dso_local global i32 0, align 4
@bspShaders = common dso_local global %struct.TYPE_12__* null, align 8
@diffuseSubdivide = common dso_local global float 0.000000e+00, align 4
@master_mutex = common dso_local global i32 0, align 4
@numDiffuseSurfaces = common dso_local global i32 0, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i64 0, align 8
@LS_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RadLight(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bspDrawSurfaces, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 %16
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @surfaceInfos, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %12, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load float, float* %29, align 8
  store float %30, float* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %31 = call i32 @ApplySurfaceParm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %32 = load float, float* %4, align 4
  %33 = fcmp ole float %32, 0.000000e+00
  br i1 %33, label %75, label %34

34:                                               ; preds = %1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @C_SKY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bspShaders, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bspShaders, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %57
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %57, %46, %41, %34, %1
  br label %142

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load float, float* %78, align 8
  %80 = fcmp une float %79, 0.000000e+00
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load float, float* %83, align 8
  store float %84, float* %5, align 4
  br label %87

85:                                               ; preds = %76
  %86 = load float, float* @diffuseSubdivide, align 4
  store float %86, float* %5, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = call i32 @pthread_mutex_lock(i32* @master_mutex)
  %89 = load i32, i32* @numDiffuseSurfaces, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @numDiffuseSurfaces, align 4
  %91 = call i32 @pthread_mutex_unlock(i32* @master_mutex)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %139, %87
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %142

96:                                               ; preds = %92
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @LS_NONE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %96
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LS_UNUSED, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %106
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %136 [
    i32 129, label %120
    i32 128, label %120
    i32 130, label %128
  ]

120:                                              ; preds = %116, %116
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %125 = load float, float* %4, align 4
  %126 = load float, float* %5, align 4
  %127 = call i32 @RadLightForTriangles(i32 %121, i32 %122, i32* %123, %struct.TYPE_10__* %124, float %125, float %126, i32* %13)
  br label %137

128:                                              ; preds = %116
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %133 = load float, float* %4, align 4
  %134 = load float, float* %5, align 4
  %135 = call i32 @RadLightForPatch(i32 %129, i32 %130, i32* %131, %struct.TYPE_10__* %132, float %133, float %134, i32* %13)
  br label %137

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136, %128, %120
  br label %138

138:                                              ; preds = %137, %106, %96
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %92

142:                                              ; preds = %75, %92
  ret void
}

declare dso_local i32 @ApplySurfaceParm(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @RadLightForTriangles(i32, i32, i32*, %struct.TYPE_10__*, float, float, i32*) #1

declare dso_local i32 @RadLightForPatch(i32, i32, i32*, %struct.TYPE_10__*, float, float, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
