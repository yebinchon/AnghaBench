; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_ClusterForPointExt.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_ClusterForPointExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }

@bspLeafs = common dso_local global %struct.TYPE_9__* null, align 8
@bspLeafBrushes = common dso_local global i32* null, align 8
@maxOpaqueBrush = common dso_local global i32 0, align 4
@bspBrushes = common dso_local global %struct.TYPE_10__* null, align 8
@opaqueBrushes = common dso_local global i32* null, align 8
@qtrue = common dso_local global i64 0, align 8
@bspPlanes = common dso_local global %struct.TYPE_8__* null, align 8
@bspBrushSides = common dso_local global %struct.TYPE_11__* null, align 8
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClusterForPointExt(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PointInLeafNum(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %132

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspLeafs, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %26
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %15, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %132

34:                                               ; preds = %23
  %35 = load i32*, i32** @bspLeafBrushes, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32* %39, i32** %13, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %127, %34
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %130

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @maxOpaqueBrush, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %127

57:                                               ; preds = %47
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspBrushes, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %16, align 8
  %62 = load i32*, i32** @opaqueBrushes, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 7
  %70 = shl i32 1, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  br label %127

74:                                               ; preds = %57
  %75 = load i64, i64* @qtrue, align 8
  store i64 %75, i64* %12, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %117, %74
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i1 [ false, %76 ], [ %84, %82 ]
  br i1 %86, label %87, label %120

87:                                               ; preds = %85
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspPlanes, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bspBrushSides, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %98
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %17, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call float @DotProduct(i32 %100, i32 %103)
  store float %104, float* %11, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sitofp i64 %107 to float
  %109 = load float, float* %11, align 4
  %110 = fsub float %109, %108
  store float %110, float* %11, align 4
  %111 = load float, float* %11, align 4
  %112 = load float, float* %5, align 4
  %113 = fcmp ogt float %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %87
  %115 = load i64, i64* @qfalse, align 8
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %114, %87
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %76

120:                                              ; preds = %85
  %121 = load i64, i64* %12, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 -1, %124
  store i32 %125, i32* %3, align 4
  br label %132

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %73, %56
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %43

130:                                              ; preds = %43
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %123, %33, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @PointInLeafNum(i32) #1

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
