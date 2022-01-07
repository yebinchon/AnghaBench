; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_DrawSurfaceForMesh.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_DrawSurfaceForMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, float**, i32, %struct.TYPE_30__*, i32, i32, i32, %struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32, i32 }
%struct.TYPE_30__ = type { float*, float*, float*, i32** }
%struct.TYPE_25__ = type { float*, float**, i64, i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, i32, i32, %struct.TYPE_25__*, %struct.TYPE_27__ }
%struct.TYPE_24__ = type { float* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { float*, float* }

@MAX_EXPANDED_AXIS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@SURFACE_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DrawSurfaceForMesh: bogus plane\0A\00", align 1
@EQUAL_EPSILON = common dso_local global i64 0, align 8
@flat = common dso_local global i64 0, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @DrawSurfaceForMesh(%struct.TYPE_29__* %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca float*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  %25 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %26 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %27 = mul nsw i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  %31 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %32 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %33 = mul nsw i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = alloca float, i64 %34, align 16
  store i64 %34, i64* %23, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %37 = icmp eq %struct.TYPE_27__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 11
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %7, align 8
  br label %41

41:                                               ; preds = %38, %3
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %15, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %46 = icmp eq %struct.TYPE_27__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %49 = icmp eq %struct.TYPE_25__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %41
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  store i32 1, i32* %24, align 4
  br label %573

51:                                               ; preds = %47
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %60 = call %struct.TYPE_27__* @CopyMesh(%struct.TYPE_27__* %59)
  store %struct.TYPE_27__* %60, %struct.TYPE_27__** %19, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %62 = bitcast %struct.TYPE_27__* %61 to { i64, %struct.TYPE_31__* }*
  %63 = getelementptr inbounds { i64, %struct.TYPE_31__* }, { i64, %struct.TYPE_31__* }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, %struct.TYPE_31__* }, { i64, %struct.TYPE_31__* }* %62, i32 0, i32 1
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %65, align 8
  %67 = call i32 @MakeMeshNormals(i64 %64, %struct.TYPE_31__* %66)
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %90, %51
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 0
  %80 = load float*, float** %79, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = call i32 @VectorCopy(float* %80, float* %88)
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %68

93:                                               ; preds = %68
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %95 = bitcast %struct.TYPE_27__* %94 to { i64, %struct.TYPE_31__* }*
  %96 = getelementptr inbounds { i64, %struct.TYPE_31__* }, { i64, %struct.TYPE_31__* }* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds { i64, %struct.TYPE_31__* }, { i64, %struct.TYPE_31__* }* %95, i32 0, i32 1
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %98, align 8
  %100 = call i32 @PutMeshOnCurve(i64 %97, %struct.TYPE_31__* %99)
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %102 = bitcast %struct.TYPE_27__* %101 to { i64, %struct.TYPE_31__* }*
  %103 = getelementptr inbounds { i64, %struct.TYPE_31__* }, { i64, %struct.TYPE_31__* }* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds { i64, %struct.TYPE_31__* }, { i64, %struct.TYPE_31__* }* %102, i32 0, i32 1
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %105, align 8
  %107 = call i32 @MakeMeshNormals(i64 %104, %struct.TYPE_31__* %106)
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %150, %93
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %108
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 0
  %120 = load float*, float** %119, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load float*, float** %127, align 8
  %129 = call float @DotProduct(float* %120, float* %128)
  %130 = fcmp olt float %129, 7.500000e-01
  br i1 %130, label %131, label %149

131:                                              ; preds = %112
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = load float*, float** %138, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 0
  %147 = load float*, float** %146, align 8
  %148 = call i32 @VectorCopy(float* %139, float* %147)
  br label %149

149:                                              ; preds = %131, %112
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %108

153:                                              ; preds = %108
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %155 = call i32 @FreeMesh(%struct.TYPE_27__* %154)
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %218

160:                                              ; preds = %153
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %162, align 8
  %164 = icmp ne %struct.TYPE_24__* %163, null
  br i1 %164, label %165, label %218

165:                                              ; preds = %160
  %166 = load i64, i64* @qtrue, align 8
  store i64 %166, i64* %20, align 8
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %207, %165
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %210

171:                                              ; preds = %167
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 1
  %188 = load float*, float** %187, align 8
  %189 = call i64 @GetShaderIndexForPoint(%struct.TYPE_24__* %174, i32 %177, i32 %180, float* %188)
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %30, i64 %191
  store i64 %189, i64* %192, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load float*, float** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %30, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds float, float* %197, i64 %201
  %203 = load float, float* %202, align 4
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %35, i64 %205
  store float %203, float* %206, align 4
  br label %207

207:                                              ; preds = %171
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %167

210:                                              ; preds = %167
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %211, %struct.TYPE_25__** %16, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call %struct.TYPE_25__* @GetIndexedShader(%struct.TYPE_25__* %212, %struct.TYPE_24__* %215, i32 %216, i64* %30)
  store %struct.TYPE_25__* %217, %struct.TYPE_25__** %15, align 8
  br label %220

218:                                              ; preds = %160, %153
  %219 = load i64, i64* @qfalse, align 8
  store i64 %219, i64* %20, align 8
  br label %220

220:                                              ; preds = %218, %210
  %221 = load i32, i32* @SURFACE_PATCH, align 4
  %222 = call %struct.TYPE_28__* @AllocDrawSurface(i32 %221)
  store %struct.TYPE_28__* %222, %struct.TYPE_28__** %14, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 15
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 14
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 13
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 12
  store %struct.TYPE_25__* %238, %struct.TYPE_25__** %240, align 8
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 11
  store %struct.TYPE_26__* %241, %struct.TYPE_26__** %243, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 10
  store i32 %246, i32* %248, align 8
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %261, %264
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = mul i64 %271, 32
  %273 = trunc i64 %272 to i32
  %274 = call %struct.TYPE_30__* @safe_malloc(i32 %273)
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 7
  store %struct.TYPE_30__* %274, %struct.TYPE_30__** %276, align 8
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 7
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %278, align 8
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %281, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = mul i64 %286, 32
  %288 = trunc i64 %287 to i32
  %289 = call i32 @memcpy(%struct.TYPE_30__* %279, %struct.TYPE_31__* %282, i32 %288)
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 3
  store i32 -1, i32* %291, align 4
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 4
  store i32 -1, i32* %293, align 8
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 9
  store i32 %296, i32* %298, align 4
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_31__*, %struct.TYPE_31__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 0
  %309 = load float*, float** %308, align 8
  %310 = load float*, float** %11, align 8
  %311 = call i32 @VectorCopy(float* %309, float* %310)
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %315, i32 0, i32 1
  %317 = load float*, float** %316, align 8
  %318 = load float*, float** %11, align 8
  %319 = call float @DotProduct(float* %317, float* %318)
  %320 = load float*, float** %11, align 8
  %321 = getelementptr inbounds float, float* %320, i64 3
  store float %319, float* %321, align 4
  %322 = load i64, i64* @qtrue, align 8
  store i64 %322, i64* %12, align 8
  %323 = load float*, float** %11, align 8
  %324 = call float @VectorLength(float* %323)
  %325 = fcmp olt float %324, 0x3F50624DE0000000
  br i1 %325, label %326, label %328

326:                                              ; preds = %220
  %327 = call i32 @Sys_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %220
  store i32 1, i32* %8, align 4
  br label %329

329:                                              ; preds = %377, %328
  %330 = load i32, i32* %8, align 4
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load i64, i64* %12, align 8
  %337 = icmp ne i64 %336, 0
  br label %338

338:                                              ; preds = %335, %329
  %339 = phi i1 [ false, %329 ], [ %337, %335 ]
  br i1 %339, label %340, label %380

340:                                              ; preds = %338
  %341 = load float*, float** %11, align 8
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %347, i32 0, i32 0
  %349 = load float*, float** %348, align 8
  %350 = call i64 @VectorCompare(float* %341, float* %349)
  %351 = load i64, i64* @qfalse, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %340
  %354 = load i64, i64* @qfalse, align 8
  store i64 %354, i64* %12, align 8
  br label %355

355:                                              ; preds = %353, %340
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %361, i32 0, i32 1
  %363 = load float*, float** %362, align 8
  %364 = load float*, float** %11, align 8
  %365 = call float @DotProduct(float* %363, float* %364)
  %366 = load float*, float** %11, align 8
  %367 = getelementptr inbounds float, float* %366, i64 3
  %368 = load float, float* %367, align 4
  %369 = fsub float %365, %368
  store float %369, float* %13, align 4
  %370 = load float, float* %13, align 4
  %371 = call i64 @fabs(float %370)
  %372 = load i64, i64* @EQUAL_EPSILON, align 8
  %373 = icmp sgt i64 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %355
  %375 = load i64, i64* @qfalse, align 8
  store i64 %375, i64* %12, align 8
  br label %376

376:                                              ; preds = %374, %355
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %8, align 4
  br label %329

380:                                              ; preds = %338
  %381 = load i64, i64* %12, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %424

383:                                              ; preds = %380
  %384 = load float*, float** %11, align 8
  %385 = load float*, float** %11, align 8
  %386 = getelementptr inbounds float, float* %385, i64 3
  %387 = load float, float* %386, align 4
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 2
  %390 = load %struct.TYPE_31__*, %struct.TYPE_31__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %390, i64 0
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 1
  %393 = call i32 @FindFloatPlane(float* %384, float %387, i32 1, float** %392)
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %395 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %394, i32 0, i32 4
  store i32 %393, i32* %395, align 8
  %396 = load float*, float** %11, align 8
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 5
  %399 = load float**, float*** %398, align 8
  %400 = getelementptr inbounds float*, float** %399, i64 2
  %401 = load float*, float** %400, align 8
  %402 = call i32 @VectorCopy(float* %396, float* %401)
  store i32 0, i32* %8, align 4
  br label %403

403:                                              ; preds = %420, %383
  %404 = load i32, i32* %8, align 4
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = icmp slt i32 %404, %407
  br i1 %408, label %409, label %423

409:                                              ; preds = %403
  %410 = load float*, float** %11, align 8
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %412 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %411, i32 0, i32 7
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %412, align 8
  %414 = load i32, i32* %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %416, i32 0, i32 0
  %418 = load float*, float** %417, align 8
  %419 = call i32 @VectorCopy(float* %410, float* %418)
  br label %420

420:                                              ; preds = %409
  %421 = load i32, i32* %8, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %8, align 4
  br label %403

423:                                              ; preds = %403
  br label %424

424:                                              ; preds = %423, %380
  store i32 0, i32* %8, align 4
  br label %425

425:                                              ; preds = %563, %424
  %426 = load i32, i32* %8, align 4
  %427 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp slt i32 %426, %429
  br i1 %430, label %431, label %566

431:                                              ; preds = %425
  %432 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %433 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %432, i32 0, i32 7
  %434 = load %struct.TYPE_30__*, %struct.TYPE_30__** %433, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %434, i64 %436
  store %struct.TYPE_30__* %437, %struct.TYPE_30__** %17, align 8
  %438 = load i64, i64* @flat, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %459

440:                                              ; preds = %431
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 0
  %443 = load float*, float** %442, align 8
  %444 = getelementptr inbounds float, float* %443, i64 0
  %445 = load float, float* %444, align 4
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i32 0, i32 1
  %448 = load float*, float** %447, align 8
  %449 = getelementptr inbounds float, float* %448, i64 0
  store float %445, float* %449, align 4
  %450 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %451 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %450, i32 0, i32 0
  %452 = load float*, float** %451, align 8
  %453 = getelementptr inbounds float, float* %452, i64 1
  %454 = load float, float* %453, align 4
  %455 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %456 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %455, i32 0, i32 1
  %457 = load float*, float** %456, align 8
  %458 = getelementptr inbounds float, float* %457, i64 1
  store float %454, float* %458, align 4
  br label %496

459:                                              ; preds = %431
  %460 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %495

464:                                              ; preds = %459
  %465 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %466 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %465, i32 0, i32 2
  %467 = load float*, float** %466, align 8
  %468 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = load float*, float** %18, align 8
  %472 = call i32 @VectorAdd(float* %467, i32 %470, float* %471)
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 1
  %475 = load float**, float*** %474, align 8
  %476 = getelementptr inbounds float*, float** %475, i64 0
  %477 = load float*, float** %476, align 8
  %478 = load float*, float** %18, align 8
  %479 = call float @DotProduct(float* %477, float* %478)
  %480 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %480, i32 0, i32 1
  %482 = load float*, float** %481, align 8
  %483 = getelementptr inbounds float, float* %482, i64 0
  store float %479, float* %483, align 4
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 1
  %486 = load float**, float*** %485, align 8
  %487 = getelementptr inbounds float*, float** %486, i64 1
  %488 = load float*, float** %487, align 8
  %489 = load float*, float** %18, align 8
  %490 = call float @DotProduct(float* %488, float* %489)
  %491 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %491, i32 0, i32 1
  %493 = load float*, float** %492, align 8
  %494 = getelementptr inbounds float, float* %493, i64 1
  store float %490, float* %494, align 4
  br label %495

495:                                              ; preds = %464, %459
  br label %496

496:                                              ; preds = %495, %440
  store i32 0, i32* %9, align 4
  br label %497

497:                                              ; preds = %545, %496
  %498 = load i32, i32* %9, align 4
  %499 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %500 = icmp slt i32 %498, %499
  br i1 %500, label %501, label %548

501:                                              ; preds = %497
  %502 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %503 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %502, i32 0, i32 3
  %504 = load i32**, i32*** %503, align 8
  %505 = load i32, i32* %9, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32*, i32** %504, i64 %506
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 0
  store i32 255, i32* %509, align 4
  %510 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %511 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %510, i32 0, i32 3
  %512 = load i32**, i32*** %511, align 8
  %513 = load i32, i32* %9, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32*, i32** %512, i64 %514
  %516 = load i32*, i32** %515, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 1
  store i32 255, i32* %517, align 4
  %518 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 3
  %520 = load i32**, i32*** %519, align 8
  %521 = load i32, i32* %9, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32*, i32** %520, i64 %522
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 2
  store i32 255, i32* %525, align 4
  %526 = load i64, i64* %20, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %501
  %529 = load i32, i32* %8, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i64, i64* %30, i64 %530
  %532 = load i64, i64* %531, align 8
  br label %534

533:                                              ; preds = %501
  br label %534

534:                                              ; preds = %533, %528
  %535 = phi i64 [ %532, %528 ], [ 255, %533 ]
  %536 = trunc i64 %535 to i32
  %537 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %538 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %537, i32 0, i32 3
  %539 = load i32**, i32*** %538, align 8
  %540 = load i32, i32* %9, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32*, i32** %539, i64 %541
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 3
  store i32 %536, i32* %544, align 4
  br label %545

545:                                              ; preds = %534
  %546 = load i32, i32* %9, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %9, align 4
  br label %497

548:                                              ; preds = %497
  %549 = load i64, i64* %20, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %562

551:                                              ; preds = %548
  %552 = load i32, i32* %8, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds float, float* %35, i64 %553
  %555 = load float, float* %554, align 4
  %556 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %557 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %556, i32 0, i32 2
  %558 = load float*, float** %557, align 8
  %559 = getelementptr inbounds float, float* %558, i64 2
  %560 = load float, float* %559, align 4
  %561 = fadd float %560, %555
  store float %561, float* %559, align 4
  br label %562

562:                                              ; preds = %551, %548
  br label %563

563:                                              ; preds = %562
  %564 = load i32, i32* %8, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %8, align 4
  br label %425

566:                                              ; preds = %425
  %567 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %571 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %570, i32 0, i32 6
  store i32 %569, i32* %571, align 8
  %572 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  store %struct.TYPE_28__* %572, %struct.TYPE_28__** %4, align 8
  store i32 1, i32* %24, align 4
  br label %573

573:                                              ; preds = %566, %50
  %574 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %574)
  %575 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  ret %struct.TYPE_28__* %575
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_27__* @CopyMesh(%struct.TYPE_27__*) #2

declare dso_local i32 @MakeMeshNormals(i64, %struct.TYPE_31__*) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_31__*) #2

declare dso_local float @DotProduct(float*, float*) #2

declare dso_local i32 @FreeMesh(%struct.TYPE_27__*) #2

declare dso_local i64 @GetShaderIndexForPoint(%struct.TYPE_24__*, i32, i32, float*) #2

declare dso_local %struct.TYPE_25__* @GetIndexedShader(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i64*) #2

declare dso_local %struct.TYPE_28__* @AllocDrawSurface(i32) #2

declare dso_local %struct.TYPE_30__* @safe_malloc(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_30__*, %struct.TYPE_31__*, i32) #2

declare dso_local float @VectorLength(float*) #2

declare dso_local i32 @Sys_Printf(i8*) #2

declare dso_local i64 @VectorCompare(float*, float*) #2

declare dso_local i64 @fabs(float) #2

declare dso_local i32 @FindFloatPlane(float*, float, i32, float**) #2

declare dso_local i32 @VectorAdd(float*, i32, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
