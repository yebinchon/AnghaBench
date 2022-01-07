; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ApproximateLuxel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ApproximateLuxel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64* }
%struct.TYPE_6__ = type { i32**, float** }

@superSample = common dso_local global i32 0, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@minLight = common dso_local global i64* null, align 8
@approximateTolerance = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @ApproximateLuxel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ApproximateLuxel(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @superSample, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @superSample, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %53
  br label %65

65:                                               ; preds = %64, %52
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %204, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %207

70:                                               ; preds = %66
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LS_NONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %204

81:                                               ; preds = %70
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call float* @BSP_LUXEL(i32 %82, i32 %83, i32 %84)
  store float* %85, float** %11, align 8
  %86 = load float*, float** %11, align 8
  %87 = getelementptr inbounds float, float* %86, i64 0
  %88 = load float, float* %87, align 4
  %89 = fcmp olt float %88, 0.000000e+00
  br i1 %89, label %100, label %90

90:                                               ; preds = %81
  %91 = load float*, float** %11, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = fcmp olt float %93, 0.000000e+00
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load float*, float** %11, align 8
  %97 = getelementptr inbounds float, float* %96, i64 2
  %98 = load float, float* %97, align 4
  %99 = fcmp olt float %98, 0.000000e+00
  br i1 %99, label %100, label %102

100:                                              ; preds = %95, %90, %81
  %101 = load i32, i32* @qtrue, align 4
  store i32 %101, i32* %3, align 4
  br label %209

102:                                              ; preds = %95
  %103 = load float*, float** %11, align 8
  %104 = load i64*, i64** %12, align 8
  %105 = call i32 @VectorCopy(float* %103, i64* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load float**, float*** %107, align 8
  %109 = getelementptr inbounds float*, float** %108, i64 0
  %110 = load float*, float** %109, align 8
  %111 = load i64*, i64** %13, align 8
  %112 = call i32 @VectorCopy(float* %110, i64* %111)
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %164, %115
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %167

119:                                              ; preds = %116
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** @minLight, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %124, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %119
  %132 = load i64*, i64** @minLight, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %12, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %131, %119
  %142 = load i64*, i64** %13, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** @minLight, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %146, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %141
  %154 = load i64*, i64** @minLight, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %13, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 %158, i64* %162, align 8
  br label %163

163:                                              ; preds = %153, %141
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %116

167:                                              ; preds = %116
  br label %168

168:                                              ; preds = %167, %102
  %169 = load i64*, i64** %12, align 8
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %171 = call i32 @ColorToBytes(i64* %169, i32* %170, float 1.000000e+00)
  %172 = load i64*, i64** %13, align 8
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %174 = call i32 @ColorToBytes(i64* %172, i32* %173, float 1.000000e+00)
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %200, %168
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %203

178:                                              ; preds = %175
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %182, %186
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %178
  %191 = load i32, i32* %9, align 4
  %192 = mul nsw i32 %191, -1
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %190, %178
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @approximateTolerance, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @qfalse, align 4
  store i32 %198, i32* %3, align 4
  br label %209

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %175

203:                                              ; preds = %175
  br label %204

204:                                              ; preds = %203, %80
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %66

207:                                              ; preds = %66
  %208 = load i32, i32* @qtrue, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %197, %100
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local float* @BSP_LUXEL(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(float*, i64*) #1

declare dso_local i32 @ColorToBytes(i64*, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
