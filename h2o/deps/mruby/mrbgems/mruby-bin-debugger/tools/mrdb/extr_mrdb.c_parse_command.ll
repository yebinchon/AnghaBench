; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_parse_command.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_parse_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i8**, i32 }

@debug_command_list = common dso_local global i64 0, align 8
@MAX_COMMAND_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, %struct.TYPE_5__*, i8*)* @parse_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @parse_command(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @pick_out_word(i32* %12, i8** %9)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %293

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %41, %25
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @ISBLANK(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  br label %28

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8*, i8** %52, i64 %57
  store i8* %49, i8** %58, align 8
  br label %59

59:                                               ; preds = %48, %44
  %60 = load i64, i64* @debug_command_list, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %8, align 8
  br label %62

62:                                               ; preds = %93, %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @strncmp(i8* %84, i64 %87, i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %96

92:                                               ; preds = %79, %67
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 1
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %8, align 8
  br label %62

96:                                               ; preds = %91, %62
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %226

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %153

106:                                              ; preds = %101
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @pick_out_word(i32* %107, i8** %9)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %152

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %133, %119
  %121 = load i8*, i8** %9, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i8*, i8** %9, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @ISBLANK(i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i1 [ false, %120 ], [ %129, %125 ]
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %9, align 8
  br label %120

136:                                              ; preds = %130
  %137 = load i8*, i8** %9, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i8*, i8** %9, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8*, i8** %144, i64 %149
  store i8* %141, i8** %150, align 8
  br label %151

151:                                              ; preds = %140, %136
  br label %152

152:                                              ; preds = %151, %106
  br label %153

153:                                              ; preds = %152, %101
  br label %154

154:                                              ; preds = %222, %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %225

159:                                              ; preds = %154
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @strlen(i8* %164)
  store i64 %165, i64* %10, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ult i64 %166, %169
  br i1 %170, label %183, label %171

171:                                              ; preds = %159
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = call i64 @strncmp(i8* %176, i64 %179, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171, %159
  br label %222

184:                                              ; preds = %171
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  br label %225

190:                                              ; preds = %184
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %222

196:                                              ; preds = %190
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 1
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @strlen(i8* %201)
  store i64 %202, i64* %10, align 8
  %203 = load i64, i64* %10, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp uge i64 %203, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %196
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i8**, i8*** %210, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 1
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %10, align 8
  %218 = call i64 @strncmp(i8* %213, i64 %216, i64 %217)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %225

221:                                              ; preds = %208, %196
  br label %222

222:                                              ; preds = %221, %195, %183
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 1
  store %struct.TYPE_6__* %224, %struct.TYPE_6__** %8, align 8
  br label %154

225:                                              ; preds = %220, %189, %154
  br label %226

226:                                              ; preds = %225, %96
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %283

231:                                              ; preds = %226
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %283

236:                                              ; preds = %231
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i8**, i8*** %238, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %239, i64 %244
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %9, align 8
  br label %247

247:                                              ; preds = %277, %236
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* @MAX_COMMAND_WORD, align 8
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %282

254:                                              ; preds = %247
  %255 = load i32*, i32** %5, align 8
  %256 = call i8* @pick_out_word(i32* %255, i8** %9)
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i8**, i8*** %258, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %259, i64 %263
  store i8* %256, i8** %264, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i8**, i8*** %266, align 8
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %267, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %254
  br label %282

276:                                              ; preds = %254
  br label %277

277:                                              ; preds = %276
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  br label %247

282:                                              ; preds = %275, %247
  br label %283

283:                                              ; preds = %282, %231, %226
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  br label %291

290:                                              ; preds = %283
  br label %291

291:                                              ; preds = %290, %288
  %292 = phi %struct.TYPE_6__* [ %289, %288 ], [ null, %290 ]
  store %struct.TYPE_6__* %292, %struct.TYPE_6__** %4, align 8
  br label %293

293:                                              ; preds = %291, %24
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %294
}

declare dso_local i8* @pick_out_word(i32*, i8**) #1

declare dso_local i64 @ISBLANK(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
