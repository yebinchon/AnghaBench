; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapTriangle.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapTriangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { float**, i32 }

@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__**, i64)* @MapTriangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MapTriangle(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca [3 x %struct.TYPE_18__*], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @VectorCopy(i32* %26, i32* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32 %33, i32* %35, align 4
  br label %59

36:                                               ; preds = %4
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %38, i64 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %43, i64 1
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %48, i64 2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @PlaneFromPoints(i32* %37, i32 %42, i32 %47, i32 %52)
  %54 = load i64, i64* @qfalse, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i64, i64* @qfalse, align 8
  store i64 %57, i64* %5, align 8
  br label %195

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %23
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %70 = call i64 @CalcTangentVectors(i32 3, %struct.TYPE_18__** %67, i32* %68, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32* %73, i32** %12, align 8
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32* %74, i32** %13, align 8
  br label %76

75:                                               ; preds = %66, %59
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %79, i64 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %77, %struct.TYPE_16__* %78, %struct.TYPE_18__* %81, i32* %82, i32 1, i32* %83, i32* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %88, i64 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %86, %struct.TYPE_16__* %87, %struct.TYPE_18__* %90, i32* %91, i32 1, i32* %92, i32* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %97, i64 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @MapSingleLuxel(%struct.TYPE_17__* %95, %struct.TYPE_16__* %96, %struct.TYPE_18__* %99, i32* %100, i32 1, i32* %101, i32* %102)
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %76
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @MapTriangle_r(%struct.TYPE_17__* %107, %struct.TYPE_16__* %108, %struct.TYPE_18__** %109, i32* %110, i32* %111, i32* %112)
  %114 = load i64, i64* @qtrue, align 8
  store i64 %114, i64* %5, align 8
  br label %195

115:                                              ; preds = %76
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %190, %115
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %193

119:                                              ; preds = %116
  %120 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %120, i64 %122
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load float**, float*** %125, align 8
  %127 = getelementptr inbounds float*, float** %126, i64 0
  %128 = load float*, float** %127, align 8
  store float* %128, float** %16, align 8
  %129 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  %132 = srem i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %129, i64 %133
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load float**, float*** %136, align 8
  %138 = getelementptr inbounds float*, float** %137, i64 0
  %139 = load float*, float** %138, align 8
  store float* %139, float** %17, align 8
  %140 = load float*, float** %16, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load float, float* %141, align 4
  %143 = load float*, float** %17, align 8
  %144 = getelementptr inbounds float, float* %143, i64 0
  %145 = load float, float* %144, align 4
  %146 = fsub float %142, %145
  %147 = call float @fabs(float %146)
  %148 = fcmp olt float %147, 0x3F847AE140000000
  br i1 %148, label %159, label %149

149:                                              ; preds = %119
  %150 = load float*, float** %16, align 8
  %151 = getelementptr inbounds float, float* %150, i64 1
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %17, align 8
  %154 = getelementptr inbounds float, float* %153, i64 1
  %155 = load float, float* %154, align 4
  %156 = fsub float %152, %155
  %157 = call float @fabs(float %156)
  %158 = fcmp olt float %157, 0x3F847AE140000000
  br i1 %158, label %159, label %189

159:                                              ; preds = %149, %119
  %160 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %160, i64 %162
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds [3 x %struct.TYPE_18__*], [3 x %struct.TYPE_18__*]* %18, i64 0, i64 0
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %165, align 16
  %166 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  %169 = srem i32 %168, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %166, i64 %170
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds [3 x %struct.TYPE_18__*], [3 x %struct.TYPE_18__*]* %18, i64 0, i64 1
  store %struct.TYPE_18__* %172, %struct.TYPE_18__** %173, align 8
  %174 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  %177 = srem i32 %176, 3
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %174, i64 %178
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds [3 x %struct.TYPE_18__*], [3 x %struct.TYPE_18__*]* %18, i64 0, i64 2
  store %struct.TYPE_18__* %180, %struct.TYPE_18__** %181, align 16
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %184 = getelementptr inbounds [3 x %struct.TYPE_18__*], [3 x %struct.TYPE_18__*]* %18, i64 0, i64 0
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @MapTriangle_r(%struct.TYPE_17__* %182, %struct.TYPE_16__* %183, %struct.TYPE_18__** %184, i32* %185, i32* %186, i32* %187)
  br label %189

189:                                              ; preds = %159, %149
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %116

193:                                              ; preds = %116
  %194 = load i64, i64* @qtrue, align 8
  store i64 %194, i64* %5, align 8
  br label %195

195:                                              ; preds = %193, %106, %56
  %196 = load i64, i64* %5, align 8
  ret i64 %196
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i64 @PlaneFromPoints(i32*, i32, i32, i32) #1

declare dso_local i64 @CalcTangentVectors(i32, %struct.TYPE_18__**, i32*, i32*) #1

declare dso_local i32 @MapSingleLuxel(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MapTriangle_r(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__**, i32*, i32*, i32*) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
