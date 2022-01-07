; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_content_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_content_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_file_info = type { i32, %struct.diff_filespec }
%struct.diff_filespec = type { i32, i64 }
%struct.merge_options = type { %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.cache_entry** }
%struct.cache_entry = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__ }
%struct.rename_conflict_info = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"add/add\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Skipped %s (merged same as existing)\00", align 1
@CE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"CONFLICT (%s): Merge conflict in %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Refusing to lose dirty file at %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Adding as %s instead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_file_info*, %struct.merge_options*, i8*, i32, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.rename_conflict_info*)* @handle_content_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_content_merge(%struct.merge_file_info* %0, %struct.merge_options* %1, i8* %2, i32 %3, %struct.diff_filespec* %4, %struct.diff_filespec* %5, %struct.diff_filespec* %6, %struct.rename_conflict_info* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.merge_file_info*, align 8
  %11 = alloca %struct.merge_options*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.diff_filespec*, align 8
  %15 = alloca %struct.diff_filespec*, align 8
  %16 = alloca %struct.diff_filespec*, align 8
  %17 = alloca %struct.rename_conflict_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cache_entry*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.merge_file_info* %0, %struct.merge_file_info** %10, align 8
  store %struct.merge_options* %1, %struct.merge_options** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.diff_filespec* %4, %struct.diff_filespec** %14, align 8
  store %struct.diff_filespec* %5, %struct.diff_filespec** %15, align 8
  store %struct.diff_filespec* %6, %struct.diff_filespec** %16, align 8
  store %struct.rename_conflict_info* %7, %struct.rename_conflict_info** %17, align 8
  %24 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %25 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %26 = call i32 @is_valid(%struct.diff_filespec* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %8
  %29 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %18, align 8
  br label %30

30:                                               ; preds = %28, %8
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %37 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %42 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35, %30
  %46 = phi i1 [ false, %35 ], [ false, %30 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %17, align 8
  %50 = icmp ne %struct.rename_conflict_info* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %53 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %59 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %17, align 8
  %67 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISGITLINK(i32 %74)
  %76 = call i64 @dir_in_way(%struct.TYPE_14__* %56, i8* %57, i32 %65, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %51
  store i32 1, i32* %19, align 4
  br label %79

79:                                               ; preds = %78, %51, %45
  %80 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %81 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %82 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %83 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %86 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %89 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %92 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 2
  %97 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %98 = call i64 @merge_mode_and_contents(%struct.merge_options* %80, %struct.diff_filespec* %81, %struct.diff_filespec* %82, %struct.diff_filespec* %83, i8* %84, i32 %87, i32 %90, i32 %96, %struct.merge_file_info* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %79
  store i32 -1, i32* %9, align 4
  br label %350

101:                                              ; preds = %79
  %102 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %103 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %193

106:                                              ; preds = %101
  %107 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %110 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %109, i32 0, i32 1
  %111 = call i64 @was_tracked_and_matches(%struct.merge_options* %107, i8* %108, %struct.diff_filespec* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %193

113:                                              ; preds = %106
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %193, label %116

116:                                              ; preds = %113
  %117 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %118 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %117, i32 3, i8* %118, i8* %119)
  %121 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %122 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %123 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %122, i32 0, i32 1
  %124 = load i8*, i8** %12, align 8
  %125 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %126 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %131, %116
  %136 = phi i1 [ false, %116 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @add_cacheinfo(%struct.merge_options* %121, %struct.diff_filespec* %123, i8* %124, i32 0, i32 %137, i32 0)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 -1, i32* %9, align 4
  br label %350

141:                                              ; preds = %135
  %142 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %143 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i8*, i8** %12, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = call i32 @index_name_pos(%struct.TYPE_14__* %145, i8* %146, i32 %148)
  store i32 %149, i32* %20, align 4
  %150 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %151 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %150, i32 0, i32 1
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.cache_entry**, %struct.cache_entry*** %154, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %155, i64 %157
  %159 = load %struct.cache_entry*, %struct.cache_entry** %158, align 8
  store %struct.cache_entry* %159, %struct.cache_entry** %21, align 8
  %160 = load %struct.cache_entry*, %struct.cache_entry** %21, align 8
  %161 = call i64 @ce_skip_worktree(%struct.cache_entry* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %141
  %164 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %165 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = call i32 @index_name_pos(%struct.TYPE_14__* %168, i8* %169, i32 %171)
  store i32 %172, i32* %20, align 4
  %173 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %174 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load %struct.cache_entry**, %struct.cache_entry*** %178, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %179, i64 %181
  %183 = load %struct.cache_entry*, %struct.cache_entry** %182, align 8
  store %struct.cache_entry* %183, %struct.cache_entry** %21, align 8
  %184 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %185 = load %struct.cache_entry*, %struct.cache_entry** %21, align 8
  %186 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %163, %141
  %190 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %191 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %9, align 4
  br label %350

193:                                              ; preds = %113, %106, %101
  %194 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %195 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %229, label %198

198:                                              ; preds = %193
  %199 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %200 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @S_ISGITLINK(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %206, i8** %18, align 8
  br label %207

207:                                              ; preds = %205, %198
  %208 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %209 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %210 = load i8*, i8** %18, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %208, i32 1, i8* %209, i8* %210, i8* %211)
  %213 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %17, align 8
  %214 = icmp ne %struct.rename_conflict_info* %213, null
  br i1 %214, label %215, label %228

215:                                              ; preds = %207
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %215
  %219 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %222 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %223 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %224 = call i64 @update_stages(%struct.merge_options* %219, i8* %220, %struct.diff_filespec* %221, %struct.diff_filespec* %222, %struct.diff_filespec* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  store i32 -1, i32* %9, align 4
  br label %350

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %215, %207
  br label %229

229:                                              ; preds = %228, %193
  %230 = load i32, i32* %19, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %327

235:                                              ; preds = %232, %229
  %236 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %237 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %236, i32 0, i32 1
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %235
  %243 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %244 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 @remove_file_from_index(%struct.TYPE_14__* %247, i8* %248)
  br label %292

250:                                              ; preds = %235
  %251 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %252 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %250
  %256 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %259 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %260 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %261 = call i64 @update_stages(%struct.merge_options* %256, i8* %257, %struct.diff_filespec* %258, %struct.diff_filespec* %259, %struct.diff_filespec* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %255
  store i32 -1, i32* %9, align 4
  br label %350

264:                                              ; preds = %255
  br label %291

265:                                              ; preds = %250
  %266 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @was_tracked(%struct.merge_options* %266, i8* %267)
  store i32 %268, i32* %23, align 4
  %269 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = load i32, i32* %23, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %265
  %274 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %275 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %274, i32 0, i32 1
  br label %277

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276, %273
  %278 = phi %struct.diff_filespec* [ %275, %273 ], [ null, %276 ]
  %279 = load i32, i32* %23, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  br label %285

282:                                              ; preds = %277
  %283 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %284 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %283, i32 0, i32 1
  br label %285

285:                                              ; preds = %282, %281
  %286 = phi %struct.diff_filespec* [ null, %281 ], [ %284, %282 ]
  %287 = call i64 @update_stages(%struct.merge_options* %269, i8* %270, %struct.diff_filespec* null, %struct.diff_filespec* %278, %struct.diff_filespec* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i32 -1, i32* %9, align 4
  br label %350

290:                                              ; preds = %285
  br label %291

291:                                              ; preds = %290, %264
  br label %292

292:                                              ; preds = %291, %242
  %293 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %294 = load i8*, i8** %12, align 8
  %295 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %17, align 8
  %296 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %295, i32 0, i32 0
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i8* @unique_path(%struct.merge_options* %293, i8* %294, i32 %299)
  store i8* %300, i8** %22, align 8
  %301 = load i32, i32* %13, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %292
  %304 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %305 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %306 = load i8*, i8** %12, align 8
  %307 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %304, i32 1, i8* %305, i8* %306)
  br label %308

308:                                              ; preds = %303, %292
  %309 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %310 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %311 = load i8*, i8** %22, align 8
  %312 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %309, i32 1, i8* %310, i8* %311)
  %313 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %314 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %315 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %314, i32 0, i32 1
  %316 = load i8*, i8** %22, align 8
  %317 = call i64 @update_file(%struct.merge_options* %313, i32 0, %struct.diff_filespec* %315, i8* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %308
  %320 = load i8*, i8** %22, align 8
  %321 = call i32 @free(i8* %320)
  store i32 -1, i32* %9, align 4
  br label %350

322:                                              ; preds = %308
  %323 = load i8*, i8** %22, align 8
  %324 = call i32 @free(i8* %323)
  %325 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %326 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  br label %339

327:                                              ; preds = %232
  %328 = load %struct.merge_options*, %struct.merge_options** %11, align 8
  %329 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %330 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %333 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %332, i32 0, i32 1
  %334 = load i8*, i8** %12, align 8
  %335 = call i64 @update_file(%struct.merge_options* %328, i32 %331, %struct.diff_filespec* %333, i8* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %327
  store i32 -1, i32* %9, align 4
  br label %350

338:                                              ; preds = %327
  br label %339

339:                                              ; preds = %338, %322
  %340 = load i32, i32* %13, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %339
  %343 = load %struct.merge_file_info*, %struct.merge_file_info** %10, align 8
  %344 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 0
  br label %347

347:                                              ; preds = %342, %339
  %348 = phi i1 [ false, %339 ], [ %346, %342 ]
  %349 = zext i1 %348 to i32
  store i32 %349, i32* %9, align 4
  br label %350

350:                                              ; preds = %347, %337, %319, %289, %263, %226, %189, %140, %100
  %351 = load i32, i32* %9, align 4
  ret i32 %351
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @is_valid(%struct.diff_filespec*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dir_in_way(%struct.TYPE_14__*, i8*, i32, i64) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @merge_mode_and_contents(%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i32, i32, i32, %struct.merge_file_info*) #1

declare dso_local i64 @was_tracked_and_matches(%struct.merge_options*, i8*, %struct.diff_filespec*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i8*, i8*, ...) #1

declare dso_local i64 @add_cacheinfo(%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32, i32) #1

declare dso_local i32 @index_name_pos(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @update_stages(%struct.merge_options*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i32 @remove_file_from_index(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @was_tracked(%struct.merge_options*, i8*) #1

declare dso_local i8* @unique_path(%struct.merge_options*, i8*, i32) #1

declare dso_local i64 @update_file(%struct.merge_options*, i32, %struct.diff_filespec*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
