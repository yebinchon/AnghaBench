; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_ShaderForPointInLeaf.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_ShaderForPointInLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@bspLeafs = common dso_local global %struct.TYPE_13__* null, align 8
@bspLeafBrushes = common dso_local global i32* null, align 8
@bspBrushes = common dso_local global %struct.TYPE_14__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@bspBrushSides = common dso_local global %struct.TYPE_15__* null, align 8
@bspPlanes = common dso_local global %struct.TYPE_12__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@bspShaders = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShaderForPointInLeaf(i32 %0, i32 %1, float %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store float %2, float* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %14, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %156

34:                                               ; preds = %7
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bspLeafs, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %22, align 8
  %39 = load i32*, i32** @bspLeafBrushes, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %20, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %152, %34
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %155

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bspBrushes, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %58
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %23, align 8
  %60 = load i64, i64* @qtrue, align 8
  store i64 %60, i64* %19, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %119, %51
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* %19, align 8
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i1 [ false, %61 ], [ %69, %67 ]
  br i1 %71, label %72, label %122

72:                                               ; preds = %70
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspBrushSides, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %79
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %24, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bspPlanes, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %84
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %25, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call float @DotProduct(i32 %86, i32 %89)
  store float %90, float* %18, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to float
  %95 = load float, float* %18, align 4
  %96 = fsub float %95, %94
  store float %96, float* %18, align 4
  %97 = load float, float* %18, align 4
  %98 = load float, float* %11, align 4
  %99 = fcmp ogt float %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %72
  %101 = load i64, i64* @qfalse, align 8
  store i64 %101, i64* %19, align 8
  br label %118

102:                                              ; preds = %72
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bspShaders, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %106
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %26, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %27, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %27, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %28, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %28, align 4
  br label %118

118:                                              ; preds = %102, %100
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %61

122:                                              ; preds = %70
  %123 = load i64, i64* %19, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %28, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %152

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %27, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %152

143:                                              ; preds = %137, %134
  %144 = load i32, i32* %27, align 4
  %145 = load i32*, i32** %15, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %28, align 4
  %147 = load i32*, i32** %14, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %8, align 4
  br label %156

151:                                              ; preds = %122
  br label %152

152:                                              ; preds = %151, %142, %133
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %47

155:                                              ; preds = %47
  store i32 -1, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %143, %33
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
