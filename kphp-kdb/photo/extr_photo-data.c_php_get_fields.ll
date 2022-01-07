; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_php_get_fields.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_php_get_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i32, i32, i32, i32 }

@types = common dso_local global %struct.TYPE_7__* null, align 8
@field_changes_n = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"a:%d%n\00", align 1
@MAX_FIELDS = common dso_local global i32 0, align 4
@MAX_EVENT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"s:%d%n\00", align 1
@field_changes = common dso_local global %struct.TYPE_8__* null, align 8
@t_raw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c":%d%n\00", align 1
@t_string = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%lld%n\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%lf%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_get_fields(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @types, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %8, align 4
  store i32 -1, i32* @field_changes_n, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %9)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %63, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 58
  br i1 %33, label %63, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 123
  br i1 %42, label %63, label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 125
  br i1 %51, label %63, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MAX_FIELDS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MAX_EVENT_SIZE, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %52, %43, %34, %26, %2
  store i32 -1, i32* %3, align 4
  br label %398

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %387, %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %390

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %12, i32* %9)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %99, label %78

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 58
  br i1 %87, label %99, label %88

88:                                               ; preds = %78
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %89, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 34
  br i1 %98, label %99, label %100

99:                                               ; preds = %88, %78, %71
  store i32 -1, i32* %3, align 4
  br label %398

100:                                              ; preds = %88
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 2
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 3
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  store i32 -1, i32* %3, align 4
  br label %398

112:                                              ; preds = %100
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @get_field_id_len(%struct.TYPE_7__* %113, i8* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 -1, i32* %3, align 4
  br label %398

123:                                              ; preds = %112
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 4
  store i32 %137, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @t_raw, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %123
  store i32 -1, i32* %3, align 4
  br label %398

147:                                              ; preds = %123
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i8*, i8** %5, align 8
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 34
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  store i32 -1, i32* %3, align 4
  br label %398

160:                                              ; preds = %147
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 59
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  store i32 -1, i32* %3, align 4
  br label %398

170:                                              ; preds = %160
  %171 = load i8*, i8** %5, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 115
  br i1 %177, label %178, label %195

178:                                              ; preds = %170
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 105
  br i1 %185, label %186, label %195

186:                                              ; preds = %178
  %187 = load i8*, i8** %5, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 100
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store i32 -1, i32* %3, align 4
  br label %398

195:                                              ; preds = %186, %178, %170
  %196 = load i8*, i8** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 115
  br i1 %202, label %203, label %235

203:                                              ; preds = %195
  store i32 1, i32* %15, align 4
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = call i32 @sscanf(i8* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %12, i32* %9)
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %222, label %212

212:                                              ; preds = %203
  %213 = load i8*, i8** %5, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %213, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 58
  br i1 %221, label %222, label %223

222:                                              ; preds = %212, %203
  store i32 -1, i32* %3, align 4
  br label %398

223:                                              ; preds = %212
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %227, %228
  %230 = add nsw i32 %229, 2
  %231 = load i32, i32* %8, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  store i32 -1, i32* %3, align 4
  br label %398

234:                                              ; preds = %223
  br label %238

235:                                              ; preds = %195
  store i32 0, i32* %15, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %238

238:                                              ; preds = %235, %234
  %239 = load i8*, i8** %5, align 8
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 58
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  store i32 -1, i32* %3, align 4
  br label %398

248:                                              ; preds = %238
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %248
  %252 = load i8*, i8** %5, align 8
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 34
  br i1 %259, label %260, label %261

260:                                              ; preds = %251
  store i32 -1, i32* %3, align 4
  br label %398

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %248
  store i32 0, i32* %16, align 4
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @t_string, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %307

266:                                              ; preds = %262
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %290, label %269

269:                                              ; preds = %266
  store i32 0, i32* %12, align 4
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %270, %271
  %273 = add nsw i32 %272, 1
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %269
  %277 = load i8*, i8** %5, align 8
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %277, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 59
  br i1 %285, label %286, label %289

286:                                              ; preds = %276
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %12, align 4
  br label %289

289:                                              ; preds = %286, %276, %269
  br label %290

290:                                              ; preds = %289, %266
  %291 = load i8*, i8** %5, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 2
  store i8* %294, i8** %299, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 3
  store i32 %300, i32* %305, align 8
  %306 = load i32, i32* %12, align 4
  store i32 %306, i32* %16, align 4
  br label %354

307:                                              ; preds = %262
  %308 = load i32, i32* %14, align 4
  switch i32 %308, label %351 [
    i32 129, label %309
    i32 128, label %323
    i32 130, label %337
  ]

309:                                              ; preds = %307
  %310 = load i8*, i8** %5, align 8
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 4
  %319 = call i32 @sscanf(i8* %313, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %318, i32* %16)
  %320 = icmp ne i32 %319, 1
  br i1 %320, label %321, label %322

321:                                              ; preds = %309
  store i32 -1, i32* %3, align 4
  br label %398

322:                                              ; preds = %309
  br label %353

323:                                              ; preds = %307
  %324 = load i8*, i8** %5, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 5
  %333 = call i32 @sscanf(i8* %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %332, i32* %16)
  %334 = icmp ne i32 %333, 1
  br i1 %334, label %335, label %336

335:                                              ; preds = %323
  store i32 -1, i32* %3, align 4
  br label %398

336:                                              ; preds = %323
  br label %353

337:                                              ; preds = %307
  %338 = load i8*, i8** %5, align 8
  %339 = load i32, i32* %11, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %338, i64 %340
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** @field_changes, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 6
  %347 = call i32 @sscanf(i8* %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %346, i32* %16)
  %348 = icmp ne i32 %347, 1
  br i1 %348, label %349, label %350

349:                                              ; preds = %337
  store i32 -1, i32* %3, align 4
  br label %398

350:                                              ; preds = %337
  br label %353

351:                                              ; preds = %307
  %352 = call i32 @assert(i32 0)
  br label %353

353:                                              ; preds = %351, %350, %336, %322
  br label %354

354:                                              ; preds = %353, %290
  %355 = load i32, i32* %16, align 4
  %356 = load i32, i32* %11, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %11, align 4
  %358 = load i32, i32* %15, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %376

360:                                              ; preds = %354
  %361 = load i32, i32* %16, align 4
  %362 = load i32, i32* %12, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  store i32 -1, i32* %3, align 4
  br label %398

365:                                              ; preds = %360
  %366 = load i8*, i8** %5, align 8
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %11, align 4
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds i8, i8* %366, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 34
  br i1 %373, label %374, label %375

374:                                              ; preds = %365
  store i32 -1, i32* %3, align 4
  br label %398

375:                                              ; preds = %365
  br label %376

376:                                              ; preds = %375, %354
  %377 = load i8*, i8** %5, align 8
  %378 = load i32, i32* %11, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %11, align 4
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i8, i8* %377, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp ne i32 %383, 59
  br i1 %384, label %385, label %386

385:                                              ; preds = %376
  store i32 -1, i32* %3, align 4
  br label %398

386:                                              ; preds = %376
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %10, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %10, align 4
  br label %67

390:                                              ; preds = %67
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* %8, align 4
  %393 = sub nsw i32 %392, 1
  %394 = icmp ne i32 %391, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  store i32 -1, i32* %3, align 4
  br label %398

396:                                              ; preds = %390
  %397 = load i32, i32* %7, align 4
  store i32 %397, i32* @field_changes_n, align 4
  store i32 %397, i32* %3, align 4
  br label %398

398:                                              ; preds = %396, %395, %385, %374, %364, %349, %335, %321, %260, %247, %233, %222, %194, %169, %159, %146, %122, %111, %99, %63
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @get_field_id_len(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
