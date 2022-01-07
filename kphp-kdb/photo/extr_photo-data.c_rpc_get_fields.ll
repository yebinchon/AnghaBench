; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_rpc_get_fields.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_rpc_get_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, double, i32, i8* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, i32, i32, i32 }

@types = common dso_local global %struct.TYPE_11__* null, align 8
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong mask = %llx specified\00", align 1
@field_changes_n = common dso_local global i64 0, align 8
@location_changes_n = common dso_local global i64 0, align 8
@field_changes = common dso_local global %struct.TYPE_13__* null, align 8
@MAX_LOCATIONS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Too much locations specified\00", align 1
@location_changes = common dso_local global %struct.TYPE_12__* null, align 8
@TL_PHOTO_PHOTO_LOCATION = common dso_local global i32 0, align 4
@TL_PHOTO_AUDIO_LOCATION = common dso_local global i32 0, align 4
@TL_PHOTO_VIDEO_LOCATION = common dso_local global i32 0, align 4
@TL_PHOTO_PHOTO_LOCATION_STORAGE = common dso_local global i32 0, align 4
@TL_PHOTO_AUDIO_LOCATION_STORAGE = common dso_local global i32 0, align 4
@TL_PHOTO_VIDEO_LOCATION_STORAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Wrong size specified. Size must contain exactly one symbol 'a' - 'z'\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Url_secret is too long\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Can't decode url_secret\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Not all data fetched\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_get_fields(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [12 x i8], align 1
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %26, 4
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %4
  store i32 -1, i32* %5, align 4
  br label %544

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @types, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 1, %41
  %43 = sub nsw i64 %42, 1
  %44 = and i64 %38, %43
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %49)
  store i32 -1, i32* %5, align 4
  br label %544

51:                                               ; preds = %33
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %11, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %12, align 8
  store i64 0, i64* @field_changes_n, align 8
  store i64 0, i64* @location_changes_n, align 8
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %531, %51
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %534

66:                                               ; preds = %59
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = ashr i64 %67, %69
  %71 = and i64 %70, 1
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %530

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %76 = load i64, i64* @field_changes_n, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %88 = load i64, i64* @field_changes_n, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  store i32 %86, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  switch i32 %91, label %527 [
    i32 131, label %92
    i32 130, label %110
    i32 132, label %129
    i32 128, label %148
    i32 129, label %236
  ]

92:                                               ; preds = %73
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = icmp slt i64 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 -1, i32* %5, align 4
  br label %544

101:                                              ; preds = %92
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %105 = load i64, i64* @field_changes_n, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %11, align 8
  br label %527

110:                                              ; preds = %73
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = icmp slt i64 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %544

119:                                              ; preds = %110
  %120 = load i32*, i32** %11, align 8
  %121 = bitcast i32* %120 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %124 = load i64, i64* @field_changes_n, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  store i64 %122, i64* %126, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32* %128, i32** %11, align 8
  br label %527

129:                                              ; preds = %73
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = icmp slt i64 %135, 2
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 -1, i32* %5, align 4
  br label %544

138:                                              ; preds = %129
  %139 = load i32*, i32** %11, align 8
  %140 = bitcast i32* %139 to double*
  %141 = load double, double* %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %143 = load i64, i64* @field_changes_n, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 4
  store double %141, double* %145, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32* %147, i32** %11, align 8
  br label %527

148:                                              ; preds = %73
  %149 = load i32*, i32** %12, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = icmp eq i32* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 -1, i32* %5, align 4
  br label %544

153:                                              ; preds = %148
  %154 = load i32*, i32** %11, align 8
  %155 = bitcast i32* %154 to i8*
  store i8* %155, i8** %15, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %11, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %15, align 8
  %160 = load i8, i8* %158, align 1
  %161 = zext i8 %160 to i32
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp slt i32 %162, 254
  br i1 %163, label %164, label %182

164:                                              ; preds = %153
  %165 = load i32*, i32** %12, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = ptrtoint i32* %165 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = load i32, i32* %16, align 4
  %172 = ashr i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  store i32 -1, i32* %5, align 4
  br label %544

176:                                              ; preds = %164
  %177 = load i32, i32* %16, align 4
  %178 = ashr i32 %177, 2
  %179 = load i32*, i32** %11, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %11, align 8
  br label %225

182:                                              ; preds = %153
  %183 = load i32, i32* %16, align 4
  %184 = icmp eq i32 %183, 254
  br i1 %184, label %185, label %223

185:                                              ; preds = %182
  %186 = load i8*, i8** %15, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8*, i8** %15, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = shl i32 %193, 8
  %195 = add nsw i32 %189, %194
  %196 = load i8*, i8** %15, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl i32 %199, 16
  %201 = add nsw i32 %195, %200
  store i32 %201, i32* %16, align 4
  %202 = load i8*, i8** %15, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  store i8* %203, i8** %15, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %210, 3
  %212 = ashr i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %209, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %185
  store i32 -1, i32* %5, align 4
  br label %544

216:                                              ; preds = %185
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 3
  %219 = ashr i32 %218, 2
  %220 = load i32*, i32** %11, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %11, align 8
  br label %224

223:                                              ; preds = %182
  store i32 -1, i32* %5, align 4
  br label %544

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224, %176
  %226 = load i32, i32* %16, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %228 = load i64, i64* @field_changes_n, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 5
  store i32 %226, i32* %230, align 8
  %231 = load i8*, i8** %15, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** @field_changes, align 8
  %233 = load i64, i64* @field_changes_n, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 6
  store i8* %231, i8** %235, align 8
  br label %527

236:                                              ; preds = %73
  %237 = load i32*, i32** %12, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = ptrtoint i32* %237 to i64
  %240 = ptrtoint i32* %238 to i64
  %241 = sub i64 %239, %240
  %242 = sdiv exact i64 %241, 4
  %243 = icmp slt i64 %242, 1
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store i32 -1, i32* %5, align 4
  br label %544

245:                                              ; preds = %236
  %246 = load i32*, i32** %11, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %11, align 8
  %248 = load i32, i32* %246, align 4
  store i32 %248, i32* %17, align 4
  br label %249

249:                                              ; preds = %521, %245
  %250 = load i32, i32* %17, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %17, align 4
  %252 = icmp ne i32 %250, 0
  br i1 %252, label %253, label %524

253:                                              ; preds = %249
  %254 = load i64, i64* @location_changes_n, align 8
  %255 = load i64, i64* @MAX_LOCATIONS, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %259 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %258, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %544

260:                                              ; preds = %253
  %261 = load i32*, i32** %12, align 8
  %262 = load i32*, i32** %11, align 8
  %263 = ptrtoint i32* %261 to i64
  %264 = ptrtoint i32* %262 to i64
  %265 = sub i64 %263, %264
  %266 = sdiv exact i64 %265, 4
  %267 = icmp slt i64 %266, 1
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  store i32 -1, i32* %5, align 4
  br label %544

269:                                              ; preds = %260
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %272 = load i64, i64* @location_changes_n, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  store i32 %270, i32* %274, align 8
  %275 = load i32*, i32** %11, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %11, align 8
  %277 = load i32, i32* %275, align 4
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* @TL_PHOTO_PHOTO_LOCATION, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %269
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* @TL_PHOTO_AUDIO_LOCATION, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* @TL_PHOTO_VIDEO_LOCATION, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %380

289:                                              ; preds = %285, %281, %269
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %291 = load i64, i64* @location_changes_n, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 1
  store i32 0, i32* %293, align 4
  %294 = load i32*, i32** %12, align 8
  %295 = load i32*, i32** %11, align 8
  %296 = ptrtoint i32* %294 to i64
  %297 = ptrtoint i32* %295 to i64
  %298 = sub i64 %296, %297
  %299 = sdiv exact i64 %298, 4
  %300 = icmp slt i64 %299, 5
  br i1 %300, label %301, label %302

301:                                              ; preds = %289
  store i32 -1, i32* %5, align 4
  br label %544

302:                                              ; preds = %289
  %303 = load i32*, i32** %11, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %11, align 8
  %305 = load i32, i32* %303, align 4
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %307 = load i64, i64* @location_changes_n, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 5
  store i32 %305, i32* %310, align 4
  %311 = load i32*, i32** %11, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %11, align 8
  %313 = load i32, i32* %311, align 4
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %315 = load i64, i64* @location_changes_n, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 4
  store i32 %313, i32* %318, align 8
  %319 = load i32*, i32** %11, align 8
  %320 = getelementptr inbounds i32, i32* %319, i32 1
  store i32* %320, i32** %11, align 8
  %321 = load i32, i32* %319, align 4
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %323 = load i64, i64* @location_changes_n, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 3
  store i32 %321, i32* %326, align 4
  %327 = load i32*, i32** %11, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %11, align 8
  %329 = load i32, i32* %327, align 4
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %331 = load i64, i64* @location_changes_n, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 2
  store i32 %329, i32* %334, align 8
  %335 = load i32*, i32** %11, align 8
  %336 = bitcast i32* %335 to i8*
  store i8* %336, i8** %19, align 8
  %337 = load i32*, i32** %11, align 8
  %338 = getelementptr inbounds i32, i32* %337, i32 1
  store i32* %338, i32** %11, align 8
  %339 = load i8*, i8** %19, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %19, align 8
  %341 = load i8, i8* %339, align 1
  %342 = zext i8 %341 to i32
  store i32 %342, i32* %20, align 4
  %343 = load i32, i32* %20, align 4
  %344 = icmp slt i32 %343, 127
  br i1 %344, label %345, label %363

345:                                              ; preds = %302
  %346 = load i32*, i32** %12, align 8
  %347 = load i32*, i32** %11, align 8
  %348 = ptrtoint i32* %346 to i64
  %349 = ptrtoint i32* %347 to i64
  %350 = sub i64 %348, %349
  %351 = sdiv exact i64 %350, 4
  %352 = load i32, i32* %20, align 4
  %353 = ashr i32 %352, 2
  %354 = sext i32 %353 to i64
  %355 = icmp slt i64 %351, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %345
  store i32 -1, i32* %5, align 4
  br label %544

357:                                              ; preds = %345
  %358 = load i32, i32* %20, align 4
  %359 = ashr i32 %358, 2
  %360 = load i32*, i32** %11, align 8
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  store i32* %362, i32** %11, align 8
  br label %364

363:                                              ; preds = %302
  store i32 -1, i32* %5, align 4
  br label %544

364:                                              ; preds = %357
  %365 = load i32, i32* %20, align 4
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %367 = load i64, i64* @location_changes_n, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  store i32 %365, i32* %370, align 8
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %372 = load i64, i64* @location_changes_n, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 1
  %376 = load i8*, i8** %375, align 8
  %377 = load i8*, i8** %19, align 8
  %378 = load i32, i32* %20, align 4
  %379 = call i32 @memcpy(i8* %376, i8* %377, i32 %378)
  br label %521

380:                                              ; preds = %285
  %381 = load i32, i32* %18, align 4
  %382 = load i32, i32* @TL_PHOTO_PHOTO_LOCATION_STORAGE, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %392, label %384

384:                                              ; preds = %380
  %385 = load i32, i32* %18, align 4
  %386 = load i32, i32* @TL_PHOTO_AUDIO_LOCATION_STORAGE, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %392, label %388

388:                                              ; preds = %384
  %389 = load i32, i32* %18, align 4
  %390 = load i32, i32* @TL_PHOTO_VIDEO_LOCATION_STORAGE, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %519

392:                                              ; preds = %388, %384, %380
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %394 = load i64, i64* @location_changes_n, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 1
  store i32 1, i32* %396, align 4
  %397 = load i32*, i32** %12, align 8
  %398 = load i32*, i32** %11, align 8
  %399 = ptrtoint i32* %397 to i64
  %400 = ptrtoint i32* %398 to i64
  %401 = sub i64 %399, %400
  %402 = sdiv exact i64 %401, 4
  %403 = icmp slt i64 %402, 7
  br i1 %403, label %404, label %405

404:                                              ; preds = %392
  store i32 -1, i32* %5, align 4
  br label %544

405:                                              ; preds = %392
  %406 = load i32*, i32** %11, align 8
  %407 = getelementptr inbounds i32, i32* %406, i32 1
  store i32* %407, i32** %11, align 8
  %408 = load i32, i32* %406, align 4
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %410 = load i64, i64* @location_changes_n, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 6
  store i32 %408, i32* %413, align 8
  %414 = load i32*, i32** %11, align 8
  %415 = getelementptr inbounds i32, i32* %414, i32 1
  store i32* %415, i32** %11, align 8
  %416 = load i32, i32* %414, align 4
  store i32 %416, i32* %21, align 4
  %417 = load i32, i32* %21, align 4
  %418 = and i32 %417, 255
  %419 = icmp ne i32 %418, 1
  br i1 %419, label %424, label %420

420:                                              ; preds = %405
  %421 = load i32, i32* %21, align 4
  %422 = ashr i32 %421, 16
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %420, %405
  %425 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %426 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %425, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %544

427:                                              ; preds = %420
  %428 = load i32, i32* %21, align 4
  %429 = ashr i32 %428, 8
  %430 = and i32 %429, 255
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %432 = load i64, i64* @location_changes_n, align 8
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 2
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 0
  store i32 %430, i32* %435, align 8
  %436 = load i32*, i32** %11, align 8
  %437 = getelementptr inbounds i32, i32* %436, i32 1
  store i32* %437, i32** %11, align 8
  %438 = load i32, i32* %436, align 4
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %440 = load i64, i64* @location_changes_n, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 5
  store i32 %438, i32* %443, align 4
  %444 = load i32*, i32** %11, align 8
  %445 = getelementptr inbounds i32, i32* %444, i32 1
  store i32* %445, i32** %11, align 8
  %446 = load i32, i32* %444, align 4
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %448 = load i64, i64* @location_changes_n, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 4
  store i32 %446, i32* %451, align 8
  %452 = load i32*, i32** %11, align 8
  %453 = getelementptr inbounds i32, i32* %452, i32 1
  store i32* %453, i32** %11, align 8
  %454 = load i32, i32* %452, align 4
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %456 = load i64, i64* @location_changes_n, align 8
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 3
  store i32 %454, i32* %459, align 4
  %460 = load i32*, i32** %11, align 8
  %461 = getelementptr inbounds i32, i32* %460, i32 1
  store i32* %461, i32** %11, align 8
  %462 = load i32, i32* %460, align 4
  %463 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %464 = load i64, i64* @location_changes_n, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 2
  store i32 %462, i32* %467, align 8
  %468 = load i32*, i32** %11, align 8
  %469 = bitcast i32* %468 to i8*
  store i8* %469, i8** %22, align 8
  %470 = load i32*, i32** %11, align 8
  %471 = getelementptr inbounds i32, i32* %470, i32 1
  store i32* %471, i32** %11, align 8
  %472 = load i8*, i8** %22, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %22, align 8
  %474 = load i8, i8* %472, align 1
  %475 = zext i8 %474 to i32
  store i32 %475, i32* %23, align 4
  %476 = load i32, i32* %23, align 4
  %477 = icmp slt i32 %476, 12
  br i1 %477, label %478, label %496

478:                                              ; preds = %427
  %479 = load i32*, i32** %12, align 8
  %480 = load i32*, i32** %11, align 8
  %481 = ptrtoint i32* %479 to i64
  %482 = ptrtoint i32* %480 to i64
  %483 = sub i64 %481, %482
  %484 = sdiv exact i64 %483, 4
  %485 = load i32, i32* %23, align 4
  %486 = ashr i32 %485, 2
  %487 = sext i32 %486 to i64
  %488 = icmp slt i64 %484, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %478
  store i32 -1, i32* %5, align 4
  br label %544

490:                                              ; preds = %478
  %491 = load i32, i32* %23, align 4
  %492 = ashr i32 %491, 2
  %493 = load i32*, i32** %11, align 8
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i32, i32* %493, i64 %494
  store i32* %495, i32** %11, align 8
  br label %499

496:                                              ; preds = %427
  %497 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %498 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %497, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %544

499:                                              ; preds = %490
  %500 = getelementptr inbounds [12 x i8], [12 x i8]* %24, i64 0, i64 0
  %501 = load i8*, i8** %22, align 8
  %502 = load i32, i32* %23, align 4
  %503 = call i32 @memcpy(i8* %500, i8* %501, i32 %502)
  %504 = load i32, i32* %23, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [12 x i8], [12 x i8]* %24, i64 0, i64 %505
  store i8 0, i8* %506, align 1
  %507 = getelementptr inbounds [12 x i8], [12 x i8]* %24, i64 0, i64 0
  %508 = load %struct.TYPE_12__*, %struct.TYPE_12__** @location_changes, align 8
  %509 = load i64, i64* @location_changes_n, align 8
  %510 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 1
  %513 = call i32 @base64url_to_secret(i8* %507, i32* %512)
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %499
  %516 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %517 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %516, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %544

518:                                              ; preds = %499
  br label %520

519:                                              ; preds = %388
  store i32 -1, i32* %5, align 4
  br label %544

520:                                              ; preds = %518
  br label %521

521:                                              ; preds = %520, %364
  %522 = load i64, i64* @location_changes_n, align 8
  %523 = add i64 %522, 1
  store i64 %523, i64* @location_changes_n, align 8
  br label %249

524:                                              ; preds = %249
  %525 = load i64, i64* @field_changes_n, align 8
  %526 = add i64 %525, -1
  store i64 %526, i64* @field_changes_n, align 8
  br label %527

527:                                              ; preds = %73, %524, %225, %138, %119, %101
  %528 = load i64, i64* @field_changes_n, align 8
  %529 = add i64 %528, 1
  store i64 %529, i64* @field_changes_n, align 8
  br label %530

530:                                              ; preds = %527, %66
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %13, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %13, align 4
  br label %59

534:                                              ; preds = %59
  %535 = load i32*, i32** %11, align 8
  %536 = load i32*, i32** %12, align 8
  %537 = icmp ne i32* %535, %536
  br i1 %537, label %538, label %541

538:                                              ; preds = %534
  %539 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %540 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %539, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %544

541:                                              ; preds = %534
  %542 = load i64, i64* @field_changes_n, align 8
  %543 = trunc i64 %542 to i32
  store i32 %543, i32* %5, align 4
  br label %544

544:                                              ; preds = %541, %538, %519, %515, %496, %489, %424, %404, %363, %356, %301, %268, %257, %244, %223, %215, %175, %152, %137, %118, %100, %47, %32
  %545 = load i32, i32* %5, align 4
  ret i32 %545
}

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @base64url_to_secret(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
