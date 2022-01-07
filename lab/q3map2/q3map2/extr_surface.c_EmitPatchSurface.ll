; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitPatchSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_EmitPatchSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32*, i32*, i32, i8**, i8**, i32, i8*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, i64, i32*, i32*, i32, i32, %struct.TYPE_14__*, i64, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_14__ = type { i32, i32, i8*, i64 }
%struct.TYPE_16__ = type { i32 }

@numBSPDrawSurfaces = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_SURFS\00", align 1
@bspDrawSurfaces = common dso_local global %struct.TYPE_17__* null, align 8
@MST_PATCH = common dso_local global i32 0, align 4
@debugSurfaces = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"debugsurfaces\00", align 1
@patchMeta = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"nodraw\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pointlight\00", align 1
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i8* null, align 8
@LS_NORMAL = common dso_local global i8* null, align 8
@qfalse = common dso_local global i64 0, align 8
@numSurfacesByType = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitPatchSurface(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 14
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 10
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %121

22:                                               ; preds = %15, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 13
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 13
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VectorScale(i32 %37, float -1.000000e+00, i32 %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %23

50:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %106, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %102, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %62, 2
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 13
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %76
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %8, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 13
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = add nsw i32 %85, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %93
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %9, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = call i32 @memcpy(%struct.TYPE_16__* %10, %struct.TYPE_16__* %95, i32 4)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = call i32 @memcpy(%struct.TYPE_16__* %97, %struct.TYPE_16__* %98, i32 4)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %101 = call i32 @memcpy(%struct.TYPE_16__* %100, %struct.TYPE_16__* %10, i32 4)
  br label %102

102:                                              ; preds = %65
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %58

105:                                              ; preds = %58
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %51

109:                                              ; preds = %51
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @VectorScale(i32 %114, float -1.000000e+00, i32 %119)
  br label %121

121:                                              ; preds = %109, %15
  %122 = load i64, i64* @numBSPDrawSurfaces, align 8
  %123 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %121
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bspDrawSurfaces, align 8
  %129 = load i64, i64* @numBSPDrawSurfaces, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 %129
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %5, align 8
  %131 = load i64, i64* @numBSPDrawSurfaces, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* @numBSPDrawSurfaces, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* @numBSPDrawSurfaces, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %137 = call i32 @memset(%struct.TYPE_17__* %136, i32 0, i32 72)
  %138 = load i32, i32* @MST_PATCH, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 8
  %141 = load i64, i64* @debugSurfaces, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %127
  %144 = call i8* @EmitShader(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 8
  store i8* %144, i8** %146, align 8
  br label %201

147:                                              ; preds = %127
  %148 = load i64, i64* @patchMeta, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %183

150:                                              ; preds = %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 10
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %6, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 10
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %7, align 4
  %161 = call i32 @ApplySurfaceParm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %6, i32* null)
  %162 = call i32 @ApplySurfaceParm(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32* %6, i32* null)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @VectorClear(i32 %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @VectorClear(i32 %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 11
  store i64 0, i64* %174, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 10
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @EmitShader(i8* %179, i32* %7, i32* %6)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  br label %200

183:                                              ; preds = %147
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 10
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 10
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 10
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = call i8* @EmitShader(i8* %188, i32* %192, i32* %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 8
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %183, %150
  br label %201

201:                                              ; preds = %200, %143
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %242, %201
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %217
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 -3, i32* %227, align 4
  %228 = load i8*, i8** @LS_NONE, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 6
  %231 = load i8**, i8*** %230, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  store i8* %228, i8** %234, align 8
  %235 = load i8*, i8** @LS_NONE, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 5
  %238 = load i8**, i8*** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  store i8* %235, i8** %241, align 8
  br label %242

242:                                              ; preds = %221
  %243 = load i32, i32* %3, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %3, align 4
  br label %217

245:                                              ; preds = %217
  %246 = load i8*, i8** @LS_NORMAL, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 6
  %249 = load i8**, i8*** %248, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 0
  store i8* %246, i8** %250, align 8
  %251 = load i8*, i8** @LS_NORMAL, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 5
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  store i8* %251, i8** %255, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @VectorCopy(i32 %258, i32 %261)
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 7
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @VectorCopy(i32 %267, i32 %272)
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 3
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @VectorCopy(i32 %278, i32 %283)
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 6
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @VectorCopy(i32 %289, i32 %294)
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @qfalse, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %245
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @VectorClear(i32 %306)
  br label %308

308:                                              ; preds = %301, %245
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %311 = call i32 @EmitDrawVerts(%struct.TYPE_15__* %309, %struct.TYPE_17__* %310)
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %314 = call i32 @EmitDrawIndexes(%struct.TYPE_15__* %312, %struct.TYPE_17__* %313)
  %315 = load i32*, i32** @numSurfacesByType, align 8
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 4
  ret void
}

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @EmitShader(i8*, i32*, i32*) #1

declare dso_local i32 @ApplySurfaceParm(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @EmitDrawVerts(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @EmitDrawIndexes(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
