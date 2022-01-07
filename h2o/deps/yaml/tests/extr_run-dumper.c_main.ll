; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-dumper.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-dumper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown option: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Usage: %s [-c] [-u] file1.yaml ...\0A\00", align 1
@BUFFER_SIZE = common dso_local global i32 0, align 4
@MAX_DOCUMENTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"[%d] Loading, dumping, and loading again '%s': \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"PASSED (length: %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %102, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %22
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %63

35:                                               ; preds = %26
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %62

44:                                               ; preds = %35
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 0, i32* %3, align 4
  br label %322

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %73, label %99

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memmove(i8** %82, i8** %87, i32 %94)
  br label %96

96:                                               ; preds = %78, %73
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  br label %102

99:                                               ; preds = %63
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %96
  br label %22

103:                                              ; preds = %22
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  store i32 0, i32* %3, align 4
  br label %322

111:                                              ; preds = %103
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %318, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %321

116:                                              ; preds = %112
  %117 = load i32, i32* @BUFFER_SIZE, align 4
  %118 = add nsw i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %13, align 8
  %121 = alloca i8, i64 %119, align 16
  store i64 %119, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %122 = load i32, i32* @MAX_DOCUMENTS, align 4
  %123 = zext i32 %122 to i64
  %124 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %125 = load i32, i32* @BUFFER_SIZE, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @memset(i8* %121, i32 0, i32 %126)
  %128 = load i32, i32* @MAX_DOCUMENTS, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(i8* %124, i32 0, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %133, i8* %138)
  %140 = load i32, i32* @stdout, align 4
  %141 = call i32 @fflush(i32 %140)
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32* @fopen(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %147, i32** %9, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = ptrtoint i32* %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = call i32 @yaml_parser_initialize(i32* %10)
  %152 = call i32 @assert(i32 %151)
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @yaml_parser_set_input_file(i32* %10, i32* %153)
  %155 = call i32 @yaml_emitter_initialize(i32* %11)
  %156 = call i32 @assert(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %116
  %160 = call i32 @yaml_emitter_set_canonical(i32* %11, i32 1)
  br label %161

161:                                              ; preds = %159, %116
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @yaml_emitter_set_unicode(i32* %11, i32 1)
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i32, i32* @BUFFER_SIZE, align 4
  %168 = call i32 @yaml_emitter_set_output_string(i32* %11, i8* %121, i32 %167, i64* %15)
  %169 = call i32 @yaml_emitter_open(i32* %11)
  br label %170

170:                                              ; preds = %222, %166
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  br i1 %173, label %174, label %223

174:                                              ; preds = %170
  %175 = call i64 @yaml_parser_load(i32* %10, i8* %12)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 1, i32* %20, align 4
  br label %223

178:                                              ; preds = %174
  %179 = call i32 @yaml_document_get_root_node(i8* %12)
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %220, label %185

185:                                              ; preds = %178
  %186 = load i64, i64* %17, align 8
  %187 = load i32, i32* @MAX_DOCUMENTS, align 4
  %188 = sext i32 %187 to i64
  %189 = icmp ult i64 %186, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i64, i64* %17, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %17, align 8
  %194 = getelementptr inbounds i8, i8* %124, i64 %192
  %195 = call i32 @copy_document(i8* %194, i8* %12)
  %196 = call i32 @assert(i32 %195)
  %197 = call i64 @yaml_emitter_dump(i32* %11, i8* %12)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %214, label %199

199:                                              ; preds = %185
  %200 = call i64 @yaml_emitter_flush(i32* %11)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = load i64, i64* %15, align 8
  %209 = load i32, i32* %19, align 4
  %210 = call i64 @print_output(i8* %207, i8* %121, i64 %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br label %212

212:                                              ; preds = %202, %199
  %213 = phi i1 [ false, %199 ], [ %211, %202 ]
  br label %214

214:                                              ; preds = %212, %185
  %215 = phi i1 [ true, %185 ], [ %213, %212 ]
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %19, align 4
  br label %222

220:                                              ; preds = %178
  %221 = call i32 @yaml_document_delete(i8* %12)
  br label %222

222:                                              ; preds = %220, %214
  br label %170

223:                                              ; preds = %177, %170
  %224 = call i32 @yaml_parser_delete(i32* %10)
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @fclose(i32* %225)
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = call i32 @yaml_emitter_close(i32* %11)
  %232 = call i32 @yaml_emitter_delete(i32* %11)
  %233 = load i32, i32* %20, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %293, label %235

235:                                              ; preds = %223
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %236 = call i32 @yaml_parser_initialize(i32* %10)
  %237 = call i32 @assert(i32 %236)
  %238 = load i64, i64* %15, align 8
  %239 = call i32 @yaml_parser_set_input_string(i32* %10, i8* %121, i64 %238)
  br label %240

240:                                              ; preds = %289, %235
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  br i1 %243, label %244, label %291

244:                                              ; preds = %240
  %245 = call i64 @yaml_parser_load(i32* %10, i8* %12)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %244
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = load i64, i64* %15, align 8
  %254 = load i32, i32* %19, align 4
  %255 = call i64 @print_output(i8* %252, i8* %121, i64 %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br label %257

257:                                              ; preds = %247, %244
  %258 = phi i1 [ true, %244 ], [ %256, %247 ]
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = call i32 @yaml_document_get_root_node(i8* %12)
  %262 = icmp ne i32 %261, 0
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %18, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %289, label %267

267:                                              ; preds = %257
  %268 = load i32, i32* %19, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %124, i64 %269
  %271 = call i64 @compare_documents(i8* %270, i8* %12)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %267
  %274 = load i8**, i8*** %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = load i64, i64* %15, align 8
  %280 = load i32, i32* %19, align 4
  %281 = call i64 @print_output(i8* %278, i8* %121, i64 %279, i32 %280)
  %282 = icmp ne i64 %281, 0
  br label %283

283:                                              ; preds = %273, %267
  %284 = phi i1 [ true, %267 ], [ %282, %273 ]
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  br label %289

289:                                              ; preds = %283, %257
  %290 = call i32 @yaml_document_delete(i8* %12)
  br label %240

291:                                              ; preds = %240
  %292 = call i32 @yaml_parser_delete(i32* %10)
  br label %293

293:                                              ; preds = %291, %223
  store i32 0, i32* %21, align 4
  br label %294

294:                                              ; preds = %304, %293
  %295 = load i32, i32* %21, align 4
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* %17, align 8
  %298 = icmp ult i64 %296, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load i32, i32* %21, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %124, i64 %301
  %303 = call i32 @yaml_document_delete(i8* %302)
  br label %304

304:                                              ; preds = %299
  %305 = load i32, i32* %21, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %21, align 4
  br label %294

307:                                              ; preds = %294
  %308 = load i64, i64* %15, align 8
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %308)
  %310 = load i8**, i8*** %5, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = load i64, i64* %15, align 8
  %316 = call i64 @print_output(i8* %314, i8* %121, i64 %315, i32 -1)
  %317 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %317)
  br label %318

318:                                              ; preds = %307
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %112

321:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %322

322:                                              ; preds = %321, %106, %54
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @yaml_parser_initialize(i32*) #1

declare dso_local i32 @yaml_parser_set_input_file(i32*, i32*) #1

declare dso_local i32 @yaml_emitter_initialize(i32*) #1

declare dso_local i32 @yaml_emitter_set_canonical(i32*, i32) #1

declare dso_local i32 @yaml_emitter_set_unicode(i32*, i32) #1

declare dso_local i32 @yaml_emitter_set_output_string(i32*, i8*, i32, i64*) #1

declare dso_local i32 @yaml_emitter_open(i32*) #1

declare dso_local i64 @yaml_parser_load(i32*, i8*) #1

declare dso_local i32 @yaml_document_get_root_node(i8*) #1

declare dso_local i32 @copy_document(i8*, i8*) #1

declare dso_local i64 @yaml_emitter_dump(i32*, i8*) #1

declare dso_local i64 @yaml_emitter_flush(i32*) #1

declare dso_local i64 @print_output(i8*, i8*, i64, i32) #1

declare dso_local i32 @yaml_document_delete(i8*) #1

declare dso_local i32 @yaml_parser_delete(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @yaml_emitter_close(i32*) #1

declare dso_local i32 @yaml_emitter_delete(i32*) #1

declare dso_local i32 @yaml_parser_set_input_string(i32*, i8*, i64) #1

declare dso_local i64 @compare_documents(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
