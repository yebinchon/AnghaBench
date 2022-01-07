; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_MergeBSPLuxels.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_MergeBSPLuxels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64*, float**, i32, i32, i32** }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32)* @MergeBSPLuxels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MergeBSPLuxels(%struct.TYPE_4__* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %73, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %73, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %73, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %46, %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %39
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 7
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %64, %55, %39, %31, %23, %4
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %5, align 4
  br label %217

75:                                               ; preds = %64
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %132

84:                                               ; preds = %75
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %84
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load float**, float*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float*, float** %96, i64 %98
  %100 = load float*, float** %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load float**, float*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float*, float** %103, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %109 = call i32 @VectorAdd(float* %100, float* %107, float* %108)
  %110 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %111 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %112 = call i32 @VectorScale(float* %110, float 5.000000e-01, float* %111)
  %113 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load float**, float*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float*, float** %116, i64 %118
  %120 = load float*, float** %119, align 8
  %121 = call i32 @VectorCopy(float* %113, float* %120)
  %122 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load float**, float*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float*, float** %125, i64 %127
  %129 = load float*, float** %128, align 8
  %130 = call i32 @VectorCopy(float* %122, float* %129)
  %131 = load i32, i32* @qtrue, align 4
  store i32 %131, i32* %5, align 4
  br label %217

132:                                              ; preds = %84, %75
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %135, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %140, %132
  %149 = load i32, i32* @qfalse, align 4
  store i32 %149, i32* %5, align 4
  br label %217

150:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %212, %150
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %215

157:                                              ; preds = %151
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %208, %157
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %158
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %165, %struct.TYPE_4__** %10, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call float* @BSP_LUXEL(i32 %166, i32 %167, i32 %168)
  store float* %169, float** %14, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %170, %struct.TYPE_4__** %10, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call float* @BSP_LUXEL(i32 %171, i32 %172, i32 %173)
  store float* %174, float** %15, align 8
  %175 = load float*, float** %14, align 8
  %176 = getelementptr inbounds float, float* %175, i64 0
  %177 = load float, float* %176, align 4
  %178 = fcmp olt float %177, 0.000000e+00
  br i1 %178, label %179, label %183

179:                                              ; preds = %164
  %180 = load float*, float** %15, align 8
  %181 = load float*, float** %14, align 8
  %182 = call i32 @VectorCopy(float* %180, float* %181)
  br label %207

183:                                              ; preds = %164
  %184 = load float*, float** %15, align 8
  %185 = getelementptr inbounds float, float* %184, i64 0
  %186 = load float, float* %185, align 4
  %187 = fcmp olt float %186, 0.000000e+00
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load float*, float** %14, align 8
  %190 = load float*, float** %15, align 8
  %191 = call i32 @VectorCopy(float* %189, float* %190)
  br label %206

192:                                              ; preds = %183
  %193 = load float*, float** %14, align 8
  %194 = load float*, float** %15, align 8
  %195 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %196 = call i32 @VectorAdd(float* %193, float* %194, float* %195)
  %197 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %198 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %199 = call i32 @VectorScale(float* %197, float 5.000000e-01, float* %198)
  %200 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %201 = load float*, float** %14, align 8
  %202 = call i32 @VectorCopy(float* %200, float* %201)
  %203 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %204 = load float*, float** %15, align 8
  %205 = call i32 @VectorCopy(float* %203, float* %204)
  br label %206

206:                                              ; preds = %192, %188
  br label %207

207:                                              ; preds = %206, %179
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %158

211:                                              ; preds = %158
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %151

215:                                              ; preds = %151
  %216 = load i32, i32* @qtrue, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %215, %148, %93, %73
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float* @BSP_LUXEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
