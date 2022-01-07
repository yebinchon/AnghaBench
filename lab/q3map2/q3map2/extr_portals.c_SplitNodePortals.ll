; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_SplitNodePortals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_SplitNodePortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, i32, i32, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_21__**, %struct.TYPE_19__** }
%struct.TYPE_18__ = type { i32* }

@mapplanes = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"SplitNodePortals: mislinked portal\00", align 1
@SPLIT_WINDING_EPSILON = common dso_local global i32 0, align 4
@c_tinyportals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SplitNodePortals(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** @mapplanes, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i64 %16
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %10, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %20, i64 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %6, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %25, i64 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %7, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %3, align 8
  br label %31

31:                                               ; preds = %279, %1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %281

34:                                               ; preds = %31
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %37, i64 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = icmp eq %struct.TYPE_21__* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %55

43:                                               ; preds = %34
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %46, i64 1
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %50 = icmp eq %struct.TYPE_21__* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %54

52:                                               ; preds = %43
  %53 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %58, i64 %60
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %4, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %65, i64 %70
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %8, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %76, i64 0
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = call i32 @RemovePortalFromNode(%struct.TYPE_19__* %73, %struct.TYPE_21__* %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %83, i64 1
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = call i32 @RemovePortalFromNode(%struct.TYPE_19__* %80, %struct.TYPE_21__* %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SPLIT_WINDING_EPSILON, align 4
  %97 = call i32 @ClipWindingEpsilon(%struct.TYPE_18__* %89, i32 %92, i32 %95, i32 %96, %struct.TYPE_18__** %11, %struct.TYPE_18__** %12)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %147

100:                                              ; preds = %55
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = call i64 @WindingIsTiny(%struct.TYPE_18__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @VectorCopy(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %109, %104
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %119
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @VectorCopy(i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %128, %119
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %144 = call i32 @FreeWinding(%struct.TYPE_18__* %143)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  %145 = load i32, i32* @c_tinyportals, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @c_tinyportals, align 4
  br label %147

147:                                              ; preds = %138, %100, %55
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = icmp ne %struct.TYPE_18__* %148, null
  br i1 %149, label %150, label %197

150:                                              ; preds = %147
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %152 = call i64 @WindingIsTiny(%struct.TYPE_18__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %197

154:                                              ; preds = %150
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @VectorCopy(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %159, %154
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %169
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @VectorCopy(i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %178, %169
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %194 = call i32 @FreeWinding(%struct.TYPE_18__* %193)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  %195 = load i32, i32* @c_tinyportals, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @c_tinyportals, align 4
  br label %197

197:                                              ; preds = %188, %150, %147
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %199 = icmp ne %struct.TYPE_18__* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %202 = icmp ne %struct.TYPE_18__* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  br label %279

204:                                              ; preds = %200, %197
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %206 = icmp ne %struct.TYPE_18__* %205, null
  br i1 %206, label %223, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %209 = call i32 @FreeWinding(%struct.TYPE_18__* %208)
  %210 = load i32, i32* %9, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %216 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %213, %struct.TYPE_21__* %214, %struct.TYPE_21__* %215)
  br label %222

217:                                              ; preds = %207
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %221 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %218, %struct.TYPE_21__* %219, %struct.TYPE_21__* %220)
  br label %222

222:                                              ; preds = %217, %212
  br label %279

223:                                              ; preds = %204
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %225 = icmp ne %struct.TYPE_18__* %224, null
  br i1 %225, label %242, label %226

226:                                              ; preds = %223
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %228 = call i32 @FreeWinding(%struct.TYPE_18__* %227)
  %229 = load i32, i32* %9, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %235 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %232, %struct.TYPE_21__* %233, %struct.TYPE_21__* %234)
  br label %241

236:                                              ; preds = %226
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %240 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %237, %struct.TYPE_21__* %238, %struct.TYPE_21__* %239)
  br label %241

241:                                              ; preds = %236, %231
  br label %279

242:                                              ; preds = %223
  %243 = call %struct.TYPE_19__* (...) @AllocPortal()
  store %struct.TYPE_19__* %243, %struct.TYPE_19__** %5, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %246 = bitcast %struct.TYPE_19__* %244 to i8*
  %247 = bitcast %struct.TYPE_19__* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %246, i8* align 8 %247, i64 24, i1 false)
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  store %struct.TYPE_18__* %248, %struct.TYPE_18__** %250, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  %254 = call i32 @FreeWinding(%struct.TYPE_18__* %253)
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  store %struct.TYPE_18__* %255, %struct.TYPE_18__** %257, align 8
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %242
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %264 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %261, %struct.TYPE_21__* %262, %struct.TYPE_21__* %263)
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %268 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %265, %struct.TYPE_21__* %266, %struct.TYPE_21__* %267)
  br label %278

269:                                              ; preds = %242
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %273 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %270, %struct.TYPE_21__* %271, %struct.TYPE_21__* %272)
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %277 = call i32 @AddPortalToNodes(%struct.TYPE_19__* %274, %struct.TYPE_21__* %275, %struct.TYPE_21__* %276)
  br label %278

278:                                              ; preds = %269, %260
  br label %279

279:                                              ; preds = %278, %241, %222, %203
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %280, %struct.TYPE_19__** %3, align 8
  br label %31

281:                                              ; preds = %31
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %283, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @RemovePortalFromNode(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_18__**, %struct.TYPE_18__**) #1

declare dso_local i64 @WindingIsTiny(%struct.TYPE_18__*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_18__*) #1

declare dso_local i32 @AddPortalToNodes(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @AllocPortal(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
