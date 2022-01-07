; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterDrawsurfsIntoTree.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterDrawsurfsIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, i32, i64, %struct.TYPE_37__*, i32, i32, i32, %struct.TYPE_38__* }
%struct.TYPE_37__ = type { i64, i32, i64, i32, i64*, i64*, i32*, i32, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"--- FilterDrawsurfsIntoTree ---\0A\00", align 1
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_39__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@C_NODRAW = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_40__* null, align 8
@numBSPDrawSurfaces = common dso_local global i32 0, align 4
@bspDrawSurfaces = common dso_local global %struct.TYPE_41__* null, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"WARNING: Potentially bad %s surface (%d: %d, %d)\0A     %s\0A\00", align 1
@surfaceTypes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%9d references\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%9d (%d) emitted drawsurfs\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%9d stripped face surfaces\0A\00", align 1
@numStripSurfaces = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"%9d fanned face surfaces\0A\00", align 1
@numFanSurfaces = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"%9d surface models generated\0A\00", align 1
@numSurfaceModels = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%9d skybox surfaces generated\0A\00", align 1
@NUM_SURFACE_TYPES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"%9d %s surfaces\0A\00", align 1
@numSurfacesByType = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"%9d redundant indexes supressed, saving %d Kbytes\0A\00", align 1
@numRedundantIndexes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FilterDrawsurfsIntoTree(%struct.TYPE_40__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_41__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %3, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %4, align 8
  %17 = load i32, i32* @SYS_VRB, align 4
  %18 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %386, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @numMapDrawSurfs, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %389

26:                                               ; preds = %22
  %27 = load %struct.TYPE_39__*, %struct.TYPE_39__** @mapDrawSurfs, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %27, i64 %29
  store %struct.TYPE_39__* %30, %struct.TYPE_39__** %7, align 8
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 135
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 129
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %386

46:                                               ; preds = %40, %35, %26
  %47 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %48, align 8
  store %struct.TYPE_37__* %49, %struct.TYPE_37__** %8, align 8
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @qtrue, align 8
  %60 = call i32 @AddReferenceToTree_r(%struct.TYPE_39__* %55, i32 %58, i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i64, i64* @qfalse, align 8
  %62 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  br label %206

64:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %65
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_38__*, %struct.TYPE_38__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @TCMod(i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %65

88:                                               ; preds = %65
  %89 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %99, align 8
  %101 = call i32 @ColorMod(i32 %93, i32 %97, %struct.TYPE_38__* %100)
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %103 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %104 = call i32 @VolumeColorMods(%struct.TYPE_40__* %102, %struct.TYPE_39__* %103)
  %105 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %88
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %111 = call i32 @Fur(%struct.TYPE_39__* %110)
  br label %112

112:                                              ; preds = %109, %88
  %113 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %119 = call i32 @Foliage(%struct.TYPE_39__* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %121, i32 0, i32 5
  %123 = load i64*, i64** %122, align 8
  %124 = icmp ne i64* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 5
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %134 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @AddSurfaceFlare(%struct.TYPE_39__* %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %125, %120
  %139 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %140 = icmp ne %struct.TYPE_37__* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @C_NODRAW, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 130
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %386

154:                                              ; preds = %148, %141, %138
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %156 = call i32 @BiasSurfaceTextures(%struct.TYPE_39__* %155)
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %158 = load %struct.TYPE_40__*, %struct.TYPE_40__** @entities, align 8
  %159 = icmp ne %struct.TYPE_40__* %157, %158
  br i1 %159, label %160, label %205

160:                                              ; preds = %154
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @qfalse, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %205

166:                                              ; preds = %160
  %167 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @VectorAdd(i32 %169, i32 %172, i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @VectorScale(i32 %175, float 5.000000e-01, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @VectorAdd(i32 %178, i32 %181, i32 %182)
  %184 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @VectorAdd(i32 %186, i32 %189, i32 %190)
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @VectorAdd(i32 %194, i32 %197, i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @FogForBounds(i32 %200, i32 %201, float 1.000000e+00)
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %166, %160, %154
  br label %206

206:                                              ; preds = %205, %54
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %209, i32 0, i32 4
  %211 = load i64*, i64** %210, align 8
  %212 = icmp ne i64* %211, null
  br i1 %212, label %213, label %231

213:                                              ; preds = %206
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %216, i32 0, i32 4
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %213
  %223 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_37__*, %struct.TYPE_37__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %225, i32 0, i32 4
  %227 = load i64*, i64** %226, align 8
  %228 = call %struct.TYPE_37__* @ShaderInfoForShader(i64* %227)
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 3
  store %struct.TYPE_37__* %228, %struct.TYPE_37__** %230, align 8
  br label %231

231:                                              ; preds = %222, %213, %206
  %232 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  switch i32 %234, label %325 [
    i32 136, label %235
    i32 137, label %235
    i32 130, label %249
    i32 128, label %263
    i32 132, label %263
    i32 131, label %263
    i32 133, label %277
    i32 134, label %291
    i32 135, label %308
    i32 129, label %322
  ]

235:                                              ; preds = %231, %231
  %236 = load i32, i32* %12, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %240 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %241 = call i32 @FilterFaceIntoTree(%struct.TYPE_39__* %239, %struct.TYPE_36__* %240)
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %238, %235
  %243 = load i32, i32* %12, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %247 = call i32 @EmitFaceSurface(%struct.TYPE_39__* %246)
  br label %248

248:                                              ; preds = %245, %242
  br label %326

249:                                              ; preds = %231
  %250 = load i32, i32* %12, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %255 = call i32 @FilterPatchIntoTree(%struct.TYPE_39__* %253, %struct.TYPE_36__* %254)
  store i32 %255, i32* %12, align 4
  br label %256

256:                                              ; preds = %252, %249
  %257 = load i32, i32* %12, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %261 = call i32 @EmitPatchSurface(%struct.TYPE_39__* %260)
  br label %262

262:                                              ; preds = %259, %256
  br label %326

263:                                              ; preds = %231, %231, %231
  %264 = load i32, i32* %12, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %269 = call i32 @FilterTrianglesIntoTree(%struct.TYPE_39__* %267, %struct.TYPE_36__* %268)
  store i32 %269, i32* %12, align 4
  br label %270

270:                                              ; preds = %266, %263
  %271 = load i32, i32* %12, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %275 = call i32 @EmitTriangleSurface(%struct.TYPE_39__* %274)
  br label %276

276:                                              ; preds = %273, %270
  br label %326

277:                                              ; preds = %231
  %278 = load i32, i32* %12, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %283 = call i32 @FilterFoliageIntoTree(%struct.TYPE_39__* %281, %struct.TYPE_36__* %282)
  store i32 %283, i32* %12, align 4
  br label %284

284:                                              ; preds = %280, %277
  %285 = load i32, i32* %12, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %289 = call i32 @EmitTriangleSurface(%struct.TYPE_39__* %288)
  br label %290

290:                                              ; preds = %287, %284
  br label %326

291:                                              ; preds = %231
  %292 = load i32, i32* %12, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i64, i64* @qfalse, align 8
  %300 = call i32 @AddReferenceToTree_r(%struct.TYPE_39__* %295, i32 %298, i64 %299)
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %294, %291
  %302 = load i32, i32* %12, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %306 = call i32 @EmitTriangleSurface(%struct.TYPE_39__* %305)
  br label %307

307:                                              ; preds = %304, %301
  br label %326

308:                                              ; preds = %231
  %309 = load i32, i32* %12, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %314 = call i32 @FilterFlareSurfIntoTree(%struct.TYPE_39__* %312, %struct.TYPE_36__* %313)
  store i32 %314, i32* %12, align 4
  br label %315

315:                                              ; preds = %311, %308
  %316 = load i32, i32* %12, align 4
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %320 = call i32 @EmitFlareSurface(%struct.TYPE_39__* %319)
  br label %321

321:                                              ; preds = %318, %315
  br label %326

322:                                              ; preds = %231
  store i32 1, i32* %12, align 4
  %323 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %324 = call i32 @EmitFlareSurface(%struct.TYPE_39__* %323)
  br label %326

325:                                              ; preds = %231
  store i32 0, i32* %12, align 4
  br label %326

326:                                              ; preds = %325, %322, %321, %307, %290, %276, %262, %248
  %327 = load i32, i32* %12, align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %385

329:                                              ; preds = %326
  %330 = load i32, i32* %13, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %13, align 4
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %14, align 4
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %336 = load i32, i32* @numBSPDrawSurfaces, align 4
  %337 = sub nsw i32 %336, 1
  %338 = call i32 @SetSurfaceExtra(%struct.TYPE_39__* %335, i32 %337)
  %339 = load %struct.TYPE_41__*, %struct.TYPE_41__** @bspDrawSurfaces, align 8
  %340 = load i32, i32* @numBSPDrawSurfaces, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %339, i64 %342
  store %struct.TYPE_41__* %343, %struct.TYPE_41__** %16, align 8
  %344 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %345 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 3
  br i1 %347, label %348, label %374

348:                                              ; preds = %329
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %350 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp sgt i32 %351, 3
  br i1 %352, label %353, label %374

353:                                              ; preds = %348
  %354 = load i32, i32* @SYS_WRN, align 4
  %355 = load i32*, i32** @surfaceTypes, align 8
  %356 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %355, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @numBSPDrawSurfaces, align 4
  %363 = sub nsw i32 %362, 1
  %364 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %368 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %354, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %361, i32 %363, i32 %366, i32 %369, i32 %372)
  br label %374

374:                                              ; preds = %353, %348, %329
  %375 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %381 = call i32 @MakeSkyboxSurface(%struct.TYPE_39__* %380)
  %382 = load i32, i32* %15, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %15, align 4
  br label %384

384:                                              ; preds = %379, %374
  br label %385

385:                                              ; preds = %384, %326
  br label %386

386:                                              ; preds = %385, %153, %45
  %387 = load i32, i32* %5, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %5, align 4
  br label %22

389:                                              ; preds = %22
  %390 = load i32, i32* @SYS_VRB, align 4
  %391 = load i32, i32* %14, align 4
  %392 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %390, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %391)
  %393 = load i32, i32* @SYS_VRB, align 4
  %394 = load i32, i32* %13, align 4
  %395 = load i32, i32* @numBSPDrawSurfaces, align 4
  %396 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %393, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %394, i32 %395)
  %397 = load i32, i32* @SYS_VRB, align 4
  %398 = load i32, i32* @numStripSurfaces, align 4
  %399 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %397, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %398)
  %400 = load i32, i32* @SYS_VRB, align 4
  %401 = load i32, i32* @numFanSurfaces, align 4
  %402 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %400, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %401)
  %403 = load i32, i32* @SYS_VRB, align 4
  %404 = load i32, i32* @numSurfaceModels, align 4
  %405 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %403, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %404)
  %406 = load i32, i32* @SYS_VRB, align 4
  %407 = load i32, i32* %15, align 4
  %408 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %406, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %407)
  store i32 0, i32* %5, align 4
  br label %409

409:                                              ; preds = %426, %389
  %410 = load i32, i32* %5, align 4
  %411 = load i32, i32* @NUM_SURFACE_TYPES, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %429

413:                                              ; preds = %409
  %414 = load i32, i32* @SYS_VRB, align 4
  %415 = load i32*, i32** @numSurfacesByType, align 8
  %416 = load i32, i32* %5, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32*, i32** @surfaceTypes, align 8
  %421 = load i32, i32* %5, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %414, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %419, i32 %424)
  br label %426

426:                                              ; preds = %413
  %427 = load i32, i32* %5, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %5, align 4
  br label %409

429:                                              ; preds = %409
  %430 = load i32, i32* @SYS_VRB, align 4
  %431 = load i32, i32* @numRedundantIndexes, align 4
  %432 = load i32, i32* @numRedundantIndexes, align 4
  %433 = mul nsw i32 %432, 4
  %434 = sdiv i32 %433, 1024
  %435 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %430, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %431, i32 %434)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @AddReferenceToTree_r(%struct.TYPE_39__*, i32, i64) #1

declare dso_local i32 @TCMod(i32, i32) #1

declare dso_local i32 @ColorMod(i32, i32, %struct.TYPE_38__*) #1

declare dso_local i32 @VolumeColorMods(%struct.TYPE_40__*, %struct.TYPE_39__*) #1

declare dso_local i32 @Fur(%struct.TYPE_39__*) #1

declare dso_local i32 @Foliage(%struct.TYPE_39__*) #1

declare dso_local i32 @AddSurfaceFlare(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @BiasSurfaceTextures(%struct.TYPE_39__*) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @FogForBounds(i32, i32, float) #1

declare dso_local %struct.TYPE_37__* @ShaderInfoForShader(i64*) #1

declare dso_local i32 @FilterFaceIntoTree(%struct.TYPE_39__*, %struct.TYPE_36__*) #1

declare dso_local i32 @EmitFaceSurface(%struct.TYPE_39__*) #1

declare dso_local i32 @FilterPatchIntoTree(%struct.TYPE_39__*, %struct.TYPE_36__*) #1

declare dso_local i32 @EmitPatchSurface(%struct.TYPE_39__*) #1

declare dso_local i32 @FilterTrianglesIntoTree(%struct.TYPE_39__*, %struct.TYPE_36__*) #1

declare dso_local i32 @EmitTriangleSurface(%struct.TYPE_39__*) #1

declare dso_local i32 @FilterFoliageIntoTree(%struct.TYPE_39__*, %struct.TYPE_36__*) #1

declare dso_local i32 @FilterFlareSurfIntoTree(%struct.TYPE_39__*, %struct.TYPE_36__*) #1

declare dso_local i32 @EmitFlareSurface(%struct.TYPE_39__*) #1

declare dso_local i32 @SetSurfaceExtra(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @MakeSkyboxSurface(%struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
