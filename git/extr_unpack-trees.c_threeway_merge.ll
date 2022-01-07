; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_threeway_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_threeway_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32, i32, %struct.cache_entry*, i64 }

@ERROR_WOULD_LOSE_UNTRACKED_REMOVED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @threeway_merge(%struct.cache_entry** %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry** %0, %struct.cache_entry*** %4, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %5, align 8
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %21 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %22 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %20, i64 %25
  %27 = load %struct.cache_entry*, %struct.cache_entry** %26, align 8
  store %struct.cache_entry* %27, %struct.cache_entry** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %28

28:                                               ; preds = %54, %2
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %31 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %35, i64 %37
  %39 = load %struct.cache_entry*, %struct.cache_entry** %38, align 8
  %40 = icmp ne %struct.cache_entry* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %42, i64 %44
  %46 = load %struct.cache_entry*, %struct.cache_entry** %45, align 8
  %47 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %48 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %47, i32 0, i32 2
  %49 = load %struct.cache_entry*, %struct.cache_entry** %48, align 8
  %50 = icmp eq %struct.cache_entry* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41, %34
  store i32 1, i32* %14, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %28

57:                                               ; preds = %28
  %58 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %59 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %58, i64 0
  %60 = load %struct.cache_entry*, %struct.cache_entry** %59, align 8
  store %struct.cache_entry* %60, %struct.cache_entry** %6, align 8
  %61 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %62 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %63 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %61, i64 %65
  %67 = load %struct.cache_entry*, %struct.cache_entry** %66, align 8
  store %struct.cache_entry* %67, %struct.cache_entry** %7, align 8
  %68 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %69 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %70 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %69, i32 0, i32 2
  %71 = load %struct.cache_entry*, %struct.cache_entry** %70, align 8
  %72 = icmp eq %struct.cache_entry* %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  store i32 1, i32* %12, align 4
  store %struct.cache_entry* null, %struct.cache_entry** %7, align 8
  br label %74

74:                                               ; preds = %73, %57
  %75 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %76 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %77 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %76, i32 0, i32 2
  %78 = load %struct.cache_entry*, %struct.cache_entry** %77, align 8
  %79 = icmp eq %struct.cache_entry* %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %13, align 4
  store %struct.cache_entry* null, %struct.cache_entry** %8, align 8
  br label %81

81:                                               ; preds = %80, %74
  %82 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %83 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %84 = call i64 @same(%struct.cache_entry* %82, %struct.cache_entry* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %120, label %86

86:                                               ; preds = %81
  store i32 1, i32* %16, align 4
  br label %87

87:                                               ; preds = %116, %86
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %90 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %94, i64 %96
  %98 = load %struct.cache_entry*, %struct.cache_entry** %97, align 8
  %99 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %100 = call i64 @same(%struct.cache_entry* %98, %struct.cache_entry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %93
  %105 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %105, i64 %107
  %109 = load %struct.cache_entry*, %struct.cache_entry** %108, align 8
  %110 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %111 = call i64 @same(%struct.cache_entry* %109, %struct.cache_entry* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %87

119:                                              ; preds = %87
  br label %120

120:                                              ; preds = %119, %81
  %121 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %122 = icmp ne %struct.cache_entry* %121, null
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %129
  %133 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %134 = icmp ne %struct.cache_entry* %133, null
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %137 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %138 = call i64 @same(%struct.cache_entry* %136, %struct.cache_entry* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  %141 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %142 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %143 = call i64 @same(%struct.cache_entry* %141, %struct.cache_entry* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %147 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %148 = call i32 @reject_merge(%struct.cache_entry* %146, %struct.unpack_trees_options* %147)
  store i32 %148, i32* %3, align 4
  br label %417

149:                                              ; preds = %140, %135, %132
  %150 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %151 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %152 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %153 = call i32 @merged_entry(%struct.cache_entry* %150, %struct.cache_entry* %151, %struct.unpack_trees_options* %152)
  store i32 %153, i32* %3, align 4
  br label %417

154:                                              ; preds = %129, %126, %123, %120
  %155 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %156 = icmp ne %struct.cache_entry* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %159 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %160 = call i64 @same(%struct.cache_entry* %158, %struct.cache_entry* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %164 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %165 = call i32 @reject_merge(%struct.cache_entry* %163, %struct.unpack_trees_options* %164)
  store i32 %165, i32* %3, align 4
  br label %417

166:                                              ; preds = %157, %154
  %167 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %168 = icmp ne %struct.cache_entry* %167, null
  br i1 %168, label %169, label %194

169:                                              ; preds = %166
  %170 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %171 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %172 = call i64 @same(%struct.cache_entry* %170, %struct.cache_entry* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %176 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %177 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %178 = call i32 @merged_entry(%struct.cache_entry* %175, %struct.cache_entry* %176, %struct.unpack_trees_options* %177)
  store i32 %178, i32* %3, align 4
  br label %417

179:                                              ; preds = %169
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %190 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %191 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %192 = call i32 @merged_entry(%struct.cache_entry* %189, %struct.cache_entry* %190, %struct.unpack_trees_options* %191)
  store i32 %192, i32* %3, align 4
  br label %417

193:                                              ; preds = %185, %182, %179
  br label %194

194:                                              ; preds = %193, %166
  %195 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %196 = icmp ne %struct.cache_entry* %195, null
  br i1 %196, label %204, label %197

197:                                              ; preds = %194
  %198 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %199 = icmp ne %struct.cache_entry* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  br label %417

204:                                              ; preds = %200, %197, %194
  %205 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %206 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %336

209:                                              ; preds = %204
  %210 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %211 = icmp ne %struct.cache_entry* %210, null
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %17, align 4
  %214 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %215 = icmp ne %struct.cache_entry* %214, null
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  store i32 %217, i32* %18, align 4
  store %struct.cache_entry* null, %struct.cache_entry** %19, align 8
  %218 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %219 = icmp ne %struct.cache_entry* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %209
  %221 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  store %struct.cache_entry* %221, %struct.cache_entry** %19, align 8
  br label %269

222:                                              ; preds = %209
  %223 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %224 = icmp ne %struct.cache_entry* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  store %struct.cache_entry* %226, %struct.cache_entry** %19, align 8
  br label %268

227:                                              ; preds = %222
  %228 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %229 = icmp ne %struct.cache_entry* %228, null
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %231, %struct.cache_entry** %19, align 8
  br label %267

232:                                              ; preds = %227
  store i32 1, i32* %16, align 4
  br label %233

233:                                              ; preds = %263, %232
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %236 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %233
  %240 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %240, i64 %242
  %244 = load %struct.cache_entry*, %struct.cache_entry** %243, align 8
  %245 = icmp ne %struct.cache_entry* %244, null
  br i1 %245, label %246, label %262

246:                                              ; preds = %239
  %247 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %247, i64 %249
  %251 = load %struct.cache_entry*, %struct.cache_entry** %250, align 8
  %252 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %253 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %252, i32 0, i32 2
  %254 = load %struct.cache_entry*, %struct.cache_entry** %253, align 8
  %255 = icmp ne %struct.cache_entry* %251, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %246
  %257 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %258 = load i32, i32* %16, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %257, i64 %259
  %261 = load %struct.cache_entry*, %struct.cache_entry** %260, align 8
  store %struct.cache_entry* %261, %struct.cache_entry** %19, align 8
  br label %266

262:                                              ; preds = %246, %239
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %16, align 4
  br label %233

266:                                              ; preds = %256, %233
  br label %267

267:                                              ; preds = %266, %230
  br label %268

268:                                              ; preds = %267, %225
  br label %269

269:                                              ; preds = %268, %220
  %270 = load i32, i32* %17, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* %18, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %293, label %275

275:                                              ; preds = %272, %269
  %276 = load i32, i32* %17, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %280 = icmp ne %struct.cache_entry* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %293, label %284

284:                                              ; preds = %281, %278, %275
  %285 = load i32, i32* %18, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %316

287:                                              ; preds = %284
  %288 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %289 = icmp ne %struct.cache_entry* %288, null
  br i1 %289, label %290, label %316

290:                                              ; preds = %287
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %316

293:                                              ; preds = %290, %281, %272
  %294 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %295 = icmp ne %struct.cache_entry* %294, null
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %298 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %299 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %300 = call i32 @deleted_entry(%struct.cache_entry* %297, %struct.cache_entry* %298, %struct.unpack_trees_options* %299)
  store i32 %300, i32* %3, align 4
  br label %417

301:                                              ; preds = %293
  %302 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %303 = icmp ne %struct.cache_entry* %302, null
  br i1 %303, label %304, label %315

304:                                              ; preds = %301
  %305 = load i32, i32* %17, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %304
  %308 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  %309 = load i32, i32* @ERROR_WOULD_LOSE_UNTRACKED_REMOVED, align 4
  %310 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %311 = call i64 @verify_absent(%struct.cache_entry* %308, i32 %309, %struct.unpack_trees_options* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i32 -1, i32* %3, align 4
  br label %417

314:                                              ; preds = %307
  br label %315

315:                                              ; preds = %314, %304, %301
  store i32 0, i32* %3, align 4
  br label %417

316:                                              ; preds = %290, %287, %284
  %317 = load i32, i32* %15, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %335

319:                                              ; preds = %316
  %320 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %321 = icmp ne %struct.cache_entry* %320, null
  br i1 %321, label %322, label %335

322:                                              ; preds = %319
  %323 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %324 = icmp ne %struct.cache_entry* %323, null
  br i1 %324, label %325, label %335

325:                                              ; preds = %322
  %326 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %327 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %328 = call i64 @same(%struct.cache_entry* %326, %struct.cache_entry* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %332 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %333 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %334 = call i32 @merged_entry(%struct.cache_entry* %331, %struct.cache_entry* %332, %struct.unpack_trees_options* %333)
  store i32 %334, i32* %3, align 4
  br label %417

335:                                              ; preds = %325, %322, %319, %316
  br label %336

336:                                              ; preds = %335, %204
  %337 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %338 = icmp ne %struct.cache_entry* %337, null
  br i1 %338, label %339, label %346

339:                                              ; preds = %336
  %340 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %341 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %342 = call i64 @verify_uptodate(%struct.cache_entry* %340, %struct.unpack_trees_options* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  store i32 -1, i32* %3, align 4
  br label %417

345:                                              ; preds = %339
  br label %346

346:                                              ; preds = %345, %336
  %347 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %348 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %347, i32 0, i32 1
  store i32 1, i32* %348, align 4
  store i32 0, i32* %9, align 4
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load i32, i32* %11, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %393, label %354

354:                                              ; preds = %351, %346
  store i32 1, i32* %16, align 4
  br label %355

355:                                              ; preds = %389, %354
  %356 = load i32, i32* %16, align 4
  %357 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %358 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %392

361:                                              ; preds = %355
  %362 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %363 = load i32, i32* %16, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %362, i64 %364
  %366 = load %struct.cache_entry*, %struct.cache_entry** %365, align 8
  %367 = icmp ne %struct.cache_entry* %366, null
  br i1 %367, label %368, label %388

368:                                              ; preds = %361
  %369 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %370 = load i32, i32* %16, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %369, i64 %371
  %373 = load %struct.cache_entry*, %struct.cache_entry** %372, align 8
  %374 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %375 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %374, i32 0, i32 2
  %376 = load %struct.cache_entry*, %struct.cache_entry** %375, align 8
  %377 = icmp ne %struct.cache_entry* %373, %376
  br i1 %377, label %378, label %388

378:                                              ; preds = %368
  %379 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %380 = load i32, i32* %16, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %379, i64 %381
  %383 = load %struct.cache_entry*, %struct.cache_entry** %382, align 8
  %384 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %385 = call i64 @keep_entry(%struct.cache_entry* %383, %struct.unpack_trees_options* %384)
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %9, align 4
  br label %392

388:                                              ; preds = %368, %361
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %16, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %16, align 4
  br label %355

392:                                              ; preds = %378, %355
  br label %393

393:                                              ; preds = %392, %351
  %394 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %395 = icmp ne %struct.cache_entry* %394, null
  br i1 %395, label %396, label %404

396:                                              ; preds = %393
  %397 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %398 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %399 = call i64 @keep_entry(%struct.cache_entry* %397, %struct.unpack_trees_options* %398)
  %400 = load i32, i32* %9, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, %399
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %9, align 4
  br label %404

404:                                              ; preds = %396, %393
  %405 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %406 = icmp ne %struct.cache_entry* %405, null
  br i1 %406, label %407, label %415

407:                                              ; preds = %404
  %408 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %409 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %410 = call i64 @keep_entry(%struct.cache_entry* %408, %struct.unpack_trees_options* %409)
  %411 = load i32, i32* %9, align 4
  %412 = sext i32 %411 to i64
  %413 = add nsw i64 %412, %410
  %414 = trunc i64 %413 to i32
  store i32 %414, i32* %9, align 4
  br label %415

415:                                              ; preds = %407, %404
  %416 = load i32, i32* %9, align 4
  store i32 %416, i32* %3, align 4
  br label %417

417:                                              ; preds = %415, %344, %330, %315, %313, %296, %203, %188, %174, %162, %149, %145
  %418 = load i32, i32* %3, align 4
  ret i32 %418
}

declare dso_local i64 @same(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @reject_merge(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @merged_entry(%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @deleted_entry(%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @verify_absent(%struct.cache_entry*, i32, %struct.unpack_trees_options*) #1

declare dso_local i64 @verify_uptodate(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @keep_entry(%struct.cache_entry*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
