; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_LoadTGABuffer.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_LoadTGABuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"LoadTGA: only up to 256 colormap_length supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"LoadTGA: colormap_index not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"LoadTGA: Only 32 and 24 bit colormap_size supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"LoadTGA: only 24bit and 32bit pixel sizes supported for type 2 and type 10 images\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"LoadTGA: only 8bit pixel size for type 1, 3, 9, and 11 images supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"LoadTGA: Only type 1, 2, 3, 9, 10, and 11 targa RGB images supported\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"LoadTGA: origin must be in top left or bottom left, top right and bottom right are not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"LoadTGA: only 0 or 8 attribute (alpha) bits supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"LoadTGA: not enough memory for %i by %i image\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadTGABuffer(i32* %0, i32* %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_3__, align 4
  %30 = alloca [1024 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %31 = load i32**, i32*** %8, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = icmp slt i64 %37, 19
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  br label %521

40:                                               ; preds = %5
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 256
  %60 = add nsw i32 %55, %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 256
  %69 = add nsw i32 %64, %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 9
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 256
  %82 = add nsw i32 %77, %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 10
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 11
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 256
  %91 = add nsw i32 %86, %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 12
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 13
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 256
  %100 = add nsw i32 %95, %99
  store i32 %100, i32* %23, align 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 14
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 15
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 256
  %109 = add nsw i32 %104, %108
  store i32 %109, i32* %24, align 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 9
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 16
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 17
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 11
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 18
  store i32* %120, i32** %27, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %27, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %27, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %243

129:                                              ; preds = %40
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 256
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %521

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %521

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 24
  br i1 %144, label %145, label %188

145:                                              ; preds = %141
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %184, %145
  %147 = load i32, i32* %11, align 4
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %187

151:                                              ; preds = %146
  %152 = load i32*, i32** %27, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %27, align 8
  %154 = load i32, i32* %152, align 4
  %155 = trunc i32 %154 to i8
  %156 = load i32, i32* %11, align 4
  %157 = mul nsw i32 %156, 4
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %159
  store i8 %155, i8* %160, align 1
  %161 = load i32*, i32** %27, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %27, align 8
  %163 = load i32, i32* %161, align 4
  %164 = trunc i32 %163 to i8
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %165, 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %168
  store i8 %164, i8* %169, align 1
  %170 = load i32*, i32** %27, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %27, align 8
  %172 = load i32, i32* %170, align 4
  %173 = trunc i32 %172 to i8
  %174 = load i32, i32* %11, align 4
  %175 = mul nsw i32 %174, 4
  %176 = add nsw i32 %175, 0
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %177
  store i8 %173, i8* %178, align 1
  %179 = load i32, i32* %11, align 4
  %180 = mul nsw i32 %179, 4
  %181 = add nsw i32 %180, 3
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %182
  store i8 -1, i8* %183, align 1
  br label %184

184:                                              ; preds = %151
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %146

187:                                              ; preds = %146
  br label %242

188:                                              ; preds = %141
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 32
  br i1 %191, label %192, label %239

192:                                              ; preds = %188
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %235, %192
  %194 = load i32, i32* %11, align 4
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %238

198:                                              ; preds = %193
  %199 = load i32*, i32** %27, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %27, align 8
  %201 = load i32, i32* %199, align 4
  %202 = trunc i32 %201 to i8
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %203, 4
  %205 = add nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %206
  store i8 %202, i8* %207, align 1
  %208 = load i32*, i32** %27, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %27, align 8
  %210 = load i32, i32* %208, align 4
  %211 = trunc i32 %210 to i8
  %212 = load i32, i32* %11, align 4
  %213 = mul nsw i32 %212, 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = load i32*, i32** %27, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %27, align 8
  %219 = load i32, i32* %217, align 4
  %220 = trunc i32 %219 to i8
  %221 = load i32, i32* %11, align 4
  %222 = mul nsw i32 %221, 4
  %223 = add nsw i32 %222, 0
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %224
  store i8 %220, i8* %225, align 1
  %226 = load i32*, i32** %27, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %27, align 8
  %228 = load i32, i32* %226, align 4
  %229 = trunc i32 %228 to i8
  %230 = load i32, i32* %11, align 4
  %231 = mul nsw i32 %230, 4
  %232 = add nsw i32 %231, 3
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 %233
  store i8 %229, i8* %234, align 1
  br label %235

235:                                              ; preds = %198
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %193

238:                                              ; preds = %193
  br label %241

239:                                              ; preds = %188
  %240 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %521

241:                                              ; preds = %238
  br label %242

242:                                              ; preds = %241, %187
  br label %243

243:                                              ; preds = %242, %40
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 10
  br i1 %250, label %251, label %262

251:                                              ; preds = %247, %243
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 24
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 32
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  br label %521

261:                                              ; preds = %255, %251
  br label %296

262:                                              ; preds = %247
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 9
  br i1 %269, label %270, label %277

270:                                              ; preds = %266, %262
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 8
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %521

276:                                              ; preds = %270
  br label %295

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 3
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 11
  br i1 %284, label %285, label %292

285:                                              ; preds = %281, %277
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 8
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %521

291:                                              ; preds = %285
  br label %294

292:                                              ; preds = %281
  %293 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  br label %521

294:                                              ; preds = %291
  br label %295

295:                                              ; preds = %294, %276
  br label %296

296:                                              ; preds = %295, %261
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 11
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 16
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0))
  br label %521

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 11
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 15
  store i32 %306, i32* %22, align 4
  %307 = load i32, i32* %22, align 4
  %308 = icmp ne i32 %307, 8
  br i1 %308, label %309, label %314

309:                                              ; preds = %303
  %310 = load i32, i32* %22, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = call i32 @TargaError(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %521

314:                                              ; preds = %309, %303
  %315 = load i32, i32* %23, align 4
  %316 = load i32, i32* %24, align 4
  %317 = mul nsw i32 %315, %316
  %318 = mul nsw i32 %317, 4
  %319 = call i32* @safe_malloc(i32 %318)
  store i32* %319, i32** %26, align 8
  %320 = load i32*, i32** %26, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = load i32, i32* %23, align 4
  %324 = load i32, i32* %24, align 4
  %325 = call i32 @Sys_Printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %323, i32 %324)
  br label %521

326:                                              ; preds = %314
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 11
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 32
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %326
  %332 = load i32*, i32** %26, align 8
  %333 = load i32, i32* %24, align 4
  %334 = sub nsw i32 %333, 1
  %335 = load i32, i32* %23, align 4
  %336 = mul nsw i32 %334, %335
  %337 = mul nsw i32 %336, 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %332, i64 %338
  store i32* %339, i32** %25, align 8
  %340 = load i32, i32* %23, align 4
  %341 = sub nsw i32 0, %340
  %342 = mul nsw i32 %341, 4
  %343 = mul nsw i32 %342, 2
  store i32 %343, i32* %13, align 4
  br label %346

344:                                              ; preds = %326
  %345 = load i32*, i32** %26, align 8
  store i32* %345, i32** %25, align 8
  store i32 0, i32* %13, align 4
  br label %346

346:                                              ; preds = %344, %331
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 9
  br i1 %349, label %358, label %350

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 10
  br i1 %353, label %358, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 11
  br label %358

358:                                              ; preds = %354, %350, %346
  %359 = phi i1 [ true, %350 ], [ true, %346 ], [ %357, %354 ]
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 255, i32* %19, align 4
  store i32 255, i32* %18, align 4
  store i32 255, i32* %17, align 4
  store i32 255, i32* %16, align 4
  br label %361

361:                                              ; preds = %506, %358
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* %24, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %507

365:                                              ; preds = %361
  store i32 1000000, i32* %15, align 4
  store i32 1000000, i32* %20, align 4
  %366 = load i32, i32* %14, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %384

368:                                              ; preds = %365
  %369 = load i32*, i32** %27, align 8
  %370 = load i32*, i32** %7, align 8
  %371 = icmp ult i32* %369, %370
  br i1 %371, label %372, label %384

372:                                              ; preds = %368
  %373 = load i32*, i32** %27, align 8
  %374 = getelementptr inbounds i32, i32* %373, i32 1
  store i32* %374, i32** %27, align 8
  %375 = load i32, i32* %373, align 4
  store i32 %375, i32* %20, align 4
  %376 = load i32, i32* %20, align 4
  %377 = and i32 %376, 128
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %372
  store i32 1, i32* %15, align 4
  br label %380

380:                                              ; preds = %379, %372
  %381 = load i32, i32* %20, align 4
  %382 = and i32 %381, 127
  %383 = add nsw i32 1, %382
  store i32 %383, i32* %20, align 4
  br label %384

384:                                              ; preds = %380, %368, %365
  br label %385

385:                                              ; preds = %505, %384
  %386 = load i32, i32* %20, align 4
  %387 = add nsw i32 %386, -1
  store i32 %387, i32* %20, align 4
  %388 = icmp ne i32 %386, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = load i32, i32* %12, align 4
  %391 = load i32, i32* %24, align 4
  %392 = icmp slt i32 %390, %391
  br label %393

393:                                              ; preds = %389, %385
  %394 = phi i1 [ false, %385 ], [ %392, %389 ]
  br i1 %394, label %395, label %506

395:                                              ; preds = %393
  %396 = load i32, i32* %15, align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %480

398:                                              ; preds = %395
  %399 = load i32, i32* %15, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %15, align 4
  store i32 255, i32* %19, align 4
  store i32 255, i32* %18, align 4
  store i32 255, i32* %17, align 4
  store i32 255, i32* %16, align 4
  %401 = load i32*, i32** %27, align 8
  %402 = load i32*, i32** %7, align 8
  %403 = icmp ult i32* %401, %402
  br i1 %403, label %404, label %479

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  switch i32 %406, label %474 [
    i32 1, label %407
    i32 9, label %407
    i32 2, label %438
    i32 10, label %438
    i32 3, label %470
    i32 11, label %470
  ]

407:                                              ; preds = %404, %404
  %408 = load i32*, i32** %27, align 8
  %409 = getelementptr inbounds i32, i32* %408, i32 1
  store i32* %409, i32** %27, align 8
  %410 = load i32, i32* %408, align 4
  store i32 %410, i32* %21, align 4
  %411 = load i32, i32* %21, align 4
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %413 = load i32, i32* %412, align 4
  %414 = icmp sge i32 %411, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %407
  store i32 0, i32* %21, align 4
  br label %416

416:                                              ; preds = %415, %407
  %417 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %418 = load i32, i32* %21, align 4
  %419 = mul nsw i32 %418, 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %417, i64 %420
  store i8* %421, i8** %28, align 8
  %422 = load i8*, i8** %28, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 0
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  store i32 %425, i32* %16, align 4
  %426 = load i8*, i8** %28, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 1
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  store i32 %429, i32* %17, align 4
  %430 = load i8*, i8** %28, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 2
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  store i32 %433, i32* %18, align 4
  %434 = load i8*, i8** %28, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 3
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i32
  store i32 %437, i32* %19, align 4
  br label %474

438:                                              ; preds = %404, %404
  %439 = load i32*, i32** %27, align 8
  %440 = getelementptr inbounds i32, i32* %439, i32 1
  store i32* %440, i32** %27, align 8
  %441 = load i32, i32* %439, align 4
  store i32 %441, i32* %18, align 4
  %442 = load i32*, i32** %27, align 8
  %443 = load i32*, i32** %7, align 8
  %444 = icmp ult i32* %442, %443
  br i1 %444, label %445, label %449

445:                                              ; preds = %438
  %446 = load i32*, i32** %27, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 1
  store i32* %447, i32** %27, align 8
  %448 = load i32, i32* %446, align 4
  store i32 %448, i32* %17, align 4
  br label %449

449:                                              ; preds = %445, %438
  %450 = load i32*, i32** %27, align 8
  %451 = load i32*, i32** %7, align 8
  %452 = icmp ult i32* %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %449
  %454 = load i32*, i32** %27, align 8
  %455 = getelementptr inbounds i32, i32* %454, i32 1
  store i32* %455, i32** %27, align 8
  %456 = load i32, i32* %454, align 4
  store i32 %456, i32* %16, align 4
  br label %457

457:                                              ; preds = %453, %449
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %459, 32
  br i1 %460, label %461, label %469

461:                                              ; preds = %457
  %462 = load i32*, i32** %27, align 8
  %463 = load i32*, i32** %7, align 8
  %464 = icmp ult i32* %462, %463
  br i1 %464, label %465, label %469

465:                                              ; preds = %461
  %466 = load i32*, i32** %27, align 8
  %467 = getelementptr inbounds i32, i32* %466, i32 1
  store i32* %467, i32** %27, align 8
  %468 = load i32, i32* %466, align 4
  store i32 %468, i32* %19, align 4
  br label %469

469:                                              ; preds = %465, %461, %457
  br label %474

470:                                              ; preds = %404, %404
  %471 = load i32*, i32** %27, align 8
  %472 = getelementptr inbounds i32, i32* %471, i32 1
  store i32* %472, i32** %27, align 8
  %473 = load i32, i32* %471, align 4
  store i32 %473, i32* %18, align 4
  store i32 %473, i32* %17, align 4
  store i32 %473, i32* %16, align 4
  br label %474

474:                                              ; preds = %404, %470, %469, %416
  %475 = load i32, i32* %22, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %478, label %477

477:                                              ; preds = %474
  store i32 255, i32* %19, align 4
  br label %478

478:                                              ; preds = %477, %474
  br label %479

479:                                              ; preds = %478, %398
  br label %480

480:                                              ; preds = %479, %395
  %481 = load i32, i32* %16, align 4
  %482 = load i32*, i32** %25, align 8
  %483 = getelementptr inbounds i32, i32* %482, i32 1
  store i32* %483, i32** %25, align 8
  store i32 %481, i32* %482, align 4
  %484 = load i32, i32* %17, align 4
  %485 = load i32*, i32** %25, align 8
  %486 = getelementptr inbounds i32, i32* %485, i32 1
  store i32* %486, i32** %25, align 8
  store i32 %484, i32* %485, align 4
  %487 = load i32, i32* %18, align 4
  %488 = load i32*, i32** %25, align 8
  %489 = getelementptr inbounds i32, i32* %488, i32 1
  store i32* %489, i32** %25, align 8
  store i32 %487, i32* %488, align 4
  %490 = load i32, i32* %19, align 4
  %491 = load i32*, i32** %25, align 8
  %492 = getelementptr inbounds i32, i32* %491, i32 1
  store i32* %492, i32** %25, align 8
  store i32 %490, i32* %491, align 4
  %493 = load i32, i32* %11, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %11, align 4
  %495 = load i32, i32* %11, align 4
  %496 = load i32, i32* %23, align 4
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %498, label %505

498:                                              ; preds = %480
  store i32 0, i32* %11, align 4
  %499 = load i32, i32* %12, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %12, align 4
  %501 = load i32, i32* %13, align 4
  %502 = load i32*, i32** %25, align 8
  %503 = sext i32 %501 to i64
  %504 = getelementptr inbounds i32, i32* %502, i64 %503
  store i32* %504, i32** %25, align 8
  br label %505

505:                                              ; preds = %498, %480
  br label %385

506:                                              ; preds = %393
  br label %361

507:                                              ; preds = %361
  %508 = load i32*, i32** %26, align 8
  %509 = load i32**, i32*** %8, align 8
  store i32* %508, i32** %509, align 8
  %510 = load i32*, i32** %9, align 8
  %511 = icmp ne i32* %510, null
  br i1 %511, label %512, label %515

512:                                              ; preds = %507
  %513 = load i32, i32* %23, align 4
  %514 = load i32*, i32** %9, align 8
  store i32 %513, i32* %514, align 4
  br label %515

515:                                              ; preds = %512, %507
  %516 = load i32*, i32** %10, align 8
  %517 = icmp ne i32* %516, null
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = load i32, i32* %24, align 4
  %520 = load i32*, i32** %10, align 8
  store i32 %519, i32* %520, align 4
  br label %521

521:                                              ; preds = %39, %133, %139, %239, %259, %274, %289, %292, %301, %312, %322, %518, %515
  ret void
}

declare dso_local i32 @TargaError(%struct.TYPE_3__*, i8*) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @Sys_Printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
