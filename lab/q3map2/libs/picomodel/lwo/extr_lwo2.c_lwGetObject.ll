; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwo2.c_lwGetObject.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwo2.c_lwGetObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_22__*, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, i32, %struct.TYPE_23__, %struct.TYPE_24__, i8**, i32, i8*, i32, i8**, i8*, i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@ID_FORM = common dso_local global i32 0, align 4
@ID_LWO2 = common dso_local global i32 0, align 4
@ID_LWOB = common dso_local global i32 0, align 4
@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @lwGetObject(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %458

22:                                               ; preds = %4
  %23 = call i32 @set_flen(i32 0)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @getU4(i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @getU4(i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @getU4(i32* %28)
  store i32 %29, i32* %15, align 4
  %30 = call i32 (...) @get_flen()
  %31 = icmp ne i32 12, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %458

33:                                               ; preds = %22
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ID_FORM, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  store i32 12, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %458

43:                                               ; preds = %33
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @ID_LWO2, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @ID_LWOB, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.TYPE_21__* @lwGetObject5(i8* %52, i32* %53, i32* %54, i32* %55)
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %5, align 8
  br label %458

57:                                               ; preds = %47
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  store i32 12, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %458

63:                                               ; preds = %43
  %64 = call i8* @_pico_calloc(i32 1, i32 40)
  %65 = bitcast i8* %64 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %10, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = icmp ne %struct.TYPE_21__* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %438

69:                                               ; preds = %63
  %70 = call i8* @_pico_calloc(i32 1, i32 80)
  %71 = bitcast i8* %70 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %11, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = icmp ne %struct.TYPE_22__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %438

75:                                               ; preds = %69
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 4
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %78, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @getU4(i32* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @getU4(i32* %81)
  store i32 %82, i32* %16, align 4
  %83 = call i32 (...) @get_flen()
  %84 = icmp sgt i32 0, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %438

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %362
  %88 = load i32, i32* %16, align 4
  %89 = and i32 %88, 1
  %90 = load i32, i32* %16, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %13, align 4
  switch i32 %92, label %341 [
    i32 136, label %93
    i32 135, label %177
    i32 134, label %186
    i32 128, label %199
    i32 129, label %199
    i32 133, label %228
    i32 141, label %239
    i32 131, label %277
    i32 138, label %286
    i32 140, label %304
    i32 132, label %322
    i32 139, label %340
    i32 130, label %340
    i32 137, label %340
  ]

93:                                               ; preds = %87
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = call i8* @_pico_calloc(i32 1, i32 80)
  %100 = bitcast i8* %99 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %100, %struct.TYPE_22__** %11, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = icmp ne %struct.TYPE_22__* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %438

104:                                              ; preds = %98
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 4
  %107 = bitcast %struct.TYPE_22__** %106 to i8**
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %109 = call i32 @lwListAdd(i8** %107, %struct.TYPE_22__* %108)
  br label %110

110:                                              ; preds = %104, %93
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = call i32 @set_flen(i32 0)
  %116 = load i32*, i32** %7, align 8
  %117 = call i8* @getU2(i32* %116)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 10
  store i8* %117, i8** %119, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i8* @getU2(i32* %120)
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 9
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i8* @getF4(i32* %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 8
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  store i8* %125, i8** %129, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i8* @getF4(i32* %130)
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 8
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  store i8* %131, i8** %135, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i8* @getF4(i32* %136)
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 8
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  store i8* %137, i8** %141, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @getS0(i32* %142)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 8
  %146 = call i32 (...) @get_flen()
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %110
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %110
  br label %438

154:                                              ; preds = %149
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %16, align 4
  %157 = sub i32 %156, 2
  %158 = icmp ule i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32*, i32** %7, align 8
  %161 = call i8* @getU2(i32* %160)
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 6
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %159, %154
  %165 = call i32 (...) @get_flen()
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %18, align 4
  %173 = sub i32 %171, %172
  %174 = load i32, i32* @PICO_SEEK_CUR, align 4
  %175 = call i32 @_pico_memstream_seek(i32* %170, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %169, %164
  br label %346

177:                                              ; preds = %87
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 3
  %182 = call i32 @lwGetPoints(i32* %178, i32 %179, %struct.TYPE_24__* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  br label %438

185:                                              ; preds = %177
  br label %346

186:                                              ; preds = %87
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @lwGetPolygons(i32* %187, i32 %188, %struct.TYPE_23__* %190, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %186
  br label %438

198:                                              ; preds = %186
  br label %346

199:                                              ; preds = %87, %87
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp eq i32 %210, 129
  %212 = zext i1 %211 to i32
  %213 = call i64 @lwGetVMap(i32* %200, i32 %201, i32 %205, i32 %209, i32 %212)
  %214 = inttoptr i64 %213 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %214, %struct.TYPE_22__** %12, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %216 = icmp ne %struct.TYPE_22__* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %199
  br label %438

218:                                              ; preds = %199
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 1
  %221 = bitcast i32* %220 to i8**
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %223 = call i32 @lwListAdd(i8** %221, %struct.TYPE_22__* %222)
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 8
  br label %346

228:                                              ; preds = %87
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 2
  %235 = call i32 @lwGetPolygonTags(i32* %229, i32 %230, i32* %232, %struct.TYPE_23__* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %228
  br label %438

238:                                              ; preds = %228
  br label %346

239:                                              ; preds = %87
  %240 = call i32 @set_flen(i32 0)
  store i32 0, i32* %17, align 4
  br label %241

241:                                              ; preds = %253, %239
  %242 = load i32, i32* %17, align 4
  %243 = icmp slt i32 %242, 6
  br i1 %243, label %244, label %256

244:                                              ; preds = %241
  %245 = load i32*, i32** %7, align 8
  %246 = call i8* @getF4(i32* %245)
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 4
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %17, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  store i8* %246, i8** %252, align 8
  br label %253

253:                                              ; preds = %244
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %17, align 4
  br label %241

256:                                              ; preds = %241
  %257 = call i32 (...) @get_flen()
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp ugt i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260, %256
  br label %438

265:                                              ; preds = %260
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* %16, align 4
  %268 = icmp ult i32 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %265
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %18, align 4
  %273 = sub i32 %271, %272
  %274 = load i32, i32* @PICO_SEEK_CUR, align 4
  %275 = call i32 @_pico_memstream_seek(i32* %270, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %269, %265
  br label %346

277:                                              ; preds = %87
  %278 = load i32*, i32** %7, align 8
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 3
  %282 = call i32 @lwGetTags(i32* %278, i32 %279, i32* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %277
  br label %438

285:                                              ; preds = %277
  br label %346

286:                                              ; preds = %87
  %287 = load i32*, i32** %7, align 8
  %288 = load i32, i32* %16, align 4
  %289 = call i64 @lwGetEnvelope(i32* %287, i32 %288)
  %290 = inttoptr i64 %289 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %290, %struct.TYPE_22__** %12, align 8
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %292 = icmp ne %struct.TYPE_22__* %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %286
  br label %438

294:                                              ; preds = %286
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 8
  %297 = bitcast i32* %296 to i8**
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %299 = call i32 @lwListAdd(i8** %297, %struct.TYPE_22__* %298)
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 8
  br label %346

304:                                              ; preds = %87
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* %16, align 4
  %307 = call i64 @lwGetClip(i32* %305, i32 %306)
  %308 = inttoptr i64 %307 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %308, %struct.TYPE_22__** %12, align 8
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %310 = icmp ne %struct.TYPE_22__* %309, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %304
  br label %438

312:                                              ; preds = %304
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 6
  %315 = bitcast i32* %314 to i8**
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %317 = call i32 @lwListAdd(i8** %315, %struct.TYPE_22__* %316)
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 8
  br label %346

322:                                              ; preds = %87
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* %16, align 4
  %325 = call i64 @lwGetSurface(i32* %323, i32 %324)
  %326 = inttoptr i64 %325 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %326, %struct.TYPE_22__** %12, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %328 = icmp ne %struct.TYPE_22__* %327, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %322
  br label %438

330:                                              ; preds = %322
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 2
  %333 = bitcast i32* %332 to i8**
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %335 = call i32 @lwListAdd(i8** %333, %struct.TYPE_22__* %334)
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 4
  br label %346

340:                                              ; preds = %87, %87, %87
  br label %341

341:                                              ; preds = %87, %340
  %342 = load i32*, i32** %7, align 8
  %343 = load i32, i32* %16, align 4
  %344 = load i32, i32* @PICO_SEEK_CUR, align 4
  %345 = call i32 @_pico_memstream_seek(i32* %342, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %341, %330, %312, %294, %285, %276, %238, %218, %198, %185, %176
  %347 = load i32, i32* %14, align 4
  %348 = load i32*, i32** %7, align 8
  %349 = call i32 @_pico_memstream_tell(i32* %348)
  %350 = sub nsw i32 %349, 8
  %351 = icmp ule i32 %347, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  br label %363

353:                                              ; preds = %346
  %354 = call i32 @set_flen(i32 0)
  %355 = load i32*, i32** %7, align 8
  %356 = call i32 @getU4(i32* %355)
  store i32 %356, i32* %13, align 4
  %357 = load i32*, i32** %7, align 8
  %358 = call i32 @getU4(i32* %357)
  store i32 %358, i32* %16, align 4
  %359 = call i32 (...) @get_flen()
  %360 = icmp ne i32 8, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  br label %438

362:                                              ; preds = %353
  br label %87

363:                                              ; preds = %352
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %363
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 0
  store i32 1, i32* %370, align 8
  br label %371

371:                                              ; preds = %368, %363
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %373, align 8
  store %struct.TYPE_22__* %374, %struct.TYPE_22__** %11, align 8
  br label %375

375:                                              ; preds = %432, %371
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %377 = icmp ne %struct.TYPE_22__* %376, null
  br i1 %377, label %378, label %436

378:                                              ; preds = %375
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 3
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 4
  %383 = load i8**, i8*** %382, align 8
  %384 = call i32 @lwGetBoundingBox(%struct.TYPE_24__* %380, i8** %383)
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 3
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 2
  %389 = call i32 @lwGetPolyNormals(%struct.TYPE_24__* %386, %struct.TYPE_23__* %388)
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 3
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 2
  %394 = call i32 @lwGetPointPolygons(%struct.TYPE_24__* %391, %struct.TYPE_23__* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %378
  br label %438

397:                                              ; preds = %378
  %398 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 2
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 3
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 1
  %406 = call i32 @lwResolvePolySurfaces(%struct.TYPE_23__* %399, i32* %401, i32* %403, i32* %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %397
  br label %438

409:                                              ; preds = %397
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 3
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 2
  %414 = call i32 @lwGetVertNormals(%struct.TYPE_24__* %411, %struct.TYPE_23__* %413)
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 3
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @lwGetPointVMaps(%struct.TYPE_24__* %416, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %409
  br label %438

423:                                              ; preds = %409
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 2
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @lwGetPolyVMaps(%struct.TYPE_23__* %425, i32 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %423
  br label %438

432:                                              ; preds = %423
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %434, align 8
  store %struct.TYPE_22__* %435, %struct.TYPE_22__** %11, align 8
  br label %375

436:                                              ; preds = %375
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %437, %struct.TYPE_21__** %5, align 8
  br label %458

438:                                              ; preds = %431, %422, %408, %396, %361, %329, %311, %293, %284, %264, %237, %217, %197, %184, %153, %103, %85, %74, %68
  %439 = load i32*, i32** %8, align 8
  %440 = icmp ne i32* %439, null
  br i1 %440, label %441, label %444

441:                                              ; preds = %438
  %442 = load i32, i32* %13, align 4
  %443 = load i32*, i32** %8, align 8
  store i32 %442, i32* %443, align 4
  br label %444

444:                                              ; preds = %441, %438
  %445 = load i32*, i32** %7, align 8
  %446 = icmp ne i32* %445, null
  br i1 %446, label %447, label %455

447:                                              ; preds = %444
  %448 = load i32*, i32** %9, align 8
  %449 = icmp ne i32* %448, null
  br i1 %449, label %450, label %454

450:                                              ; preds = %447
  %451 = load i32*, i32** %7, align 8
  %452 = call i32 @_pico_memstream_tell(i32* %451)
  %453 = load i32*, i32** %9, align 8
  store i32 %452, i32* %453, align 4
  br label %454

454:                                              ; preds = %450, %447
  br label %455

455:                                              ; preds = %454, %444
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %457 = call i32 @lwFreeObject(%struct.TYPE_21__* %456)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %458

458:                                              ; preds = %455, %436, %62, %51, %42, %32, %21
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %459
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local %struct.TYPE_21__* @lwGetObject5(i8*, i32*, i32*, i32*) #1

declare dso_local i8* @_pico_calloc(i32, i32) #1

declare dso_local i32 @lwListAdd(i8**, %struct.TYPE_22__*) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i8* @getF4(i32*) #1

declare dso_local i32 @getS0(i32*) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i32, i32) #1

declare dso_local i32 @lwGetPoints(i32*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @lwGetPolygons(i32*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @lwGetVMap(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @lwGetPolygonTags(i32*, i32, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @lwGetTags(i32*, i32, i32*) #1

declare dso_local i64 @lwGetEnvelope(i32*, i32) #1

declare dso_local i64 @lwGetClip(i32*, i32) #1

declare dso_local i64 @lwGetSurface(i32*, i32) #1

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @lwGetBoundingBox(%struct.TYPE_24__*, i8**) #1

declare dso_local i32 @lwGetPolyNormals(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lwGetPointPolygons(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lwResolvePolySurfaces(%struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local i32 @lwGetVertNormals(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lwGetPointVMaps(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @lwGetPolyVMaps(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @lwFreeObject(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
