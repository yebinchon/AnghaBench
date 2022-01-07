; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pack_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pack_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32* }

@Words = common dso_local global i32 0, align 4
@WordFreqWords = common dso_local global %struct.TYPE_7__** null, align 8
@WordCharDict = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NotWords = common dso_local global i32 0, align 4
@NotWordFreqWords = common dso_local global %struct.TYPE_7__** null, align 8
@NotWordCharDict = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pack_text(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %11, align 8
  store i32 1, i32* %14, align 4
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %314, %4
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %315

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ule i8* %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @get_word(i8* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call %struct.TYPE_7__* @hash_get(i32* @Words, i8* %50, i32 %51, i32 0)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %15, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %95

55:                                               ; preds = %38
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %16, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %78, %60
  %68 = load i32, i32* %16, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp sge i32 %71, 256
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  store i8 %75, i8* %76, align 1
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %14, align 4
  %80 = shl i32 %79, 1
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = shl i32 %86, 1
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %16, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load i32, i32* %12, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %9, align 8
  br label %176

95:                                               ; preds = %55, %38
  %96 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @WordFreqWords, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %96, i64 %98
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %15, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %18, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %118, %95
  %108 = load i32, i32* %18, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = icmp sge i32 %111, 256
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %10, align 8
  store i8 %115, i8* %116, align 1
  store i32 1, i32* %14, align 4
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32, i32* %14, align 4
  %120 = shl i32 %119, 1
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp slt i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %19, align 4
  %127 = shl i32 %126, 1
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %18, align 4
  br label %107

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %172, %130
  %132 = load i32, i32* %12, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %175

134:                                              ; preds = %131
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  %137 = load i8, i8* %135, align 1
  %138 = zext i8 %137 to i32
  store i32 %138, i32* %13, align 4
  %139 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WordCharDict, i32 0, i32 0), align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %20, align 4
  %144 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WordCharDict, i32 0, i32 1), align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %21, align 4
  br label %149

149:                                              ; preds = %160, %134
  %150 = load i32, i32* %20, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = icmp sge i32 %153, 256
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %10, align 8
  store i8 %157, i8* %158, align 1
  store i32 1, i32* %14, align 4
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32, i32* %14, align 4
  %162 = shl i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %21, align 4
  %164 = icmp slt i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %21, align 4
  %169 = shl i32 %168, 1
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %20, align 4
  br label %149

172:                                              ; preds = %149
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %12, align 4
  br label %131

175:                                              ; preds = %131
  br label %176

176:                                              ; preds = %175, %90
  %177 = load i8*, i8** %9, align 8
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  br label %315

181:                                              ; preds = %176
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @get_notword(i8* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %315

187:                                              ; preds = %181
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call %struct.TYPE_7__* @hash_get(i32* @NotWords, i8* %188, i32 %189, i32 0)
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %15, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %192 = icmp ne %struct.TYPE_7__* %191, null
  br i1 %192, label %193, label %233

193:                                              ; preds = %187
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %233

198:                                              ; preds = %193
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %22, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %23, align 4
  br label %205

205:                                              ; preds = %216, %198
  %206 = load i32, i32* %22, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %205
  %209 = load i32, i32* %14, align 4
  %210 = icmp sge i32 %209, 256
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* %14, align 4
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %10, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %10, align 8
  store i8 %213, i8* %214, align 1
  store i32 1, i32* %14, align 4
  br label %216

216:                                              ; preds = %211, %208
  %217 = load i32, i32* %14, align 4
  %218 = shl i32 %217, 1
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %23, align 4
  %220 = icmp slt i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %23, align 4
  %225 = shl i32 %224, 1
  store i32 %225, i32* %23, align 4
  %226 = load i32, i32* %22, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %22, align 4
  br label %205

228:                                              ; preds = %205
  %229 = load i32, i32* %12, align 4
  %230 = load i8*, i8** %9, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %9, align 8
  br label %314

233:                                              ; preds = %193, %187
  %234 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @NotWordFreqWords, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %234, i64 %236
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  store %struct.TYPE_7__* %238, %struct.TYPE_7__** %15, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %24, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %25, align 4
  br label %245

245:                                              ; preds = %256, %233
  %246 = load i32, i32* %24, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %245
  %249 = load i32, i32* %14, align 4
  %250 = icmp sge i32 %249, 256
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* %14, align 4
  %253 = trunc i32 %252 to i8
  %254 = load i8*, i8** %10, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %10, align 8
  store i8 %253, i8* %254, align 1
  store i32 1, i32* %14, align 4
  br label %256

256:                                              ; preds = %251, %248
  %257 = load i32, i32* %14, align 4
  %258 = shl i32 %257, 1
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* %25, align 4
  %260 = icmp slt i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %25, align 4
  %265 = shl i32 %264, 1
  store i32 %265, i32* %25, align 4
  %266 = load i32, i32* %24, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %24, align 4
  br label %245

268:                                              ; preds = %245
  br label %269

269:                                              ; preds = %310, %268
  %270 = load i32, i32* %12, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %269
  %273 = load i8*, i8** %9, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %9, align 8
  %275 = load i8, i8* %273, align 1
  %276 = zext i8 %275 to i32
  store i32 %276, i32* %13, align 4
  %277 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @NotWordCharDict, i32 0, i32 0), align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %26, align 4
  %282 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @NotWordCharDict, i32 0, i32 1), align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %27, align 4
  br label %287

287:                                              ; preds = %298, %272
  %288 = load i32, i32* %26, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %310

290:                                              ; preds = %287
  %291 = load i32, i32* %14, align 4
  %292 = icmp sge i32 %291, 256
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = load i32, i32* %14, align 4
  %295 = trunc i32 %294 to i8
  %296 = load i8*, i8** %10, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %10, align 8
  store i8 %295, i8* %296, align 1
  store i32 1, i32* %14, align 4
  br label %298

298:                                              ; preds = %293, %290
  %299 = load i32, i32* %14, align 4
  %300 = shl i32 %299, 1
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %27, align 4
  %302 = icmp slt i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %27, align 4
  %307 = shl i32 %306, 1
  store i32 %307, i32* %27, align 4
  %308 = load i32, i32* %26, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %26, align 4
  br label %287

310:                                              ; preds = %287
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %12, align 4
  br label %269

313:                                              ; preds = %269
  br label %314

314:                                              ; preds = %313, %228
  br label %34

315:                                              ; preds = %186, %180, %34
  %316 = load i32, i32* %14, align 4
  %317 = icmp sge i32 %316, 256
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i32, i32* %14, align 4
  %320 = trunc i32 %319 to i8
  %321 = load i8*, i8** %10, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %10, align 8
  store i8 %320, i8* %321, align 1
  store i32 1, i32* %14, align 4
  br label %323

323:                                              ; preds = %318, %315
  %324 = load i32, i32* %14, align 4
  %325 = shl i32 %324, 1
  store i32 %325, i32* %14, align 4
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %14, align 4
  br label %328

328:                                              ; preds = %339, %323
  %329 = load i32, i32* %14, align 4
  %330 = icmp slt i32 %329, 256
  br i1 %330, label %331, label %344

331:                                              ; preds = %328
  %332 = load i32, i32* %14, align 4
  %333 = icmp sge i32 %332, 256
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = load i32, i32* %14, align 4
  %336 = trunc i32 %335 to i8
  %337 = load i8*, i8** %10, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %10, align 8
  store i8 %336, i8* %337, align 1
  store i32 1, i32* %14, align 4
  br label %339

339:                                              ; preds = %334, %331
  %340 = load i32, i32* %14, align 4
  %341 = shl i32 %340, 1
  store i32 %341, i32* %14, align 4
  %342 = load i32, i32* %14, align 4
  %343 = add nsw i32 %342, 0
  store i32 %343, i32* %14, align 4
  br label %328

344:                                              ; preds = %328
  %345 = load i32, i32* %14, align 4
  %346 = trunc i32 %345 to i8
  %347 = load i8*, i8** %10, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %10, align 8
  store i8 %346, i8* %347, align 1
  %349 = load i8*, i8** %10, align 8
  %350 = load i8*, i8** %11, align 8
  %351 = icmp ule i8* %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 @assert(i32 %352)
  %354 = load i8*, i8** %10, align 8
  %355 = load i8*, i8** %5, align 8
  %356 = ptrtoint i8* %354 to i64
  %357 = ptrtoint i8* %355 to i64
  %358 = sub i64 %356, %357
  %359 = trunc i64 %358 to i32
  ret i32 %359
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_word(i8*) #1

declare dso_local %struct.TYPE_7__* @hash_get(i32*, i8*, i32, i32) #1

declare dso_local i32 @get_notword(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
