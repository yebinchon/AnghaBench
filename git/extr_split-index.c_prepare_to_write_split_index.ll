; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_prepare_to_write_split_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_prepare_to_write_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i64, i32, i32 }
%struct.split_index = type { i32, %struct.cache_entry**, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }

@.str = private unnamed_addr constant [73 x i8] c"ce refers to a shared ce at %d, which is beyond the shared index size %d\00", align 1
@CE_MATCHED = common dso_local global i32 0, align 4
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@CE_STRIP_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_to_write_split_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.split_index*, align 8
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %10 = load %struct.index_state*, %struct.index_state** %2, align 8
  %11 = call %struct.split_index* @init_split_index(%struct.index_state* %10)
  store %struct.split_index* %11, %struct.split_index** %3, align 8
  store %struct.cache_entry** null, %struct.cache_entry*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = call i8* (...) @ewah_new()
  %13 = load %struct.split_index*, %struct.split_index** %3, align 8
  %14 = getelementptr inbounds %struct.split_index, %struct.split_index* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = call i8* (...) @ewah_new()
  %16 = load %struct.split_index*, %struct.split_index** %3, align 8
  %17 = getelementptr inbounds %struct.split_index, %struct.split_index* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.split_index*, %struct.split_index** %3, align 8
  %19 = getelementptr inbounds %struct.split_index, %struct.split_index* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %264

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %180, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.index_state*, %struct.index_state** %2, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %183

29:                                               ; preds = %23
  %30 = load %struct.index_state*, %struct.index_state** %2, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 2
  %32 = load %struct.cache_entry**, %struct.cache_entry*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %32, i64 %34
  %36 = load %struct.cache_entry*, %struct.cache_entry** %35, align 8
  store %struct.cache_entry* %36, %struct.cache_entry** %5, align 8
  %37 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %180

42:                                               ; preds = %29
  %43 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.split_index*, %struct.split_index** %3, align 8
  %47 = getelementptr inbounds %struct.split_index, %struct.split_index* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %45, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %54 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.split_index*, %struct.split_index** %3, align 8
  %57 = getelementptr inbounds %struct.split_index, %struct.split_index* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @BUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %52, %42
  %63 = load i32, i32* @CE_MATCHED, align 4
  %64 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.split_index*, %struct.split_index** %3, align 8
  %69 = getelementptr inbounds %struct.split_index, %struct.split_index* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load %struct.cache_entry**, %struct.cache_entry*** %71, align 8
  %73 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %74 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %72, i64 %77
  %79 = load %struct.cache_entry*, %struct.cache_entry** %78, align 8
  store %struct.cache_entry* %79, %struct.cache_entry** %9, align 8
  %80 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %81 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %82 = icmp eq %struct.cache_entry* %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %62
  %84 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %85 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %108

91:                                               ; preds = %83
  %92 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %93 = call i32 @ce_uptodate(%struct.cache_entry* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = load %struct.index_state*, %struct.index_state** %2, align 8
  %97 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %98 = call i64 @is_racy_timestamp(%struct.index_state* %96, %struct.cache_entry* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %102 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %103 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %107

106:                                              ; preds = %95, %91
  br label %107

107:                                              ; preds = %106, %100
  br label %108

108:                                              ; preds = %107, %90
  br label %180

109:                                              ; preds = %62
  %110 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %111 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %114 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %126, label %117

117:                                              ; preds = %109
  %118 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %119 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %122 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @strcmp(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %117, %109
  %127 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %128 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  br label %180

129:                                              ; preds = %117
  %130 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %131 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %165

137:                                              ; preds = %129
  %138 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %139 = call i32 @ce_uptodate(%struct.cache_entry* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %137
  %142 = load %struct.index_state*, %struct.index_state** %2, align 8
  %143 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %144 = call i64 @is_racy_timestamp(%struct.index_state* %142, %struct.cache_entry* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %148 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %149 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %164

152:                                              ; preds = %141, %137
  %153 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %154 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %155 = call i64 @compare_ce_content(%struct.cache_entry* %153, %struct.cache_entry* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %159 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %160 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %152
  br label %164

164:                                              ; preds = %163, %146
  br label %165

165:                                              ; preds = %164, %136
  %166 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %167 = call i32 @discard_cache_entry(%struct.cache_entry* %166)
  %168 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %169 = load %struct.split_index*, %struct.split_index** %3, align 8
  %170 = getelementptr inbounds %struct.split_index, %struct.split_index* %169, i32 0, i32 2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load %struct.cache_entry**, %struct.cache_entry*** %172, align 8
  %174 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %175 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %173, i64 %178
  store %struct.cache_entry* %168, %struct.cache_entry** %179, align 8
  br label %180

180:                                              ; preds = %165, %126, %108, %41
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %23

183:                                              ; preds = %23
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %260, %183
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.split_index*, %struct.split_index** %3, align 8
  %187 = getelementptr inbounds %struct.split_index, %struct.split_index* %186, i32 0, i32 2
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %185, %190
  br i1 %191, label %192, label %263

192:                                              ; preds = %184
  %193 = load %struct.split_index*, %struct.split_index** %3, align 8
  %194 = getelementptr inbounds %struct.split_index, %struct.split_index* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load %struct.cache_entry**, %struct.cache_entry*** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %197, i64 %199
  %201 = load %struct.cache_entry*, %struct.cache_entry** %200, align 8
  store %struct.cache_entry* %201, %struct.cache_entry** %5, align 8
  %202 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %203 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @CE_REMOVE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %192
  %209 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %210 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CE_MATCHED, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %208, %192
  %216 = load %struct.split_index*, %struct.split_index** %3, align 8
  %217 = getelementptr inbounds %struct.split_index, %struct.split_index* %216, i32 0, i32 4
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @ewah_set(i8* %218, i32 %219)
  br label %251

221:                                              ; preds = %208
  %222 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %223 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %250

228:                                              ; preds = %221
  %229 = load %struct.split_index*, %struct.split_index** %3, align 8
  %230 = getelementptr inbounds %struct.split_index, %struct.split_index* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @ewah_set(i8* %231, i32 %232)
  %234 = load i32, i32* @CE_STRIP_NAME, align 4
  %235 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %236 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @ALLOC_GROW(%struct.cache_entry** %239, i32 %241, i32 %242)
  %244 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %245 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %245, i64 %248
  store %struct.cache_entry* %244, %struct.cache_entry** %249, align 8
  br label %250

250:                                              ; preds = %228, %221
  br label %251

251:                                              ; preds = %250, %215
  %252 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %253 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %252, i32 0, i32 3
  %254 = call i64 @is_null_oid(i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load %struct.index_state*, %struct.index_state** %2, align 8
  %258 = getelementptr inbounds %struct.index_state, %struct.index_state* %257, i32 0, i32 1
  store i32 1, i32* %258, align 4
  br label %259

259:                                              ; preds = %256, %251
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %184

263:                                              ; preds = %184
  br label %264

264:                                              ; preds = %263, %1
  store i32 0, i32* %6, align 4
  br label %265

265:                                              ; preds = %323, %264
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.index_state*, %struct.index_state** %2, align 8
  %268 = getelementptr inbounds %struct.index_state, %struct.index_state* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %326

271:                                              ; preds = %265
  %272 = load %struct.index_state*, %struct.index_state** %2, align 8
  %273 = getelementptr inbounds %struct.index_state, %struct.index_state* %272, i32 0, i32 2
  %274 = load %struct.cache_entry**, %struct.cache_entry*** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %274, i64 %276
  %278 = load %struct.cache_entry*, %struct.cache_entry** %277, align 8
  store %struct.cache_entry* %278, %struct.cache_entry** %5, align 8
  %279 = load %struct.split_index*, %struct.split_index** %3, align 8
  %280 = getelementptr inbounds %struct.split_index, %struct.split_index* %279, i32 0, i32 2
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = icmp ne %struct.TYPE_2__* %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %271
  %284 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %285 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %316, label %288

288:                                              ; preds = %283, %271
  %289 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %290 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @CE_REMOVE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %316, label %295

295:                                              ; preds = %288
  %296 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %297 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @CE_STRIP_NAME, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  %305 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %306 = load i32, i32* %7, align 4
  %307 = add nsw i32 %306, 1
  %308 = load i32, i32* %8, align 4
  %309 = call i32 @ALLOC_GROW(%struct.cache_entry** %305, i32 %307, i32 %308)
  %310 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %311 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %311, i64 %314
  store %struct.cache_entry* %310, %struct.cache_entry** %315, align 8
  br label %316

316:                                              ; preds = %295, %288, %283
  %317 = load i32, i32* @CE_MATCHED, align 4
  %318 = xor i32 %317, -1
  %319 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %320 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %316
  %324 = load i32, i32* %6, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %6, align 4
  br label %265

326:                                              ; preds = %265
  %327 = load %struct.index_state*, %struct.index_state** %2, align 8
  %328 = getelementptr inbounds %struct.index_state, %struct.index_state* %327, i32 0, i32 2
  %329 = load %struct.cache_entry**, %struct.cache_entry*** %328, align 8
  %330 = load %struct.split_index*, %struct.split_index** %3, align 8
  %331 = getelementptr inbounds %struct.split_index, %struct.split_index* %330, i32 0, i32 1
  store %struct.cache_entry** %329, %struct.cache_entry*** %331, align 8
  %332 = load %struct.index_state*, %struct.index_state** %2, align 8
  %333 = getelementptr inbounds %struct.index_state, %struct.index_state* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.split_index*, %struct.split_index** %3, align 8
  %336 = getelementptr inbounds %struct.split_index, %struct.split_index* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %338 = load %struct.index_state*, %struct.index_state** %2, align 8
  %339 = getelementptr inbounds %struct.index_state, %struct.index_state* %338, i32 0, i32 2
  store %struct.cache_entry** %337, %struct.cache_entry*** %339, align 8
  %340 = load i32, i32* %7, align 4
  %341 = load %struct.index_state*, %struct.index_state** %2, align 8
  %342 = getelementptr inbounds %struct.index_state, %struct.index_state* %341, i32 0, i32 0
  store i32 %340, i32* %342, align 8
  ret void
}

declare dso_local %struct.split_index* @init_split_index(%struct.index_state*) #1

declare dso_local i8* @ewah_new(...) #1

declare dso_local i32 @BUG(i8*, i32, i32) #1

declare dso_local i32 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i64 @is_racy_timestamp(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @compare_ce_content(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i32 @ewah_set(i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.cache_entry**, i32, i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
