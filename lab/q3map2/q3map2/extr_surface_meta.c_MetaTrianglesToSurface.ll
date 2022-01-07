; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_MetaTrianglesToSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_MetaTrianglesToSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@maxSurfaceVerts = common dso_local global i32 0, align 4
@maxSurfaceIndexes = common dso_local global i32 0, align 4
@SURFACE_META = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@numMetaTriangles = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d...\00", align 1
@GOOD_SCORE = common dso_local global i32 0, align 4
@ADEQUATE_SCORE = common dso_local global i32 0, align 4
@numMergedSurfaces = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32*, i32*)* @MetaTrianglesToSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MetaTrianglesToSurface(i32 %0, %struct.TYPE_8__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32, i32* @maxSurfaceVerts, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i8* @safe_malloc(i32 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %18, align 8
  %27 = load i32, i32* @maxSurfaceIndexes, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i8* @safe_malloc(i32 %30)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %19, align 8
  store i32 0, i32* %9, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %15, align 8
  br label %34

34:                                               ; preds = %279, %4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %284

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %279

44:                                               ; preds = %38
  %45 = load i32, i32* @SURFACE_META, align 4
  %46 = call %struct.TYPE_9__* @AllocDrawSurface(i32 %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %17, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 15
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 14
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 13
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 11
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %18, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @VectorCopy(i32 %95, i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @AllocSideRef(i32 %102, i32* null)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ClearBounds(i32 %108, i32 %111)
  %113 = load i32*, i32** %18, align 8
  %114 = load i32, i32* @maxSurfaceVerts, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memset(i32* %113, i32 0, i32 %117)
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* @maxSurfaceIndexes, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 4, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memset(i32* %119, i32 0, i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %127 = load i64, i64* @qfalse, align 8
  %128 = call i32 @AddMetaTriangleToSurface(%struct.TYPE_9__* %125, %struct.TYPE_8__* %126, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %44
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %130, %44
  %135 = load i64, i64* @qtrue, align 8
  store i64 %135, i64* %20, align 8
  br label %136

136:                                              ; preds = %231, %134
  %137 = load i64, i64* %20, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %232

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 10, %141
  %143 = load i32, i32* @numMetaTriangles, align 4
  %144 = sdiv i32 %142, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %145, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %139
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %7, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @SYS_VRB, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @Sys_FPrintf(i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %139
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %156 = load i64, i64* @qfalse, align 8
  store i64 %156, i64* %20, align 8
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %16, align 8
  br label %163

163:                                              ; preds = %204, %155
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %209

167:                                              ; preds = %163
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %204

173:                                              ; preds = %167
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %176 = load i64, i64* @qtrue, align 8
  %177 = call i32 @AddMetaTriangleToSurface(%struct.TYPE_9__* %174, %struct.TYPE_8__* %175, i64 %176)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %203

181:                                              ; preds = %173
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @GOOD_SCORE, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %202

187:                                              ; preds = %181
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = load i64, i64* @qfalse, align 8
  %194 = call i32 @AddMetaTriangleToSurface(%struct.TYPE_9__* %188, %struct.TYPE_8__* %192, i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %187
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %196, %187
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %201 = load i64, i64* @qtrue, align 8
  store i64 %201, i64* %20, align 8
  br label %202

202:                                              ; preds = %200, %181
  br label %203

203:                                              ; preds = %202, %173
  br label %204

204:                                              ; preds = %203, %172
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 1
  store %struct.TYPE_8__* %208, %struct.TYPE_8__** %16, align 8
  br label %163

209:                                              ; preds = %163
  %210 = load i32, i32* %12, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %209
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* @ADEQUATE_SCORE, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %220
  %222 = load i64, i64* @qfalse, align 8
  %223 = call i32 @AddMetaTriangleToSurface(%struct.TYPE_9__* %217, %struct.TYPE_8__* %221, i64 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %216
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %225, %216
  %230 = load i64, i64* @qtrue, align 8
  store i64 %230, i64* %20, align 8
  br label %231

231:                                              ; preds = %229, %212, %209
  br label %136

232:                                              ; preds = %136
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = mul i64 %236, 4
  %238 = trunc i64 %237 to i32
  %239 = call i8* @safe_malloc(i32 %238)
  %240 = bitcast i8* %239 to i32*
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  store i32* %240, i32** %242, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32*, i32** %18, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 4
  %252 = trunc i64 %251 to i32
  %253 = call i32 @memcpy(i32* %245, i32* %246, i32 %252)
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = mul i64 %257, 4
  %259 = trunc i64 %258 to i32
  %260 = call i8* @safe_malloc(i32 %259)
  %261 = bitcast i8* %260 to i32*
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  store i32* %261, i32** %263, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32*, i32** %19, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = mul i64 %271, 4
  %273 = trunc i64 %272 to i32
  %274 = call i32 @memcpy(i32* %266, i32* %267, i32 %273)
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %276 = call i32 @ClassifySurfaces(i32 1, %struct.TYPE_9__* %275)
  %277 = load i32, i32* @numMergedSurfaces, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* @numMergedSurfaces, align 4
  br label %279

279:                                              ; preds = %232, %43
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 1
  store %struct.TYPE_8__* %283, %struct.TYPE_8__** %15, align 8
  br label %34

284:                                              ; preds = %34
  %285 = load i32*, i32** %18, align 8
  %286 = call i32 @free(i32* %285)
  %287 = load i32*, i32** %19, align 8
  %288 = call i32 @free(i32* %287)
  ret void
}

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local %struct.TYPE_9__* @AllocDrawSurface(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AllocSideRef(i32, i32*) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AddMetaTriangleToSurface(%struct.TYPE_9__*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ClassifySurfaces(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
