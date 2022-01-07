; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapQuad.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapQuad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i32 }

@qfalse = common dso_local global i64 0, align 8
@QUAD_PLANAR_EPSILON = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__**)* @MapQuad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MapQuad(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  %17 = icmp ne float* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load float*, float** %20, align 8
  %22 = load float*, float** %9, align 8
  %23 = call i32 @VectorCopy(float* %21, float* %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 3
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %9, align 8
  %30 = getelementptr inbounds float, float* %29, i64 3
  store float %28, float* %30, align 4
  br label %54

31:                                               ; preds = %3
  %32 = load float*, float** %9, align 8
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %33, i64 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %38, i64 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %43, i64 2
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @PlaneFromPoints(float* %32, i32 %37, i32 %42, i32 %47)
  %49 = load i64, i64* @qfalse, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i64, i64* @qfalse, align 8
  store i64 %52, i64* %4, align 8
  br label %134

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %18
  %55 = load float*, float** %9, align 8
  %56 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %56, i64 3
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call float @DotProduct(float* %55, i32 %60)
  %62 = load float*, float** %9, align 8
  %63 = getelementptr inbounds float, float* %62, i64 3
  %64 = load float, float* %63, align 4
  %65 = fsub float %61, %64
  store float %65, float* %8, align 4
  %66 = load float, float* %8, align 4
  %67 = call i64 @fabs(float %66)
  %68 = load i64, i64* @QUAD_PLANAR_EPSILON, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i64, i64* @qfalse, align 8
  store i64 %71, i64* %4, align 8
  br label %134

72:                                               ; preds = %54
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %83 = call i64 @CalcTangentVectors(i32 4, %struct.TYPE_18__** %80, i32* %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32* %86, i32** %10, align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32* %87, i32** %11, align 8
  br label %89

88:                                               ; preds = %79, %72
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  br label %89

89:                                               ; preds = %88, %85
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %92, i64 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = load float*, float** %9, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %90, %struct.TYPE_16__* %91, %struct.TYPE_18__* %94, float* %95, i32 1, i32* %96, i32* %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %101, i64 1
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = load float*, float** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %99, %struct.TYPE_16__* %100, %struct.TYPE_18__* %103, float* %104, i32 1, i32* %105, i32* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %110, i64 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load float*, float** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %108, %struct.TYPE_16__* %109, %struct.TYPE_18__* %112, float* %113, i32 1, i32* %114, i32* %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %119, i64 3
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = load float*, float** %9, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %117, %struct.TYPE_16__* %118, %struct.TYPE_18__* %121, float* %122, i32 1, i32* %123, i32* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %129 = load float*, float** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @MapQuad_r(%struct.TYPE_17__* %126, %struct.TYPE_16__* %127, %struct.TYPE_18__** %128, float* %129, i32* %130, i32* %131)
  %133 = load i64, i64* @qtrue, align 8
  store i64 %133, i64* %4, align 8
  br label %134

134:                                              ; preds = %89, %70, %51
  %135 = load i64, i64* %4, align 8
  ret i64 %135
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i64 @PlaneFromPoints(float*, i32, i32, i32) #1

declare dso_local float @DotProduct(float*, i32) #1

declare dso_local i64 @fabs(float) #1

declare dso_local i64 @CalcTangentVectors(i32, %struct.TYPE_18__**, i32*, i32*) #1

declare dso_local i32 @MapSingleLuxel(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__*, float*, i32, i32*, i32*) #1

declare dso_local i32 @MapQuad_r(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__**, float*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
