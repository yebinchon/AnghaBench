; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_AddEntitiesVisibleFromPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_AddEntitiesVisibleFromPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (i32)* }

@sv = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"FIXING ENT->S.NUMBER!!!\0A\00", align 1
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@SVF_SINGLECLIENT = common dso_local global i32 0, align 4
@SVF_NOTSINGLECLIENT = common dso_local global i32 0, align 4
@SVF_CLIENTMASK = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SVF_CLIENTMASK: clientNum >= 32\00", align 1
@SVF_BROADCAST = common dso_local global i32 0, align 4
@SVF_PORTAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_23__*, i32*, i32)* @SV_AddEntitiesVisibleFromPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_AddEntitiesVisibleFromPoint(i32 %0, %struct.TYPE_23__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = call %struct.TYPE_24__* (...) @dmlab_context()
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %19, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %26(i32 %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @sv, i32 0, i32 2), align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %335

34:                                               ; preds = %4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CM_PointLeafnum(i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @CM_LeafArea(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @CM_LeafCluster(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @CM_WriteAreaBits(i32 %43, i32 %44)
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32* @CM_ClusterPVS(i32 %48)
  store i32* %49, i32** %17, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %332, %34
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @sv, i32 0, i32 0), align 8
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %335

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.TYPE_22__* @SV_GentityNum(i32 %55)
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %11, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %332

63:                                               ; preds = %54
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SVF_NOCLIENT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %332

85:                                               ; preds = %76
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SVF_SINGLECLIENT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %97, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %332

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %85
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SVF_NOTSINGLECLIENT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %105
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %332

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %105
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SVF_CLIENTMASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %125
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %137, 32
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @ERR_DROP, align 4
  %141 = call i32 @Com_Error(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 1, %151
  %153 = and i32 %147, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %332

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156, %125
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %159 = call %struct.TYPE_21__* @SV_SvEntityForGentity(%struct.TYPE_22__* %158)
  store %struct.TYPE_21__* %159, %struct.TYPE_21__** %12, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @sv, i32 0, i32 1), align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %332

166:                                              ; preds = %157
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @SVF_BROADCAST, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174, %166
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @SV_AddEntToSnapshot(%struct.TYPE_21__* %178, %struct.TYPE_22__* %179, i32* %180)
  br label %332

182:                                              ; preds = %174
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @CM_AreasConnected(i32 %183, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @CM_AreasConnected(i32 %190, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %189
  br label %332

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %182
  %199 = load i32*, i32** %17, align 8
  store i32* %199, i32** %18, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  br label %332

205:                                              ; preds = %198
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %206

206:                                              ; preds = %233, %205
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %206
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %13, align 4
  %220 = load i32*, i32** %18, align 8
  %221 = load i32, i32* %13, align 4
  %222 = ashr i32 %221, 3
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %13, align 4
  %227 = and i32 %226, 7
  %228 = shl i32 1, %227
  %229 = and i32 %225, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %212
  br label %236

232:                                              ; preds = %212
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %206

236:                                              ; preds = %231, %206
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %242, label %281

242:                                              ; preds = %236
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %279

247:                                              ; preds = %242
  br label %248

248:                                              ; preds = %268, %247
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = icmp sle i32 %249, %252
  br i1 %253, label %254, label %271

254:                                              ; preds = %248
  %255 = load i32*, i32** %18, align 8
  %256 = load i32, i32* %13, align 4
  %257 = ashr i32 %256, 3
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %13, align 4
  %262 = and i32 %261, 7
  %263 = shl i32 1, %262
  %264 = and i32 %260, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %254
  br label %271

267:                                              ; preds = %254
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %13, align 4
  br label %248

271:                                              ; preds = %266, %248
  %272 = load i32, i32* %13, align 4
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %272, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %332

278:                                              ; preds = %271
  br label %280

279:                                              ; preds = %242
  br label %332

280:                                              ; preds = %278
  br label %281

281:                                              ; preds = %280, %236
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %284 = load i32*, i32** %7, align 8
  %285 = call i32 @SV_AddEntToSnapshot(%struct.TYPE_21__* %282, %struct.TYPE_22__* %283, i32* %284)
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @SVF_PORTAL, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %331

293:                                              ; preds = %281
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %323

299:                                              ; preds = %293
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %5, align 4
  %305 = load i32, i32* %21, align 4
  %306 = call i32 @VectorSubtract(i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %21, align 4
  %308 = call float @VectorLengthSquared(i32 %307)
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sitofp i32 %312 to float
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sitofp i32 %317 to float
  %319 = fmul float %313, %318
  %320 = fcmp ogt float %308, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %299
  br label %332

322:                                              ; preds = %299
  br label %323

323:                                              ; preds = %322, %293
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %329 = load i32*, i32** %7, align 8
  %330 = load i32, i32* @qtrue, align 4
  call void @SV_AddEntitiesVisibleFromPoint(i32 %327, %struct.TYPE_23__* %328, i32* %329, i32 %330)
  br label %331

331:                                              ; preds = %323, %281
  br label %332

332:                                              ; preds = %331, %321, %279, %277, %204, %196, %177, %165, %155, %123, %103, %84, %62
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %9, align 4
  br label %50

335:                                              ; preds = %33, %50
  ret void
}

declare dso_local %struct.TYPE_24__* @dmlab_context(...) #1

declare dso_local i32 @CM_PointLeafnum(i32) #1

declare dso_local i32 @CM_LeafArea(i32) #1

declare dso_local i32 @CM_LeafCluster(i32) #1

declare dso_local i32 @CM_WriteAreaBits(i32, i32) #1

declare dso_local i32* @CM_ClusterPVS(i32) #1

declare dso_local %struct.TYPE_22__* @SV_GentityNum(i32) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local %struct.TYPE_21__* @SV_SvEntityForGentity(%struct.TYPE_22__*) #1

declare dso_local i32 @SV_AddEntToSnapshot(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @CM_AreasConnected(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLengthSquared(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
