; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServersResponsePacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServersResponsePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32 }

@MAX_SERVERSPERPACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CL_ServersResponsePacket from %s\0A\00", align 1
@cls = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@NA_IP = common dso_local global i32 0, align 4
@NA_IP6 = common dso_local global i32 0, align 4
@MAX_GLOBAL_SERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%d servers parsed (total %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServersResponsePacket(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i32, i32* @MAX_SERVERSPERPACKET, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca %struct.TYPE_12__, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = call i32 @NET_AdrToStringwPort(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %21)
  %23 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  br label %27

27:                                               ; preds = %26, %3
  store i32 0, i32* %13, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8* %36, i8** %15, align 8
  br label %37

37:                                               ; preds = %54, %27
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %37
  br label %58

51:                                               ; preds = %45, %42
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %14, align 8
  br label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %14, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %37, label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %207, %58
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %208

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %106

69:                                               ; preds = %64
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = icmp ult i64 %76, 13
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %208

79:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 8
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %14, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %88, i32* %96, align 4
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load i32, i32* @NA_IP, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 8
  br label %160

106:                                              ; preds = %64
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %158

109:                                              ; preds = %106
  %110 = load i8*, i8** %14, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %158

114:                                              ; preds = %109
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %14, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = icmp ult i64 %121, 13
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %208

124:                                              ; preds = %114
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %142, %124
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %127, 8
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load i8*, i8** %14, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %14, align 8
  %132 = load i8, i8* %130, align 1
  %133 = sext i8 %132 to i32
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 16
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %133, i32* %141, align 4
  br label %142

142:                                              ; preds = %129
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %125

145:                                              ; preds = %125
  %146 = load i32, i32* @NA_IP6, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  store i32 %146, i32* %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  br label %159

158:                                              ; preds = %109, %106
  br label %208

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %100
  %161 = load i8*, i8** %14, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %14, align 8
  %163 = load i8, i8* %161, align 1
  %164 = sext i8 %163 to i32
  %165 = shl i32 %164, 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 16
  %170 = load i8*, i8** %14, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %14, align 8
  %172 = load i8, i8* %170, align 1
  %173 = sext i8 %172 to i32
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 16
  %179 = add nsw i32 %178, %173
  store i32 %179, i32* %177, align 16
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 16
  %185 = call i32 @BigShort(i32 %184)
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 16
  %190 = load i8*, i8** %14, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 92
  br i1 %193, label %194, label %200

194:                                              ; preds = %160
  %195 = load i8*, i8** %14, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 47
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %208

200:                                              ; preds = %194, %160
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @MAX_SERVERSPERPACKET, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %208

207:                                              ; preds = %200
  br label %59

208:                                              ; preds = %206, %199, %158, %123, %78, %59
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  store i32 %209, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %210

210:                                              ; preds = %259, %208
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %217 = icmp slt i32 %215, %216
  br label %218

218:                                              ; preds = %214, %210
  %219 = phi i1 [ false, %210 ], [ %217, %214 ]
  br i1 %219, label %220, label %262

220:                                              ; preds = %218
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 3), align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  store %struct.TYPE_11__* %224, %struct.TYPE_11__** %16, align 8
  store i32 0, i32* %8, align 4
  br label %225

225:                                              ; preds = %243, %220
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %246

229:                                              ; preds = %225
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 3), align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %237
  %239 = call i64 @NET_CompareAdr(i32 %235, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %229
  br label %246

242:                                              ; preds = %229
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %225

246:                                              ; preds = %241, %225
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %259

251:                                              ; preds = %246
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %254
  %256 = call i32 @CL_InitServerInfo(%struct.TYPE_11__* %252, %struct.TYPE_12__* %255)
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %251, %250
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %7, align 4
  br label %210

262:                                              ; preds = %218
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %265 = icmp sge i32 %263, %264
  br i1 %265, label %266, label %296

266:                                              ; preds = %262
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %268 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %296

270:                                              ; preds = %266
  br label %271

271:                                              ; preds = %292, %270
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %13, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %277 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %278 = icmp slt i32 %276, %277
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi i1 [ false, %271 ], [ %278, %275 ]
  br i1 %280, label %281, label %295

281:                                              ; preds = %279
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 2), align 8
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i64 %285
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %288
  %290 = bitcast %struct.TYPE_12__* %286 to i8*
  %291 = bitcast %struct.TYPE_12__* %289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %290, i8* align 16 %291, i64 32, i1 false)
  br label %292

292:                                              ; preds = %281
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %271

295:                                              ; preds = %279
  br label %296

296:                                              ; preds = %295, %266, %262
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %300 = add nsw i32 %298, %299
  store i32 %300, i32* %10, align 4
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* %10, align 4
  %303 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %301, i32 %302)
  %304 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %304)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Printf(i8*, i32, ...) #2

declare dso_local i32 @NET_AdrToStringwPort(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #2

declare dso_local i32 @BigShort(i32) #2

declare dso_local i64 @NET_CompareAdr(i32, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #2

declare dso_local i32 @CL_InitServerInfo(%struct.TYPE_11__*, %struct.TYPE_12__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
