; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps.c_AllocateLightmaps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps.c_AllocateLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"--- AllocateLightmaps ---\0A\00", align 1
@numSortShaders = common dso_local global i32 0, align 4
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_9__* null, align 8
@SURF_VERTEXLIT = common dso_local global i32 0, align 4
@SURF_FACE = common dso_local global i64 0, align 8
@SURF_PATCH = common dso_local global i64 0, align 8
@surfsOnShader = common dso_local global %struct.TYPE_9__** null, align 8
@MAX_MAP_SHADERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MAX_MAP_SHADERS\00", align 1
@SURF_TERRAIN = common dso_local global i64 0, align 8
@SURF_META = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%9d unique shaders\0A\00", align 1
@SURF_POINTLIGHT = common dso_local global i32 0, align 4
@SURF_NOLIGHTMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%9d exact lightmap texels\0A\00", align 1
@c_exactLightmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%9d block lightmap texels\0A\00", align 1
@numLightmaps = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"%9d non-planar or terrain lightmap texels\0A\00", align 1
@c_nonplanarLightmap = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%9d planar patch lightmaps\0A\00", align 1
@c_planarPatch = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"%9d lightmap textures, size: %d Kbytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AllocateLightmaps(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load i32, i32* @SYS_VRB, align 4
  %8 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @numSortShaders, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %105, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @numMapDrawSurfs, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapDrawSurfs, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %6, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SURF_VERTEXLIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %105

31:                                               ; preds = %16
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %105

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SURF_FACE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SURF_PATCH, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %105

50:                                               ; preds = %43, %37
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @numSortShaders, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = icmp eq %struct.TYPE_8__* %58, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %55
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %68, i64 %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %76, i64 %78
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %79, align 8
  br label %84

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %51

84:                                               ; preds = %67, %51
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @numSortShaders, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i32, i32* @numSortShaders, align 4
  %90 = load i32, i32* @MAX_MAP_SHADERS, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %96, i64 %98
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %101, align 8
  %102 = load i32, i32* @numSortShaders, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @numSortShaders, align 4
  br label %104

104:                                              ; preds = %94, %84
  br label %105

105:                                              ; preds = %104, %49, %36, %30
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %12

108:                                              ; preds = %12
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %212, %108
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @numMapDrawSurfs, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %215

116:                                              ; preds = %112
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapDrawSurfs, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %5, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %6, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SURF_VERTEXLIT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %212

131:                                              ; preds = %116
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %212

137:                                              ; preds = %131
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SURF_TERRAIN, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SURF_META, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %212

150:                                              ; preds = %143, %137
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @VectorLength(i32 %153)
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %212

157:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %188, %157
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @numSortShaders, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %158
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %166, i64 %168
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = icmp eq %struct.TYPE_8__* %165, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %162
  %175 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %175, i64 %177
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  store %struct.TYPE_9__* %179, %struct.TYPE_9__** %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %183, i64 %185
  store %struct.TYPE_9__* %182, %struct.TYPE_9__** %186, align 8
  br label %191

187:                                              ; preds = %162
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %158

191:                                              ; preds = %174, %158
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @numSortShaders, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load i32, i32* @numSortShaders, align 4
  %197 = load i32, i32* @MAX_MAP_SHADERS, align 4
  %198 = icmp sge i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %195
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %203, i64 %205
  store %struct.TYPE_9__* %202, %struct.TYPE_9__** %206, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %208, align 8
  %209 = load i32, i32* @numSortShaders, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @numSortShaders, align 4
  br label %211

211:                                              ; preds = %201, %191
  br label %212

212:                                              ; preds = %211, %156, %149, %136, %130
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %112

215:                                              ; preds = %112
  %216 = load i32, i32* @SYS_VRB, align 4
  %217 = load i32, i32* @numSortShaders, align 4
  %218 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %269, %215
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* @numSortShaders, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %272

223:                                              ; preds = %219
  %224 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %224, i64 %226
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  store %struct.TYPE_8__* %230, %struct.TYPE_8__** %6, align 8
  %231 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @surfsOnShader, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %231, i64 %233
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  store %struct.TYPE_9__* %235, %struct.TYPE_9__** %5, align 8
  br label %236

236:                                              ; preds = %264, %223
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %238 = icmp ne %struct.TYPE_9__* %237, null
  br i1 %238, label %239, label %268

239:                                              ; preds = %236
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SURF_POINTLIGHT, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  store i32 -3, i32* %248, align 8
  br label %263

249:                                              ; preds = %239
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @SURF_NOLIGHTMAP, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  store i32 -1, i32* %258, align 8
  br label %262

259:                                              ; preds = %249
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %261 = call i32 @AllocateLightmapForSurface(%struct.TYPE_9__* %260)
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %246
  br label %264

264:                                              ; preds = %263
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  store %struct.TYPE_9__* %267, %struct.TYPE_9__** %5, align 8
  br label %236

268:                                              ; preds = %236
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %3, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %3, align 4
  br label %219

272:                                              ; preds = %219
  %273 = load i32, i32* @SYS_VRB, align 4
  %274 = load i32, i32* @c_exactLightmap, align 4
  %275 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %273, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @SYS_VRB, align 4
  %277 = load i32, i32* @numLightmaps, align 4
  %278 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %279 = mul nsw i32 %277, %278
  %280 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %281 = mul nsw i32 %279, %280
  %282 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %276, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* @SYS_VRB, align 4
  %284 = load i32, i32* @c_nonplanarLightmap, align 4
  %285 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %283, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* @SYS_VRB, align 4
  %287 = load i32, i32* @c_planarPatch, align 4
  %288 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %286, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @SYS_VRB, align 4
  %290 = load i32, i32* @numLightmaps, align 4
  %291 = load i32, i32* @numLightmaps, align 4
  %292 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %293 = mul nsw i32 %291, %292
  %294 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %295 = mul nsw i32 %293, %294
  %296 = mul nsw i32 %295, 3
  %297 = sdiv i32 %296, 1024
  %298 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %289, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %290, i32 %297)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i64 @VectorLength(i32) #1

declare dso_local i32 @AllocateLightmapForSurface(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
