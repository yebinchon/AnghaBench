; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_dump_from_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_dump_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32*, i8**, i64, i32 }

@event_dump_from_str.delim = internal constant i8 1, align 1
@MAX_FIELDS = common dso_local global i32 0, align 4
@types = common dso_local global %struct.TYPE_9__* null, align 8
@t_raw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%n\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lf%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_dump_from_str(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %10, align 8
  %34 = load i32, i32* @MAX_FIELDS, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %38 = load i32, i32* @MAX_FIELDS, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8*, i64 %39, align 16
  store i64 %39, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %18, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %175, %4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %192

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @MAX_FIELDS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %80, %60
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 58
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i1 [ false, %62 ], [ %77, %70 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %62

83:                                               ; preds = %78
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 58
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

92:                                               ; preds = %83
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @types, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @get_field_id_len(%struct.TYPE_9__* %100, i8* %104, i32 %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

112:                                              ; preds = %92
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %140, %112
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br label %138

138:                                              ; preds = %130, %122
  %139 = phi i1 [ false, %122 ], [ %137, %130 ]
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %122

143:                                              ; preds = %138
  %144 = load i8*, i8** %10, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 0, i8* %147, align 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @types, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @t_raw, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %143
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

175:                                              ; preds = %143
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %16, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %37, i64 %180
  store i32 %178, i32* %181, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8*, i8** %40, i64 %188
  store i8* %185, i8** %189, align 8
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %48

192:                                              ; preds = %48
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @types, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  store %struct.TYPE_7__* %198, %struct.TYPE_7__** %21, align 8
  store i32 0, i32* %15, align 4
  br label %199

199:                                              ; preds = %367, %192
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %370

203:                                              ; preds = %199
  store i32 0, i32* %23, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %239

206:                                              ; preds = %203
  %207 = load i32*, i32** %9, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @has_field(i32* %207, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %206
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 128
  br i1 %225, label %226, label %239

226:                                              ; preds = %217
  %227 = load i32*, i32** %9, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %236
  %238 = call i8* @GET_FIELD(i32* %227, %struct.TYPE_7__* %237)
  store i8* %238, i8** %22, align 8
  br label %248

239:                                              ; preds = %217, %206, %203
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  %242 = load i8**, i8*** %241, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %22, align 8
  store i32 1, i32* %23, align 4
  br label %248

248:                                              ; preds = %239, %226
  store i32 0, i32* %25, align 4
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %323 [
    i32 130, label %256
    i32 129, label %274
    i32 131, label %292
    i32 128, label %310
  ]

256:                                              ; preds = %248
  %257 = load i32, i32* %15, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %40, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = load i8*, i8** %22, align 8
  %262 = bitcast i8* %261 to i32*
  %263 = call i32 (i8*, i8*, ...) @sscanf(i8* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %262, i32* %24)
  %264 = icmp ne i32 %263, 1
  br i1 %264, label %272, label %265

265:                                              ; preds = %256
  %266 = load i32, i32* %24, align 4
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %37, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %266, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %265, %256
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

273:                                              ; preds = %265
  store i32 4, i32* %25, align 4
  br label %325

274:                                              ; preds = %248
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %40, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** %22, align 8
  %280 = bitcast i8* %279 to i64*
  %281 = call i32 (i8*, i8*, ...) @sscanf(i8* %278, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %280, i32* %24)
  %282 = icmp ne i32 %281, 1
  br i1 %282, label %290, label %283

283:                                              ; preds = %274
  %284 = load i32, i32* %24, align 4
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %37, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %284, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %283, %274
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

291:                                              ; preds = %283
  store i32 8, i32* %25, align 4
  br label %325

292:                                              ; preds = %248
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %40, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = load i8*, i8** %22, align 8
  %298 = bitcast i8* %297 to double*
  %299 = call i32 (i8*, i8*, ...) @sscanf(i8* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double* %298, i32* %24)
  %300 = icmp ne i32 %299, 1
  br i1 %300, label %308, label %301

301:                                              ; preds = %292
  %302 = load i32, i32* %24, align 4
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %37, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %302, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %301, %292
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

309:                                              ; preds = %301
  store i32 8, i32* %25, align 4
  br label %325

310:                                              ; preds = %248
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %40, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = call i8* @tmp_mem_strdup(i8* %314)
  %316 = load i8*, i8** %22, align 8
  %317 = bitcast i8* %316 to i8**
  store i8* %315, i8** %317, align 8
  %318 = load i32, i32* %15, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %37, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %25, align 4
  br label %325

323:                                              ; preds = %248
  %324 = call i32 @assert(i32 0)
  br label %325

325:                                              ; preds = %323, %310, %309, %291, %273
  %326 = load i32, i32* %23, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %366

328:                                              ; preds = %325
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %15, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %335, i32* %342, align 4
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  store i32 %349, i32* %356, align 4
  %357 = load i32, i32* %25, align 4
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, %357
  store i32 %361, i32* %359, align 8
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %363, align 8
  br label %366

366:                                              ; preds = %328, %325
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %15, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %15, align 4
  br label %199

370:                                              ; preds = %199
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %371

371:                                              ; preds = %370, %308, %290, %272, %174, %111, %91, %59
  %372 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %372)
  %373 = load i32, i32* %5, align 4
  ret i32 %373
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_field_id_len(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @has_field(i32*, i32) #1

declare dso_local i8* @GET_FIELD(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i8* @tmp_mem_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
