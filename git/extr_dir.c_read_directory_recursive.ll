; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_read_directory_recursive.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_read_directory_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.dir_struct = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.untracked_cache_dir = type { i32 }
%struct.pathspec = type { i32 }
%struct.cached_dir = type { i64, i32 }

@path_none = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@path_recurse = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@DIR_SHOW_IGNORED_TOO = common dso_local global i32 0, align 4
@DO_MATCH_LEADING_PATHSPEC = common dso_local global i32 0, align 4
@MATCHED_RECURSIVELY_LEADING_PATHSPEC = common dso_local global i64 0, align 8
@DIR_SHOW_IGNORED = common dso_local global i32 0, align 4
@DIR_COLLECT_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.index_state*, i8*, i32, %struct.untracked_cache_dir*, i32, i32, %struct.pathspec*)* @read_directory_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_directory_recursive(%struct.dir_struct* %0, %struct.index_state* %1, i8* %2, i32 %3, %struct.untracked_cache_dir* %4, i32 %5, i32 %6, %struct.pathspec* %7) #0 {
  %9 = alloca %struct.dir_struct*, align 8
  %10 = alloca %struct.index_state*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.untracked_cache_dir*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pathspec*, align 8
  %17 = alloca %struct.cached_dir, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.strbuf, align 8
  %22 = alloca %struct.untracked_cache_dir*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %9, align 8
  store %struct.index_state* %1, %struct.index_state** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.untracked_cache_dir* %4, %struct.untracked_cache_dir** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.pathspec* %7, %struct.pathspec** %16, align 8
  %23 = load i32, i32* @path_none, align 4
  store i32 %23, i32* %20, align 4
  %24 = bitcast %struct.strbuf* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @strbuf_add(%struct.strbuf* %21, i8* %25, i32 %26)
  %28 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %29 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %30 = load %struct.index_state*, %struct.index_state** %10, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @open_cached_dir(%struct.cached_dir* %17, %struct.dir_struct* %28, %struct.untracked_cache_dir* %29, %struct.index_state* %30, %struct.strbuf* %21, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %8
  br label %258

35:                                               ; preds = %8
  %36 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %37 = icmp ne %struct.untracked_cache_dir* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %45 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %35
  br label %47

47:                                               ; preds = %255, %176, %46
  %48 = call i32 @read_cached_dir(%struct.cached_dir* %17)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %256

51:                                               ; preds = %47
  %52 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %53 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %54 = load %struct.index_state*, %struct.index_state** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %57 = call i32 @treat_path(%struct.dir_struct* %52, %struct.untracked_cache_dir* %53, %struct.cached_dir* %17, %struct.index_state* %54, %struct.strbuf* %21, i32 %55, %struct.pathspec* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %61, %51
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @path_recurse, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %149

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %17, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.index_state*, %struct.index_state** %10, align 8
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @get_dtype(i32 %72, %struct.index_state* %73, i8* %75, i32 %77)
  %79 = load i64, i64* @DT_DIR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %149

81:                                               ; preds = %70
  %82 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %83 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DIR_SHOW_IGNORED_TOO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %81
  %89 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %90 = icmp ne %struct.pathspec* %89, null
  br i1 %90, label %91, label %149

91:                                               ; preds = %88
  %92 = load %struct.index_state*, %struct.index_state** %10, align 8
  %93 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DO_MATCH_LEADING_PATHSPEC, align 4
  %100 = call i64 @do_match_pathspec(%struct.index_state* %92, %struct.pathspec* %93, i8* %95, i32 %97, i32 %98, i32* null, i32 %99)
  %101 = load i64, i64* @MATCHED_RECURSIVELY_LEADING_PATHSPEC, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %149

103:                                              ; preds = %91, %81, %63
  %104 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %105 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %108 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call %struct.untracked_cache_dir* @lookup_untracked(i32 %106, %struct.untracked_cache_dir* %107, i8* %112, i32 %116)
  store %struct.untracked_cache_dir* %117, %struct.untracked_cache_dir** %22, align 8
  %118 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %119 = load %struct.index_state*, %struct.index_state** %10, align 8
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %22, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %128 = call i32 @read_directory_recursive(%struct.dir_struct* %118, %struct.index_state* %119, i8* %121, i32 %123, %struct.untracked_cache_dir* %124, i32 %125, i32 %126, %struct.pathspec* %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %20, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %103
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %20, align 4
  br label %134

134:                                              ; preds = %132, %103
  %135 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %136 = icmp ne %struct.pathspec* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load %struct.index_state*, %struct.index_state** %10, align 8
  %139 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @match_pathspec(%struct.index_state* %138, %struct.pathspec* %139, i8* %141, i32 %143, i32 0, i32* null, i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = load i32, i32* @path_none, align 4
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %146, %137, %134
  br label %149

149:                                              ; preds = %148, %91, %88, %70, %67
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32, i32* %20, align 4
  %157 = icmp uge i32 %156, 129
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 129, i32* %20, align 4
  br label %256

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %159, %152
  %161 = load i32, i32* %20, align 4
  %162 = icmp eq i32 %161, 128
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %17, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %169 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = call i32 @add_untracked(%struct.untracked_cache_dir* %168, i8* %173)
  br label %175

175:                                              ; preds = %167, %163
  br label %256

176:                                              ; preds = %160
  br label %47

177:                                              ; preds = %149
  %178 = load i32, i32* %18, align 4
  switch i32 %178, label %254 [
    i32 129, label %179
    i32 128, label %226
  ]

179:                                              ; preds = %177
  %180 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %181 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %188 = load %struct.index_state*, %struct.index_state** %10, align 8
  %189 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dir_add_name(%struct.dir_struct* %187, %struct.index_state* %188, i8* %190, i32 %192)
  br label %225

194:                                              ; preds = %179
  %195 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %196 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @DIR_SHOW_IGNORED_TOO, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %194
  %202 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %203 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @DIR_COLLECT_IGNORED, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.pathspec*, %struct.pathspec** %16, align 8
  %214 = call i32 @exclude_matches_pathspec(i8* %210, i32 %212, %struct.pathspec* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %208, %194
  %217 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %218 = load %struct.index_state*, %struct.index_state** %10, align 8
  %219 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @dir_add_ignored(%struct.dir_struct* %217, %struct.index_state* %218, i8* %220, i32 %222)
  br label %224

224:                                              ; preds = %216, %208, %201
  br label %225

225:                                              ; preds = %224, %186
  br label %255

226:                                              ; preds = %177
  %227 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %228 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  br label %255

234:                                              ; preds = %226
  %235 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %236 = load %struct.index_state*, %struct.index_state** %10, align 8
  %237 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @dir_add_name(%struct.dir_struct* %235, %struct.index_state* %236, i8* %238, i32 %240)
  %242 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %17, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %234
  %246 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %13, align 8
  %247 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = call i32 @add_untracked(%struct.untracked_cache_dir* %246, i8* %251)
  br label %253

253:                                              ; preds = %245, %234
  br label %255

254:                                              ; preds = %177
  br label %255

255:                                              ; preds = %254, %253, %233, %225
  br label %47

256:                                              ; preds = %175, %158, %47
  %257 = call i32 @close_cached_dir(%struct.cached_dir* %17)
  br label %258

258:                                              ; preds = %256, %34
  %259 = call i32 @strbuf_release(%struct.strbuf* %21)
  %260 = load i32, i32* %20, align 4
  ret i32 %260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @open_cached_dir(%struct.cached_dir*, %struct.dir_struct*, %struct.untracked_cache_dir*, %struct.index_state*, %struct.strbuf*, i32) #2

declare dso_local i32 @read_cached_dir(%struct.cached_dir*) #2

declare dso_local i32 @treat_path(%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.cached_dir*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*) #2

declare dso_local i64 @get_dtype(i32, %struct.index_state*, i8*, i32) #2

declare dso_local i64 @do_match_pathspec(%struct.index_state*, %struct.pathspec*, i8*, i32, i32, i32*, i32) #2

declare dso_local %struct.untracked_cache_dir* @lookup_untracked(i32, %struct.untracked_cache_dir*, i8*, i32) #2

declare dso_local i32 @match_pathspec(%struct.index_state*, %struct.pathspec*, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @add_untracked(%struct.untracked_cache_dir*, i8*) #2

declare dso_local i32 @dir_add_name(%struct.dir_struct*, %struct.index_state*, i8*, i32) #2

declare dso_local i32 @exclude_matches_pathspec(i8*, i32, %struct.pathspec*) #2

declare dso_local i32 @dir_add_ignored(%struct.dir_struct*, %struct.index_state*, i8*, i32) #2

declare dso_local i32 @close_cached_dir(%struct.cached_dir*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
