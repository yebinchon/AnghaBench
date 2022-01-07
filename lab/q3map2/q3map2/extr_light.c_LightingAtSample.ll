; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_LightingAtSample.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_LightingAtSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, i32, float*, %struct.TYPE_5__*, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i32 }

@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@normalmap = common dso_local global i64 0, align 8
@bouncing = common dso_local global i32 0, align 4
@ambientColor = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i64 0, align 8
@LIGHT_NEGATIVE = common dso_local global i32 0, align 4
@cheap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LightingAtSample(%struct.TYPE_6__* %0, i64* %1, float** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca float**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store float** %2, float*** %6, align 8
  %9 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %12 = zext i32 %11 to i64
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load float**, float*** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float*, float** %18, i64 %20
  %22 = load float*, float** %21, align 8
  %23 = call i32 @VectorClear(float* %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load i64, i64* @normalmap, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = fadd float %35, 1.000000e+00
  %37 = fmul float %36, 1.275000e+02
  %38 = load float**, float*** %6, align 8
  %39 = getelementptr inbounds float*, float** %38, i64 0
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  store float %37, float* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fadd float %46, 1.000000e+00
  %48 = fmul float %47, 1.275000e+02
  %49 = load float**, float*** %6, align 8
  %50 = getelementptr inbounds float*, float** %49, i64 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  store float %48, float* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, 1.000000e+00
  %59 = fmul float %58, 1.275000e+02
  %60 = load float**, float*** %6, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  store float %59, float* %63, align 4
  br label %228

64:                                               ; preds = %27
  %65 = load i32, i32* @bouncing, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @ambientColor, align 4
  %69 = load float**, float*** %6, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 0
  %71 = load float*, float** %70, align 8
  %72 = call i32 @VectorCopy(i32 %68, float* %71)
  br label %73

73:                                               ; preds = %67, %64
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %225, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %83, i64 %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br label %89

89:                                               ; preds = %80, %74
  %90 = phi i1 [ false, %74 ], [ %88, %80 ]
  br i1 %90, label %91, label %228

91:                                               ; preds = %89
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %94, i64 %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %100, align 8
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %127, %91
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load i64*, i64** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %110, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %105
  %118 = load i64*, i64** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @LS_NONE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117, %105
  br label %130

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %101

130:                                              ; preds = %125, %101
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %225

135:                                              ; preds = %130
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = call i32 @LightContributionToSample(%struct.TYPE_6__* %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load float, float* %141, align 4
  %143 = fcmp oeq float %142, 0.000000e+00
  br i1 %143, label %144, label %159

144:                                              ; preds = %135
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load float*, float** %146, align 8
  %148 = getelementptr inbounds float, float* %147, i64 1
  %149 = load float, float* %148, align 4
  %150 = fcmp oeq float %149, 0.000000e+00
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load float*, float** %153, align 8
  %155 = getelementptr inbounds float, float* %154, i64 2
  %156 = load float, float* %155, align 4
  %157 = fcmp oeq float %156, 0.000000e+00
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %225

159:                                              ; preds = %151, %144, %135
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @LIGHT_NEGATIVE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %159
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load float*, float** %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load float*, float** %173, align 8
  %175 = call i32 @VectorScale(float* %171, float -1.000000e+00, float* %174)
  br label %176

176:                                              ; preds = %168, %159
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  store i64 %181, i64* %185, align 8
  %186 = load float**, float*** %6, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float*, float** %186, i64 %188
  %190 = load float*, float** %189, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = load float*, float** %192, align 8
  %194 = load float**, float*** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float*, float** %194, i64 %196
  %198 = load float*, float** %197, align 8
  %199 = call i32 @VectorAdd(float* %190, float* %193, float* %198)
  %200 = load i64, i64* @cheap, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %224

202:                                              ; preds = %176
  %203 = load float**, float*** %6, align 8
  %204 = getelementptr inbounds float*, float** %203, i64 0
  %205 = load float*, float** %204, align 8
  %206 = getelementptr inbounds float, float* %205, i64 0
  %207 = load float, float* %206, align 4
  %208 = fcmp oge float %207, 2.550000e+02
  br i1 %208, label %209, label %224

209:                                              ; preds = %202
  %210 = load float**, float*** %6, align 8
  %211 = getelementptr inbounds float*, float** %210, i64 0
  %212 = load float*, float** %211, align 8
  %213 = getelementptr inbounds float, float* %212, i64 1
  %214 = load float, float* %213, align 4
  %215 = fcmp oge float %214, 2.550000e+02
  br i1 %215, label %216, label %224

216:                                              ; preds = %209
  %217 = load float**, float*** %6, align 8
  %218 = getelementptr inbounds float*, float** %217, i64 0
  %219 = load float*, float** %218, align 8
  %220 = getelementptr inbounds float, float* %219, i64 2
  %221 = load float, float* %220, align 4
  %222 = fcmp oge float %221, 2.550000e+02
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %228

224:                                              ; preds = %216, %209, %202, %176
  br label %225

225:                                              ; preds = %224, %158, %134
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %74

228:                                              ; preds = %30, %223, %89
  ret void
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @LightContributionToSample(%struct.TYPE_6__*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
