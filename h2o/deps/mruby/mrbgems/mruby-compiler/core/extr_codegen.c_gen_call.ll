; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_call.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }

@VAL = common dso_local global i32 0, align 4
@OP_JMPNIL = common dso_local global i32 0, align 4
@OP_ARYPUSH = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@OP_SUB = common dso_local global i32 0, align 4
@OP_MUL = common dso_local global i32 0, align 4
@OP_DIV = common dso_local global i32 0, align 4
@OP_LT = common dso_local global i32 0, align 4
@OP_LE = common dso_local global i32 0, align 4
@OP_GT = common dso_local global i32 0, align 4
@OP_GE = common dso_local global i32 0, align 4
@OP_EQ = common dso_local global i32 0, align 4
@OP_SENDVB = common dso_local global i32 0, align 4
@OP_SENDV = common dso_local global i32 0, align 4
@OP_SENDB = common dso_local global i32 0, align 4
@OP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, i64, i32, i32, i32)* @gen_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_call(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i64, i64* %9, align 8
  br label %34

27:                                               ; preds = %6
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @nsym(i32 %32)
  br label %34

34:                                               ; preds = %27, %25
  %35 = phi i64 [ %26, %25 ], [ %33, %27 ]
  store i64 %35, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = load i32, i32* @VAL, align 4
  %41 = call i32 @codegen(%struct.TYPE_21__* %36, %struct.TYPE_18__* %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = call i32 (...) @cursp()
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %19, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = call i32 (...) @cursp()
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @gen_move(%struct.TYPE_21__* %47, i32 %48, i32 %49, i32 1)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = load i32, i32* @OP_JMPNIL, align 4
  %53 = call i32 (...) @cursp()
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @genjmp2(%struct.TYPE_21__* %51, i32 %52, i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %44, %34
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %8, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %65 = icmp ne %struct.TYPE_20__* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %56
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = load i32, i32* @VAL, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = call i32 @gen_values(%struct.TYPE_21__* %67, %struct.TYPE_18__* %70, i32 %71, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  store i32 1, i32* %17, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  %80 = call i32 (...) @push()
  br label %81

81:                                               ; preds = %79, %66
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %90 = call i32 (...) @cursp()
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @gen_move(%struct.TYPE_21__* %89, i32 %90, i32 %91, i32 0)
  %93 = call i32 (...) @pop()
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %95 = load i32, i32* @OP_ARYPUSH, align 4
  %96 = call i32 (...) @cursp()
  %97 = call i32 @genop_1(%struct.TYPE_21__* %94, i32 %95, i32 %96)
  %98 = call i32 (...) @push()
  br label %107

99:                                               ; preds = %85
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = call i32 (...) @cursp()
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @gen_move(%struct.TYPE_21__* %100, i32 %101, i32 %102, i32 0)
  %104 = call i32 (...) @push()
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %99, %88
  br label %108

108:                                              ; preds = %107, %82
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = icmp ne %struct.TYPE_20__* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = icmp ne %struct.TYPE_18__* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  store i32 1, i32* %16, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = load i32, i32* @VAL, align 4
  %122 = call i32 @codegen(%struct.TYPE_21__* %117, %struct.TYPE_18__* %120, i32 %121)
  %123 = call i32 (...) @pop()
  store i32 1, i32* %18, align 4
  br label %124

124:                                              ; preds = %116, %111, %108
  %125 = call i32 (...) @push()
  %126 = call i32 (...) @pop()
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @pop_n(i32 %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %13, align 8
  %134 = call i8* @mrb_sym2name_len(i32 %132, i64 %133, i32* %20)
  store i8* %134, i8** %21, align 8
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %20, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load i8*, i8** %21, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 43
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load i32, i32* %15, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %151 = load i32, i32* @OP_ADD, align 4
  %152 = call i32 (...) @cursp()
  %153 = call i32 @gen_addsub(%struct.TYPE_21__* %150, i32 %151, i32 %152)
  br label %374

154:                                              ; preds = %146, %140, %137, %124
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %174, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %20, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load i8*, i8** %21, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 45
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = load i32, i32* @OP_SUB, align 4
  %172 = call i32 (...) @cursp()
  %173 = call i32 @gen_addsub(%struct.TYPE_21__* %170, i32 %171, i32 %172)
  br label %373

174:                                              ; preds = %166, %160, %157, %154
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %194, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %20, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %194

180:                                              ; preds = %177
  %181 = load i8*, i8** %21, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 42
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load i32, i32* %15, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = load i32, i32* @OP_MUL, align 4
  %192 = call i32 (...) @cursp()
  %193 = call i32 @genop_1(%struct.TYPE_21__* %190, i32 %191, i32 %192)
  br label %372

194:                                              ; preds = %186, %180, %177, %174
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %214, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %20, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load i8*, i8** %21, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 47
  br i1 %205, label %206, label %214

206:                                              ; preds = %200
  %207 = load i32, i32* %15, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %211 = load i32, i32* @OP_DIV, align 4
  %212 = call i32 (...) @cursp()
  %213 = call i32 @genop_1(%struct.TYPE_21__* %210, i32 %211, i32 %212)
  br label %371

214:                                              ; preds = %206, %200, %197, %194
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %234, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %20, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %234

220:                                              ; preds = %217
  %221 = load i8*, i8** %21, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 60
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load i32, i32* %15, align 4
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %231 = load i32, i32* @OP_LT, align 4
  %232 = call i32 (...) @cursp()
  %233 = call i32 @genop_1(%struct.TYPE_21__* %230, i32 %231, i32 %232)
  br label %370

234:                                              ; preds = %226, %220, %217, %214
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %260, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %20, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %260

240:                                              ; preds = %237
  %241 = load i8*, i8** %21, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 60
  br i1 %245, label %246, label %260

246:                                              ; preds = %240
  %247 = load i8*, i8** %21, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 61
  br i1 %251, label %252, label %260

252:                                              ; preds = %246
  %253 = load i32, i32* %15, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %260

255:                                              ; preds = %252
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %257 = load i32, i32* @OP_LE, align 4
  %258 = call i32 (...) @cursp()
  %259 = call i32 @genop_1(%struct.TYPE_21__* %256, i32 %257, i32 %258)
  br label %369

260:                                              ; preds = %252, %246, %240, %237, %234
  %261 = load i32, i32* %16, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %280, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %20, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load i8*, i8** %21, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 0
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 62
  br i1 %271, label %272, label %280

272:                                              ; preds = %266
  %273 = load i32, i32* %15, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %277 = load i32, i32* @OP_GT, align 4
  %278 = call i32 (...) @cursp()
  %279 = call i32 @genop_1(%struct.TYPE_21__* %276, i32 %277, i32 %278)
  br label %368

280:                                              ; preds = %272, %266, %263, %260
  %281 = load i32, i32* %16, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %306, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %20, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %306

286:                                              ; preds = %283
  %287 = load i8*, i8** %21, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 62
  br i1 %291, label %292, label %306

292:                                              ; preds = %286
  %293 = load i8*, i8** %21, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 61
  br i1 %297, label %298, label %306

298:                                              ; preds = %292
  %299 = load i32, i32* %15, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %303 = load i32, i32* @OP_GE, align 4
  %304 = call i32 (...) @cursp()
  %305 = call i32 @genop_1(%struct.TYPE_21__* %302, i32 %303, i32 %304)
  br label %367

306:                                              ; preds = %298, %292, %286, %283, %280
  %307 = load i32, i32* %16, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %332, label %309

309:                                              ; preds = %306
  %310 = load i32, i32* %20, align 4
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %312, label %332

312:                                              ; preds = %309
  %313 = load i8*, i8** %21, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 0
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 61
  br i1 %317, label %318, label %332

318:                                              ; preds = %312
  %319 = load i8*, i8** %21, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 61
  br i1 %323, label %324, label %332

324:                                              ; preds = %318
  %325 = load i32, i32* %15, align 4
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %329 = load i32, i32* @OP_EQ, align 4
  %330 = call i32 (...) @cursp()
  %331 = call i32 @genop_1(%struct.TYPE_21__* %328, i32 %329, i32 %330)
  br label %366

332:                                              ; preds = %324, %318, %312, %309, %306
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %334 = load i64, i64* %13, align 8
  %335 = call i32 @new_sym(%struct.TYPE_21__* %333, i64 %334)
  store i32 %335, i32* %22, align 4
  %336 = load i32, i32* %17, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %332
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %340 = load i32, i32* %18, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = load i32, i32* @OP_SENDVB, align 4
  br label %346

344:                                              ; preds = %338
  %345 = load i32, i32* @OP_SENDV, align 4
  br label %346

346:                                              ; preds = %344, %342
  %347 = phi i32 [ %343, %342 ], [ %345, %344 ]
  %348 = call i32 (...) @cursp()
  %349 = load i32, i32* %22, align 4
  %350 = call i32 @genop_2(%struct.TYPE_21__* %339, i32 %347, i32 %348, i32 %349)
  br label %365

351:                                              ; preds = %332
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %353 = load i32, i32* %18, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = load i32, i32* @OP_SENDB, align 4
  br label %359

357:                                              ; preds = %351
  %358 = load i32, i32* @OP_SEND, align 4
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %356, %355 ], [ %358, %357 ]
  %361 = call i32 (...) @cursp()
  %362 = load i32, i32* %22, align 4
  %363 = load i32, i32* %15, align 4
  %364 = call i32 @genop_3(%struct.TYPE_21__* %352, i32 %360, i32 %361, i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %359, %346
  br label %366

366:                                              ; preds = %365, %327
  br label %367

367:                                              ; preds = %366, %301
  br label %368

368:                                              ; preds = %367, %275
  br label %369

369:                                              ; preds = %368, %255
  br label %370

370:                                              ; preds = %369, %229
  br label %371

371:                                              ; preds = %370, %209
  br label %372

372:                                              ; preds = %371, %189
  br label %373

373:                                              ; preds = %372, %169
  br label %374

374:                                              ; preds = %373, %149
  %375 = load i32, i32* %12, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %379 = load i32, i32* %14, align 4
  %380 = call i32 @dispatch(%struct.TYPE_21__* %378, i32 %379)
  br label %381

381:                                              ; preds = %377, %374
  %382 = load i32, i32* %11, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = call i32 (...) @push()
  br label %386

386:                                              ; preds = %384, %381
  ret void
}

declare dso_local i64 @nsym(i32) #1

declare dso_local i32 @codegen(%struct.TYPE_21__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @gen_move(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @genjmp2(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_values(%struct.TYPE_21__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @genop_1(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @pop_n(i32) #1

declare dso_local i8* @mrb_sym2name_len(i32, i64, i32*) #1

declare dso_local i32 @gen_addsub(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @new_sym(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @genop_2(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @genop_3(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @dispatch(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
