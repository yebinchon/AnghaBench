; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_memextra_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_memextra_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_interests = type { i32, i32, i64, i64 }

@I = common dso_local global i32* null, align 8
@me_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i32 0, align 4
@output_format = common dso_local global i32 0, align 4
@L = common dso_local global i64* null, align 8
@me_text = common dso_local global i64 0, align 8
@LEV_TARG_INTERESTS = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4
@allowed = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_memextra_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_interests*, align 8
  %8 = load i32*, i32** @I, align 8
  %9 = load i64, i64* @me_id, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 1000
  store i32 %12, i32* %1, align 4
  %13 = load i32*, i32** @I, align 8
  %14 = load i64, i64* @me_id, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %16, 1000
  %18 = sdiv i32 %17, 10
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %1, align 4
  store i32 %19, i32* @user_id, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @fits(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %0
  br label %388

24:                                               ; preds = %0
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = icmp sgt i32 %28, 7
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  br label %388

31:                                               ; preds = %27
  %32 = load i32, i32* @output_format, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i64*, i64** @L, align 8
  %36 = load i64, i64* @me_text, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 11, %38
  %40 = call %struct.lev_interests* @write_alloc(i64 %39)
  store %struct.lev_interests* %40, %struct.lev_interests** %7, align 8
  %41 = load i64, i64* @LEV_TARG_INTERESTS, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load %struct.lev_interests*, %struct.lev_interests** %7, align 8
  %46 = getelementptr inbounds %struct.lev_interests, %struct.lev_interests* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @user_id, align 4
  %48 = load %struct.lev_interests*, %struct.lev_interests** %7, align 8
  %49 = getelementptr inbounds %struct.lev_interests, %struct.lev_interests* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i64*, i64** @L, align 8
  %51 = load i64, i64* @me_text, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lev_interests*, %struct.lev_interests** %7, align 8
  %55 = getelementptr inbounds %struct.lev_interests, %struct.lev_interests* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.lev_interests*, %struct.lev_interests** %7, align 8
  %57 = getelementptr inbounds %struct.lev_interests, %struct.lev_interests* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** @S, align 8
  %60 = load i64, i64* @me_text, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcpy(i32 %58, i8* %62)
  %64 = load i32, i32* @adj_rec, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @adj_rec, align 4
  br label %388

66:                                               ; preds = %31
  %67 = load i8**, i8*** @S, align 8
  %68 = load i64, i64* @me_text, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %4, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %260, %235, %206, %180, %174, %131, %130, %114, %66
  %72 = load i8*, i8** %3, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %267

75:                                               ; preds = %71
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 38
  br i1 %80, label %81, label %185

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 35
  br i1 %86, label %87, label %134

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = call i32 @strtol(i8* %89, i8** %5, i32 10)
  store i32 %90, i32* %6, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %267

95:                                               ; preds = %87
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = icmp ugt i8* %96, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %95
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 59
  br i1 %104, label %105, label %131

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 128
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 10006
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 8236
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %108, %105
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8* %116, i8** %3, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %4, align 8
  store i8 32, i8* %117, align 1
  br label %71

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %124, %119
  %121 = load i8*, i8** %3, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = icmp ule i8* %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %3, align 8
  %127 = load i8, i8* %125, align 1
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  store i8 %127, i8* %128, align 1
  br label %120

130:                                              ; preds = %120
  br label %71

131:                                              ; preds = %100, %95
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %133, i8** %3, align 8
  br label %71

134:                                              ; preds = %81
  %135 = load i8*, i8** %3, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sge i32 %138, 97
  br i1 %139, label %140, label %180

140:                                              ; preds = %134
  %141 = load i8*, i8** %3, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sle i32 %144, 122
  br i1 %145, label %146, label %180

146:                                              ; preds = %140
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %148, i8** %5, align 8
  br label %149

149:                                              ; preds = %161, %146
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sge i32 %152, 97
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i8*, i8** %5, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp sle i32 %157, 122
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i1 [ false, %149 ], [ %158, %154 ]
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %5, align 8
  br label %149

164:                                              ; preds = %159
  %165 = load i8*, i8** %5, align 8
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %267

169:                                              ; preds = %164
  %170 = load i8*, i8** %5, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 59
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8* %176, i8** %3, align 8
  %177 = load i8*, i8** %4, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %4, align 8
  store i8 32, i8* %177, align 1
  br label %71

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %140, %134
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %4, align 8
  store i8 32, i8* %181, align 1
  %183 = load i8*, i8** %3, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %3, align 8
  br label %71

185:                                              ; preds = %75
  %186 = load i32, i32* %6, align 4
  %187 = icmp eq i32 %186, 60
  br i1 %187, label %188, label %241

188:                                              ; preds = %185
  %189 = load i8*, i8** %3, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 98
  br i1 %193, label %194, label %211

194:                                              ; preds = %188
  %195 = load i8*, i8** %3, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 114
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load i8*, i8** %3, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 3
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 62
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %4, align 8
  store i8 32, i8* %207, align 1
  %209 = load i8*, i8** %3, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 4
  store i8* %210, i8** %3, align 8
  br label %71

211:                                              ; preds = %200, %194, %188
  %212 = load i8*, i8** %3, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 47
  br i1 %216, label %217, label %240

217:                                              ; preds = %211
  %218 = load i8*, i8** %3, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 98
  br i1 %222, label %223, label %240

223:                                              ; preds = %217
  %224 = load i8*, i8** %3, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 3
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 114
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = load i8*, i8** %3, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 4
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 62
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i8*, i8** %4, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %4, align 8
  store i8 32, i8* %236, align 1
  %238 = load i8*, i8** %3, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 5
  store i8* %239, i8** %3, align 8
  br label %71

240:                                              ; preds = %229, %223, %217, %211
  br label %241

241:                                              ; preds = %240, %185
  %242 = load i32, i32* %6, align 4
  %243 = icmp slt i32 %242, 128
  br i1 %243, label %244, label %252

244:                                              ; preds = %241
  %245 = load i32*, i32** @allowed, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  store i32 32, i32* %6, align 4
  br label %252

252:                                              ; preds = %251, %244, %241
  %253 = load i32, i32* %6, align 4
  %254 = icmp eq i32 %253, 168
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 197, i32* %6, align 4
  br label %256

256:                                              ; preds = %255, %252
  %257 = load i32, i32* %6, align 4
  %258 = icmp eq i32 %257, 184
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 229, i32* %6, align 4
  br label %260

260:                                              ; preds = %259, %256
  %261 = load i32, i32* %6, align 4
  %262 = trunc i32 %261 to i8
  %263 = load i8*, i8** %4, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %4, align 8
  store i8 %262, i8* %263, align 1
  %265 = load i8*, i8** %3, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %3, align 8
  br label %71

267:                                              ; preds = %168, %94, %71
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  store i8 0, i8* %269, align 1
  store i32 0, i32* %6, align 4
  %270 = load i8**, i8*** @S, align 8
  %271 = load i64, i64* @me_text, align 8
  %272 = getelementptr inbounds i8*, i8** %270, i64 %271
  %273 = load i8*, i8** %272, align 8
  store i8* %273, i8** %4, align 8
  store i8* %273, i8** %3, align 8
  br label %274

274:                                              ; preds = %296, %267
  %275 = load i8*, i8** %3, align 8
  %276 = load i8, i8* %275, align 1
  %277 = icmp ne i8 %276, 0
  br i1 %277, label %278, label %299

278:                                              ; preds = %274
  %279 = load i8*, i8** %3, align 8
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = load i32, i32* %6, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %295

284:                                              ; preds = %278
  %285 = load i8*, i8** %3, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  store i32 %287, i32* %6, align 4
  %288 = trunc i32 %287 to i8
  %289 = load i8*, i8** %4, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %4, align 8
  store i8 %288, i8* %289, align 1
  %291 = load i32, i32* %6, align 4
  %292 = icmp ne i32 %291, 32
  br i1 %292, label %293, label %294

293:                                              ; preds = %284
  store i32 0, i32* %6, align 4
  br label %294

294:                                              ; preds = %293, %284
  br label %295

295:                                              ; preds = %294, %278
  br label %296

296:                                              ; preds = %295
  %297 = load i8*, i8** %3, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %3, align 8
  br label %274

299:                                              ; preds = %274
  %300 = load i8*, i8** %4, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 1
  store i8 0, i8* %301, align 1
  %302 = load i8*, i8** %4, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  store i8 0, i8* %303, align 1
  %304 = load i8**, i8*** @S, align 8
  %305 = load i64, i64* @me_text, align 8
  %306 = getelementptr inbounds i8*, i8** %304, i64 %305
  %307 = load i8*, i8** %306, align 8
  store i8* %307, i8** %3, align 8
  br label %308

308:                                              ; preds = %384, %299
  br label %309

309:                                              ; preds = %321, %308
  %310 = load i8*, i8** %3, align 8
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp sle i32 %312, 32
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load i8*, i8** %3, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp ne i32 %317, 0
  br label %319

319:                                              ; preds = %314, %309
  %320 = phi i1 [ false, %309 ], [ %318, %314 ]
  br i1 %320, label %321, label %324

321:                                              ; preds = %319
  %322 = load i8*, i8** %3, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %3, align 8
  br label %309

324:                                              ; preds = %319
  %325 = load i8*, i8** %3, align 8
  %326 = load i8, i8* %325, align 1
  %327 = icmp ne i8 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %324
  br label %385

329:                                              ; preds = %324
  %330 = load i8*, i8** %3, align 8
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp eq i32 %332, 44
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i8*, i8** %3, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %3, align 8
  br label %384

337:                                              ; preds = %329
  %338 = load i8*, i8** %3, align 8
  store i8* %338, i8** %4, align 8
  br label %339

339:                                              ; preds = %351, %337
  %340 = load i8*, i8** %3, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %339
  %345 = load i8*, i8** %3, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp ne i32 %347, 44
  br label %349

349:                                              ; preds = %344, %339
  %350 = phi i1 [ false, %339 ], [ %348, %344 ]
  br i1 %350, label %351, label %354

351:                                              ; preds = %349
  %352 = load i8*, i8** %3, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %3, align 8
  br label %339

354:                                              ; preds = %349
  br label %355

355:                                              ; preds = %367, %354
  %356 = load i8*, i8** %3, align 8
  %357 = load i8*, i8** %4, align 8
  %358 = icmp ugt i8* %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %355
  %360 = load i8*, i8** %3, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 -1
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 32
  br label %365

365:                                              ; preds = %359, %355
  %366 = phi i1 [ false, %355 ], [ %364, %359 ]
  br i1 %366, label %367, label %370

367:                                              ; preds = %365
  %368 = load i8*, i8** %3, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 -1
  store i8* %369, i8** %3, align 8
  br label %355

370:                                              ; preds = %365
  %371 = load i8*, i8** %3, align 8
  store i8 0, i8* %371, align 1
  %372 = load i32, i32* @output_format, align 4
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %374, label %383

374:                                              ; preds = %370
  %375 = load i8*, i8** %4, align 8
  %376 = load i8*, i8** %3, align 8
  %377 = load i8*, i8** %4, align 8
  %378 = ptrtoint i8* %376 to i64
  %379 = ptrtoint i8* %377 to i64
  %380 = sub i64 %378, %379
  %381 = trunc i64 %380 to i32
  %382 = call i32 @keep_word(i8* %375, i32 %381)
  br label %383

383:                                              ; preds = %374, %370
  br label %384

384:                                              ; preds = %383, %334
  br i1 true, label %308, label %385

385:                                              ; preds = %384, %328
  %386 = load i32, i32* @adj_rec, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* @adj_rec, align 4
  br label %388

388:                                              ; preds = %385, %34, %30, %23
  ret void
}

declare dso_local i32 @fits(i32) #1

declare dso_local %struct.lev_interests* @write_alloc(i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @keep_word(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
