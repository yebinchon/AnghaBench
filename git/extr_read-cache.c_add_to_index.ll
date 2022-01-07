; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_add_to_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_add_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i32, i64, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.object_id = type { i32 }

@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_MATCH_RACY_IS_DIRTY = common dso_local global i32 0, align 4
@ADD_CACHE_VERBOSE = common dso_local global i32 0, align 4
@ADD_CACHE_PRETEND = common dso_local global i32 0, align 4
@ADD_CACHE_INTENT = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@ADD_CACHE_NEW_ONLY = common dso_local global i32 0, align 4
@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@ADD_CACHE_RENORMALIZE = common dso_local global i32 0, align 4
@HASH_RENORMALIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s: can only add regular files, symbolic links or git-directories\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"'%s' does not have a commit checked out\00", align 1
@CE_INTENT_TO_ADD = common dso_local global i32 0, align 4
@trust_executable_bit = common dso_local global i64 0, align 8
@has_symlinks = common dso_local global i64 0, align 8
@ignore_case = common dso_local global i64 0, align 8
@CE_ADDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to index file '%s'\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to add '%s' to index\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"add '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_index(%struct.index_state* %0, i8* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cache_entry*, align 8
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.object_id, align 4
  %22 = alloca %struct.cache_entry*, align 8
  %23 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.stat*, %struct.stat** %8, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  store %struct.cache_entry* null, %struct.cache_entry** %14, align 8
  %27 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %28 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CE_MATCH_RACY_IS_DIRTY, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ADD_CACHE_VERBOSE, align 4
  %34 = load i32, i32* @ADD_CACHE_PRETEND, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ADD_CACHE_PRETEND, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ADD_CACHE_INTENT, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %44 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i32, i32* @ADD_CACHE_NEW_ONLY, align 4
  br label %51

50:                                               ; preds = %4
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %45, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ADD_CACHE_RENORMALIZE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @HASH_RENORMALIZE, align 4
  %61 = load i32, i32* %20, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @S_ISREG(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @S_ISLNK(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @S_ISDIR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @error(i32 %76, i8* %77)
  store i32 %78, i32* %5, align 4
  br label %322

79:                                               ; preds = %71, %67, %63
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @strlen(i8* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @S_ISDIR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @resolve_gitlink_ref(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %21)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @error(i32 %90, i8* %91)
  store i32 %92, i32* %5, align 4
  br label %322

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 47
  br label %106

106:                                              ; preds = %97, %94
  %107 = phi i1 [ false, %94 ], [ %105, %97 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %10, align 4
  br label %94

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %79
  %113 = load %struct.index_state*, %struct.index_state** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %113, i32 %114)
  store %struct.cache_entry* %115, %struct.cache_entry** %13, align 8
  %116 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %117 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @memcpy(i32 %118, i8* %119, i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %124 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %112
  %128 = load %struct.index_state*, %struct.index_state** %6, align 8
  %129 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %130 = load %struct.stat*, %struct.stat** %8, align 8
  %131 = call i32 @fill_stat_cache_info(%struct.index_state* %128, %struct.cache_entry* %129, %struct.stat* %130)
  br label %138

132:                                              ; preds = %112
  %133 = load i32, i32* @CE_INTENT_TO_ADD, align 4
  %134 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %135 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i64, i64* @trust_executable_bit, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i64, i64* @has_symlinks, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4
  %146 = call i64 @create_ce_mode(i32 %145)
  %147 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %148 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %172

149:                                              ; preds = %141, %138
  %150 = load %struct.index_state*, %struct.index_state** %6, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @index_name_pos_also_unmerged(%struct.index_state* %150, i8* %151, i32 %152)
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %23, align 4
  %155 = icmp sle i32 0, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.index_state*, %struct.index_state** %6, align 8
  %158 = getelementptr inbounds %struct.index_state, %struct.index_state* %157, i32 0, i32 0
  %159 = load %struct.cache_entry**, %struct.cache_entry*** %158, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %159, i64 %161
  %163 = load %struct.cache_entry*, %struct.cache_entry** %162, align 8
  br label %165

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %156
  %166 = phi %struct.cache_entry* [ %163, %156 ], [ null, %164 ]
  store %struct.cache_entry* %166, %struct.cache_entry** %22, align 8
  %167 = load %struct.cache_entry*, %struct.cache_entry** %22, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i64 @ce_mode_from_stat(%struct.cache_entry* %167, i32 %168)
  %170 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %171 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %165, %144
  %173 = load i64, i64* @ignore_case, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.index_state*, %struct.index_state** %6, align 8
  %177 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %178 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @adjust_dirname_case(%struct.index_state* %176, i32 %179)
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @ADD_CACHE_RENORMALIZE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %226, label %186

186:                                              ; preds = %181
  %187 = load %struct.index_state*, %struct.index_state** %6, align 8
  %188 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %189 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %192 = call i32 @ce_namelen(%struct.cache_entry* %191)
  %193 = load i64, i64* @ignore_case, align 8
  %194 = call %struct.cache_entry* @index_file_exists(%struct.index_state* %187, i32 %190, i32 %192, i64 %193)
  store %struct.cache_entry* %194, %struct.cache_entry** %14, align 8
  %195 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %196 = icmp ne %struct.cache_entry* %195, null
  br i1 %196, label %197, label %225

197:                                              ; preds = %186
  %198 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %199 = call i32 @ce_stage(%struct.cache_entry* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %225, label %201

201:                                              ; preds = %197
  %202 = load %struct.index_state*, %struct.index_state** %6, align 8
  %203 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %204 = load %struct.stat*, %struct.stat** %8, align 8
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @ie_match_stat(%struct.index_state* %202, %struct.cache_entry* %203, %struct.stat* %204, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %225, label %208

208:                                              ; preds = %201
  %209 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %210 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @S_ISGITLINK(i64 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %208
  %215 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %216 = call i32 @ce_mark_uptodate(%struct.cache_entry* %215)
  br label %217

217:                                              ; preds = %214, %208
  %218 = load i32, i32* @CE_ADDED, align 4
  %219 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %220 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %224 = call i32 @discard_cache_entry(%struct.cache_entry* %223)
  store i32 0, i32* %5, align 4
  br label %322

225:                                              ; preds = %201, %197, %186
  br label %226

226:                                              ; preds = %225, %181
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %245, label %229

229:                                              ; preds = %226
  %230 = load %struct.index_state*, %struct.index_state** %6, align 8
  %231 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %232 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %231, i32 0, i32 2
  %233 = load i8*, i8** %7, align 8
  %234 = load %struct.stat*, %struct.stat** %8, align 8
  %235 = load i32, i32* %20, align 4
  %236 = call i64 @index_path(%struct.index_state* %230, i32* %232, i8* %233, %struct.stat* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %229
  %239 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %240 = call i32 @discard_cache_entry(%struct.cache_entry* %239)
  %241 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %242 = load i8*, i8** %7, align 8
  %243 = call i32 @error(i32 %241, i8* %242)
  store i32 %243, i32* %5, align 4
  br label %322

244:                                              ; preds = %229
  br label %248

245:                                              ; preds = %226
  %246 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %247 = call i32 @set_object_name_for_intent_to_add_entry(%struct.cache_entry* %246)
  br label %248

248:                                              ; preds = %245, %244
  %249 = load i64, i64* @ignore_case, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %248
  %252 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %253 = icmp ne %struct.cache_entry* %252, null
  br i1 %253, label %254, label %264

254:                                              ; preds = %251
  %255 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %256 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %257 = call i64 @different_name(%struct.cache_entry* %255, %struct.cache_entry* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.index_state*, %struct.index_state** %6, align 8
  %261 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %262 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %263 = call %struct.cache_entry* @create_alias_ce(%struct.index_state* %260, %struct.cache_entry* %261, %struct.cache_entry* %262)
  store %struct.cache_entry* %263, %struct.cache_entry** %13, align 8
  br label %264

264:                                              ; preds = %259, %254, %251, %248
  %265 = load i32, i32* @CE_ADDED, align 4
  %266 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %267 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  %270 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %271 = icmp ne %struct.cache_entry* %270, null
  br i1 %271, label %272, label %291

272:                                              ; preds = %264
  %273 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %274 = call i32 @ce_stage(%struct.cache_entry* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %291, label %276

276:                                              ; preds = %272
  %277 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %278 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %277, i32 0, i32 2
  %279 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %280 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %279, i32 0, i32 2
  %281 = call i64 @oideq(i32* %278, i32* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %276
  %284 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %285 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %288 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %286, %289
  br label %291

291:                                              ; preds = %283, %276, %272, %264
  %292 = phi i1 [ false, %276 ], [ false, %272 ], [ false, %264 ], [ %290, %283 ]
  %293 = zext i1 %292 to i32
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %17, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %298 = call i32 @discard_cache_entry(%struct.cache_entry* %297)
  br label %312

299:                                              ; preds = %291
  %300 = load %struct.index_state*, %struct.index_state** %6, align 8
  %301 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %302 = load i32, i32* %19, align 4
  %303 = call i64 @add_index_entry(%struct.index_state* %300, %struct.cache_entry* %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %299
  %306 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %307 = call i32 @discard_cache_entry(%struct.cache_entry* %306)
  %308 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %309 = load i8*, i8** %7, align 8
  %310 = call i32 @error(i32 %308, i8* %309)
  store i32 %310, i32* %5, align 4
  br label %322

311:                                              ; preds = %299
  br label %312

312:                                              ; preds = %311, %296
  %313 = load i32, i32* %16, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load i32, i32* %11, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = load i8*, i8** %7, align 8
  %320 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %318, %315, %312
  store i32 0, i32* %5, align 4
  br label %322

322:                                              ; preds = %321, %305, %238, %217, %89, %75
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @resolve_gitlink_ref(i8*, i8*, %struct.object_id*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fill_stat_cache_info(%struct.index_state*, %struct.cache_entry*, %struct.stat*) #1

declare dso_local i64 @create_ce_mode(i32) #1

declare dso_local i32 @index_name_pos_also_unmerged(%struct.index_state*, i8*, i32) #1

declare dso_local i64 @ce_mode_from_stat(%struct.cache_entry*, i32) #1

declare dso_local i32 @adjust_dirname_case(%struct.index_state*, i32) #1

declare dso_local %struct.cache_entry* @index_file_exists(%struct.index_state*, i32, i32, i64) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ie_match_stat(%struct.index_state*, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local i32 @S_ISGITLINK(i64) #1

declare dso_local i32 @ce_mark_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i64 @index_path(%struct.index_state*, i32*, i8*, %struct.stat*, i32) #1

declare dso_local i32 @set_object_name_for_intent_to_add_entry(%struct.cache_entry*) #1

declare dso_local i64 @different_name(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local %struct.cache_entry* @create_alias_ce(%struct.index_state*, %struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
