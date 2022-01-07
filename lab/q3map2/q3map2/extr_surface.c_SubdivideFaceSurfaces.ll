; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_SubdivideFaceSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_SubdivideFaceSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, float*, float*, float*, i32, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, float }
%struct.TYPE_18__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"--- SubdivideFaceSurfaces ---\0A\00", align 1
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_17__* null, align 8
@SURFACE_FACE = common dso_local global i64 0, align 8
@C_SKY = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@texRange = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SubdivideFaceSurfaces(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32, i32* @SYS_VRB, align 4
  %19 = call i32 @Sys_FPrintf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @numMapDrawSurfs, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %235, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %238

28:                                               ; preds = %24
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mapDrawSurfs, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i64 %31
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %9, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SURFACE_FACE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %55, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = icmp eq %struct.TYPE_14__* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = icmp eq %struct.TYPE_15__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %43, %38, %28
  br label %235

56:                                               ; preds = %48
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %11, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %12, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %69 = icmp eq %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %235

71:                                               ; preds = %56
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @C_SKY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %235

79:                                               ; preds = %71
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = call i32 @ClassifySurfaces(i32 1, %struct.TYPE_17__* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = call i64 @CalcSurfaceTextureRange(%struct.TYPE_17__* %82)
  %84 = load i64, i64* @qfalse, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %197

86:                                               ; preds = %79
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = getelementptr inbounds float, float* %89, i64 0
  %91 = load float, float* %90, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = fcmp ogt float %91, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  %103 = load float, float* %102, align 4
  br label %110

104:                                              ; preds = %86
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  %109 = load float, float* %108, align 4
  br label %110

110:                                              ; preds = %104, %98
  %111 = phi float [ %103, %98 ], [ %109, %104 ]
  store float %111, float* %14, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 0
  %116 = load float, float* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  %121 = load float, float* %120, align 4
  %122 = fsub float %116, %121
  store float %122, float* %15, align 4
  store i32 1, i32* %6, align 4
  br label %123

123:                                              ; preds = %161, %110
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %126, label %164

126:                                              ; preds = %123
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load float*, float** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = load float*, float** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fsub float %133, %140
  %142 = load float, float* %15, align 4
  %143 = fcmp ogt float %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %126
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load float*, float** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  %151 = load float, float* %150, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fsub float %151, %158
  store float %159, float* %15, align 4
  br label %160

160:                                              ; preds = %144, %126
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %123

164:                                              ; preds = %123
  %165 = load float, float* %15, align 4
  %166 = load float, float* %14, align 4
  %167 = fdiv float %165, %166
  %168 = load float, float* @texRange, align 4
  %169 = fmul float %167, %168
  store float %169, float* %16, align 4
  %170 = load float, float* %16, align 4
  %171 = fdiv float %170, 2.000000e+00
  %172 = call i32 @ceil(float %171)
  %173 = mul nsw i32 %172, 2
  %174 = sitofp i32 %173 to float
  store float %174, float* %16, align 4
  store i32 1, i32* %6, align 4
  br label %175

175:                                              ; preds = %193, %164
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 8
  br i1 %177, label %178, label %196

178:                                              ; preds = %175
  %179 = load float, float* @texRange, align 4
  %180 = load i32, i32* %6, align 4
  %181 = sitofp i32 %180 to float
  %182 = fdiv float %179, %181
  %183 = call i32 @ceil(float %182)
  %184 = sitofp i32 %183 to float
  store float %184, float* %17, align 4
  %185 = load float, float* %16, align 4
  %186 = load float, float* %17, align 4
  %187 = fsub float %185, %186
  %188 = call double @fabs(float %187)
  %189 = fcmp ole double %188, 4.000000e+00
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load float, float* %17, align 4
  store float %191, float* %16, align 4
  br label %196

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %175

196:                                              ; preds = %190, %175
  br label %201

197:                                              ; preds = %79
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load float, float* %199, align 4
  store float %200, float* %16, align 4
  br label %201

201:                                              ; preds = %197, %196
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = load float, float* %203, align 4
  %205 = fcmp ogt float %204, 0.000000e+00
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load float, float* %208, align 4
  %210 = load float, float* %16, align 4
  %211 = fcmp olt float %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load float, float* %214, align 4
  store float %215, float* %16, align 4
  br label %216

216:                                              ; preds = %212, %206, %201
  %217 = load float, float* %16, align 4
  %218 = fcmp olt float %217, 1.000000e+00
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %235

220:                                              ; preds = %216
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %8, align 4
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %225 = call i32* @WindingFromDrawSurf(%struct.TYPE_17__* %224)
  store i32* %225, i32** %13, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = call i32 @ClearSurface(%struct.TYPE_17__* %226)
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load float, float* %16, align 4
  %234 = call i32 @SubdivideFace_r(%struct.TYPE_18__* %228, i32* %229, %struct.TYPE_15__* %230, i32* %231, i32 %232, float %233)
  br label %235

235:                                              ; preds = %220, %219, %78, %70, %55
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %24

238:                                              ; preds = %24
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @ClassifySurfaces(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @CalcSurfaceTextureRange(%struct.TYPE_17__*) #1

declare dso_local i32 @ceil(float) #1

declare dso_local double @fabs(float) #1

declare dso_local i32* @WindingFromDrawSurf(%struct.TYPE_17__*) #1

declare dso_local i32 @ClearSurface(%struct.TYPE_17__*) #1

declare dso_local i32 @SubdivideFace_r(%struct.TYPE_18__*, i32*, %struct.TYPE_15__*, i32*, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
