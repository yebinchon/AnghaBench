; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_FindMetaTriangle.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_FindMetaTriangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { float*, float }
%struct.TYPE_16__ = type { i32, float*, float*, i8**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, float* }
%struct.TYPE_17__ = type { float*, i32 }

@mapplanes = common dso_local global %struct.TYPE_18__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@C_VERTEXLIT = common dso_local global i32 0, align 4
@metaTriangles = common dso_local global %struct.TYPE_16__* null, align 8
@numMetaTriangles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindMetaTriangle(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load float*, float** %13, align 8
  %21 = call i32 @VectorSubtract(i32 %16, i32 %19, float* %20)
  %22 = load float*, float** %13, align 8
  %23 = call float @VectorLength(float* %22)
  %24 = fcmp olt float %23, 1.250000e-01
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %244

26:                                               ; preds = %5
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load float*, float** %13, align 8
  %34 = call i32 @VectorSubtract(i32 %29, i32 %32, float* %33)
  %35 = load float*, float** %13, align 8
  %36 = call float @VectorLength(float* %35)
  %37 = fcmp olt float %36, 1.250000e-01
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %244

39:                                               ; preds = %26
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load float*, float** %13, align 8
  %47 = call i32 @VectorSubtract(i32 %42, i32 %45, float* %46)
  %48 = load float*, float** %13, align 8
  %49 = call float @VectorLength(float* %48)
  %50 = fcmp olt float %49, 1.250000e-01
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %244

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mapplanes, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load float*, float** %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = call i32 @VectorCopy(float* %64, float* %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mapplanes, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load float*, float** %76, align 8
  %78 = getelementptr inbounds float, float* %77, i64 3
  store float %74, float* %78, align 4
  br label %99

79:                                               ; preds = %52
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @PlaneFromPoints(float* %84, i32 %87, i32 %90, i32 %93)
  %95 = load i64, i64* @qfalse, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  store i32 -1, i32* %6, align 4
  br label %244

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98, %55
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load float*, float** %101, align 8
  %103 = call float @VectorLength(float* %102)
  %104 = fcmp ole float %103, 0.000000e+00
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load float*, float** %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load float*, float** %110, align 8
  %112 = call i32 @VectorCopy(float* %108, float* %111)
  br label %113

113:                                              ; preds = %105, %99
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load float*, float** %115, align 8
  %117 = call float @VectorLength(float* %116)
  %118 = fcmp ole float %117, 0.000000e+00
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load float*, float** %121, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load float*, float** %124, align 8
  %126 = call i32 @VectorCopy(float* %122, float* %125)
  br label %127

127:                                              ; preds = %119, %113
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load float*, float** %129, align 8
  %131 = call float @VectorLength(float* %130)
  %132 = fcmp ole float %131, 0.000000e+00
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load float*, float** %135, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load float*, float** %138, align 8
  %140 = call i32 @VectorCopy(float* %136, float* %139)
  br label %141

141:                                              ; preds = %133, %127
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @C_VERTEXLIT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %217, label %150

150:                                              ; preds = %141
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds float, float* %153, i64 0
  %155 = load float, float* %154, align 4
  %156 = fcmp oeq float %155, 0.000000e+00
  br i1 %156, label %157, label %217

157:                                              ; preds = %150
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 1
  %162 = load float, float* %161, align 4
  %163 = fcmp oeq float %162, 0.000000e+00
  br i1 %163, label %164, label %217

164:                                              ; preds = %157
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = load float*, float** %166, align 8
  %168 = getelementptr inbounds float, float* %167, i64 2
  %169 = load float, float* %168, align 4
  %170 = fcmp oeq float %169, 0.000000e+00
  br i1 %170, label %171, label %217

171:                                              ; preds = %164
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load float*, float** %175, align 8
  %177 = getelementptr inbounds float, float* %176, i64 0
  %178 = load float, float* %177, align 4
  %179 = fcmp une float %178, 0.000000e+00
  br i1 %179, label %198, label %180

180:                                              ; preds = %171
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load float*, float** %184, align 8
  %186 = getelementptr inbounds float, float* %185, i64 1
  %187 = load float, float* %186, align 4
  %188 = fcmp une float %187, 0.000000e+00
  br i1 %188, label %198, label %189

189:                                              ; preds = %180
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load float*, float** %193, align 8
  %195 = getelementptr inbounds float, float* %194, i64 2
  %196 = load float, float* %195, align 4
  %197 = fcmp une float %196, 0.000000e+00
  br i1 %197, label %198, label %208

198:                                              ; preds = %189, %180, %171
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load float*, float** %202, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load float*, float** %205, align 8
  %207 = call i32 @VectorCopy(float* %203, float* %206)
  br label %216

208:                                              ; preds = %189
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load float*, float** %210, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = load float*, float** %213, align 8
  %215 = call i32 @CalcLightmapAxis(float* %211, float* %214)
  br label %216

216:                                              ; preds = %208, %198
  br label %217

217:                                              ; preds = %216, %164, %157, %150, %141
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %219 = call i8* @FindMetaVertex(%struct.TYPE_17__* %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  %222 = load i8**, i8*** %221, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 0
  store i8* %219, i8** %223, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %225 = call i8* @FindMetaVertex(%struct.TYPE_17__* %224)
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 3
  %228 = load i8**, i8*** %227, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 1
  store i8* %225, i8** %229, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %231 = call i8* @FindMetaVertex(%struct.TYPE_17__* %230)
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 2
  store i8* %231, i8** %235, align 8
  %236 = call i32 (...) @AddMetaTriangle()
  store i32 %236, i32* %12, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** @metaTriangles, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %242 = call i32 @memcpy(%struct.TYPE_16__* %240, %struct.TYPE_16__* %241, i32 40)
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %217, %97, %51, %38, %25
  %245 = load i32, i32* %6, align 4
  ret i32 %245
}

declare dso_local i32 @VectorSubtract(i32, i32, float*) #1

declare dso_local float @VectorLength(float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i64 @PlaneFromPoints(float*, i32, i32, i32) #1

declare dso_local i32 @CalcLightmapAxis(float*, float*) #1

declare dso_local i8* @FindMetaVertex(%struct.TYPE_17__*) #1

declare dso_local i32 @AddMetaTriangle(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
