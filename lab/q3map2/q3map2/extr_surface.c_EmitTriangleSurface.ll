; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitTriangleSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitTriangleSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32*, i32, i8**, i8**, i32, i32, i32, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i64, i64, i64, i32*, i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i64 }

@numBSPDrawSurfaces = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_SURFS\00", align 1
@bspDrawSurfaces = common dso_local global %struct.TYPE_16__* null, align 8
@SURFACE_FOLIAGE = common dso_local global i64 0, align 8
@MST_FOLIAGE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@SURFACE_TRIANGLES = common dso_local global i64 0, align 8
@SURFACE_FOGHULL = common dso_local global i64 0, align 8
@maxLMSurfaceVerts = common dso_local global i32 0, align 4
@debugSurfaces = common dso_local global i64 0, align 8
@MST_TRIANGLE_SOUP = common dso_local global i32 0, align 4
@MST_PLANAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"debugsurfaces\00", align 1
@debugInset = common dso_local global i64 0, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i8* null, align 8
@LS_NORMAL = common dso_local global i8* null, align 8
@numSurfacesByType = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @EmitTriangleSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmitTriangleSurface(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 14
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %15, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %29
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 3
  store i32 %61, i32* %3, align 4
  br label %23

62:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %87, %62
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VectorScale(i32 %77, float -1.000000e+00, i32 %85)
  br label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %63

90:                                               ; preds = %63
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @VectorScale(i32 %95, float -1.000000e+00, i32 %100)
  br label %102

102:                                              ; preds = %90, %15
  %103 = load i64, i64* @numBSPDrawSurfaces, align 8
  %104 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %102
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bspDrawSurfaces, align 8
  %110 = load i64, i64* @numBSPDrawSurfaces, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %110
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %5, align 8
  %112 = load i64, i64* @numBSPDrawSurfaces, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* @numBSPDrawSurfaces, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* @numBSPDrawSurfaces, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = call i32 @memset(%struct.TYPE_16__* %117, i32 0, i32 72)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SURFACE_FOLIAGE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %108
  %125 = load i32, i32* @MST_FOLIAGE, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 8
  br label %170

128:                                              ; preds = %108
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = call float @VectorLength(i32 %131)
  %133 = fcmp ole float %132, 0.000000e+00
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @qfalse, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %161, label %140

140:                                              ; preds = %134, %128
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SURFACE_TRIANGLES, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %161, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SURFACE_FOGHULL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %161, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @maxLMSurfaceVerts, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = load i64, i64* @debugSurfaces, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158, %152, %146, %140, %134
  %162 = load i32, i32* @MST_TRIANGLE_SOUP, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 8
  br label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @MST_PLANAR, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 9
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %165, %161
  br label %170

170:                                              ; preds = %169, %124
  %171 = load i64, i64* @debugSurfaces, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = call i8* @EmitShader(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 8
  store i8* %174, i8** %176, align 8
  br label %194

177:                                              ; preds = %170
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 12
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 12
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 12
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = call i8* @EmitShader(i8* %182, i32* %186, i32* %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 8
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %177, %173
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load i64, i64* @debugInset, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %333

212:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %329, %212
  %214 = load i32, i32* %3, align 4
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %332

219:                                              ; preds = %213
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i64 %230
  store %struct.TYPE_15__* %231, %struct.TYPE_15__** %6, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %3, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i64 %243
  store %struct.TYPE_15__* %244, %struct.TYPE_15__** %7, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i64 %256
  store %struct.TYPE_15__* %257, %struct.TYPE_15__** %8, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @VectorCopy(i32 %260, i32 %261)
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @VectorAdd(i32 %263, i32 %266, i32 %267)
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @VectorAdd(i32 %269, i32 %272, i32 %273)
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @VectorScale(i32 %275, float 0x3FD5555560000000, i32 %276)
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @VectorSubtract(i32 %278, i32 %281, i32 %282)
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @VectorNormalize(i32 %284, i32 %285)
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %10, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @VectorAdd(i32 %289, i32 %290, i32 %293)
  %295 = load i32, i32* %9, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %10, align 4
  %300 = call i32 @VectorSubtract(i32 %295, i32 %298, i32 %299)
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @VectorNormalize(i32 %301, i32 %302)
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %10, align 4
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @VectorAdd(i32 %306, i32 %307, i32 %310)
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @VectorSubtract(i32 %312, i32 %315, i32 %316)
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* %10, align 4
  %320 = call i32 @VectorNormalize(i32 %318, i32 %319)
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %10, align 4
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @VectorAdd(i32 %323, i32 %324, i32 %327)
  br label %329

329:                                              ; preds = %219
  %330 = load i32, i32* %3, align 4
  %331 = add nsw i32 %330, 3
  store i32 %331, i32* %3, align 4
  br label %213

332:                                              ; preds = %213
  br label %333

333:                                              ; preds = %332, %194
  store i32 0, i32* %3, align 4
  br label %334

334:                                              ; preds = %359, %333
  %335 = load i32, i32* %3, align 4
  %336 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %362

338:                                              ; preds = %334
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 -3, i32* %344, align 4
  %345 = load i8*, i8** @LS_NONE, align 8
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 4
  %348 = load i8**, i8*** %347, align 8
  %349 = load i32, i32* %3, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  store i8* %345, i8** %351, align 8
  %352 = load i8*, i8** @LS_NONE, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 3
  %355 = load i8**, i8*** %354, align 8
  %356 = load i32, i32* %3, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8*, i8** %355, i64 %357
  store i8* %352, i8** %358, align 8
  br label %359

359:                                              ; preds = %338
  %360 = load i32, i32* %3, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %3, align 4
  br label %334

362:                                              ; preds = %334
  %363 = load i8*, i8** @LS_NORMAL, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 4
  %366 = load i8**, i8*** %365, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 0
  store i8* %363, i8** %367, align 8
  %368 = load i8*, i8** @LS_NORMAL, align 8
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 3
  %371 = load i8**, i8*** %370, align 8
  %372 = getelementptr inbounds i8*, i8** %371, i64 0
  store i8* %368, i8** %372, align 8
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @VectorCopy(i32 %375, i32 %378)
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 6
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @VectorCopy(i32 %384, i32 %389)
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 6
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @VectorCopy(i32 %395, i32 %400)
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 6
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 2
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @VectorCopy(i32 %406, i32 %411)
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 5
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @qfalse, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %425

418:                                              ; preds = %362
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 2
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @VectorClear(i32 %423)
  br label %425

425:                                              ; preds = %418, %362
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %427 = call i32 @OptimizeTriangleSurface(%struct.TYPE_14__* %426)
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %429 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %430 = call i32 @EmitDrawVerts(%struct.TYPE_14__* %428, %struct.TYPE_16__* %429)
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %433 = call i32 @EmitDrawIndexes(%struct.TYPE_14__* %431, %struct.TYPE_16__* %432)
  %434 = load i32*, i32** @numSurfacesByType, align 8
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 4
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds i32, i32* %434, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %438, align 4
  ret void
}

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i8* @EmitShader(i8*, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32, i32) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @OptimizeTriangleSurface(%struct.TYPE_14__*) #1

declare dso_local i32 @EmitDrawVerts(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @EmitDrawIndexes(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
