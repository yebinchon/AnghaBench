; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_do_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_do_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.name_entry = type { i8*, i32 }
%struct.strbuf = type { i32, i8* }
%struct.pathspec = type { i32, i32, i32, i64, i64, %struct.pathspec_item*, i64 }
%struct.pathspec_item = type { i8*, i32, i32, i32, i64 }

@entry_not_interesting = common dso_local global i32 0, align 4
@all_entries_not_interesting = common dso_local global i32 0, align 4
@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_MAXDEPTH = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@PATHSPEC_ATTR = common dso_local global i32 0, align 4
@all_entries_interesting = common dso_local global i32 0, align 4
@entry_interesting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.name_entry*, %struct.strbuf*, i32, %struct.pathspec*, i32)* @do_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_match(%struct.index_state* %0, %struct.name_entry* %1, %struct.strbuf* %2, i32 %3, %struct.pathspec* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.name_entry*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pathspec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pathspec_item*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store %struct.name_entry* %1, %struct.name_entry** %9, align 8
  store %struct.strbuf* %2, %struct.strbuf** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.pathspec* %4, %struct.pathspec** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %30 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @entry_not_interesting, align 4
  br label %37

35:                                               ; preds = %6
  %36 = load i32, i32* @all_entries_not_interesting, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %17, align 4
  %39 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %40 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %41 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PATHSPEC_GLOB, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PATHSPEC_ICASE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PATHSPEC_ATTR, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @GUARD_PATHSPEC(%struct.pathspec* %39, i32 %52)
  %54 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %55 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %104, label %58

58:                                               ; preds = %37
  %59 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %60 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %65 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %72 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %63, %58
  %76 = load i32, i32* @all_entries_interesting, align 4
  store i32 %76, i32* %7, align 4
  br label %457

77:                                               ; preds = %70
  %78 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %86 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %94 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @within_depth(i8* %83, i32 %84, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %77
  %99 = load i32, i32* @entry_interesting, align 4
  br label %102

100:                                              ; preds = %77
  %101 = load i32, i32* @entry_not_interesting, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %7, align 4
  br label %457

104:                                              ; preds = %37
  %105 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %106 = call i32 @tree_entry_len(%struct.name_entry* %105)
  store i32 %106, i32* %15, align 4
  %107 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %108 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %452, %104
  %112 = load i32, i32* %14, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %455

114:                                              ; preds = %111
  %115 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %116 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %115, i32 0, i32 5
  %117 = load %struct.pathspec_item*, %struct.pathspec_item** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %117, i64 %119
  store %struct.pathspec_item* %120, %struct.pathspec_item** %18, align 8
  %121 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %122 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %19, align 8
  %124 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %125 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8* %129, i8** %20, align 8
  %130 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %131 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %114
  %136 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %137 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %135, %114
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %147 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145, %135
  br label %452

153:                                              ; preds = %145, %142
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %21, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %216

157:                                              ; preds = %153
  %158 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %159 = load i8*, i8** %20, align 8
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* %21, align 4
  %162 = call i32 @match_dir_prefix(%struct.pathspec_item* %158, i8* %159, i8* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  br label %309

165:                                              ; preds = %157
  %166 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %167 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %165
  %171 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %172 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %179 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %190

182:                                              ; preds = %177, %170, %165
  %183 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %184 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @all_entries_interesting, align 4
  store i32 %188, i32* %7, align 4
  br label %457

189:                                              ; preds = %182
  br label %406

190:                                              ; preds = %177
  %191 = load i8*, i8** %20, align 8
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %21, align 4
  %198 = sub nsw i32 %196, %197
  %199 = sub nsw i32 %198, 1
  %200 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %201 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @S_ISDIR(i32 %202)
  %204 = icmp ne i64 %203, 0
  %205 = xor i1 %204, true
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %209 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @within_depth(i8* %195, i32 %199, i32 %207, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %190
  br label %406

214:                                              ; preds = %190
  %215 = load i32, i32* @entry_not_interesting, align 4
  store i32 %215, i32* %7, align 4
  br label %457

216:                                              ; preds = %153
  %217 = load i32, i32* %16, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %216
  %220 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %221 = load i8*, i8** %20, align 8
  %222 = load i8*, i8** %19, align 8
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @basecmp(%struct.pathspec_item* %220, i8* %221, i8* %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %308, label %226

226:                                              ; preds = %219, %216
  %227 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %228 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %229 = load i32, i32* %15, align 4
  %230 = load i8*, i8** %19, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* %16, align 4
  %236 = sub nsw i32 %234, %235
  %237 = call i64 @match_entry(%struct.pathspec_item* %227, %struct.name_entry* %228, i32 %229, i8* %233, i32 %236, i32* %17)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  br label %406

240:                                              ; preds = %226
  %241 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %242 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %245 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %307

248:                                              ; preds = %240
  %249 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %250 = load i8*, i8** %19, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %255 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %258 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sub nsw i32 %259, %260
  %262 = call i32 @git_fnmatch(%struct.pathspec_item* %249, i8* %253, i8* %256, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %248
  br label %406

265:                                              ; preds = %248
  %266 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %267 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %272 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call i64 @S_ISDIR(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = load i32, i32* @entry_interesting, align 4
  store i32 %277, i32* %7, align 4
  br label %457

278:                                              ; preds = %270, %265
  %279 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %280 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %306

283:                                              ; preds = %278
  %284 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %285 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i64 @S_ISGITLINK(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %306

289:                                              ; preds = %283
  %290 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %291 = load i8*, i8** %19, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %296 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %299 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sub nsw i32 %300, %301
  %303 = call i32 @ps_strncmp(%struct.pathspec_item* %290, i8* %294, i8* %297, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %289
  br label %406

306:                                              ; preds = %289, %283, %278
  br label %307

307:                                              ; preds = %306, %240
  br label %452

308:                                              ; preds = %219
  br label %309

309:                                              ; preds = %308, %164
  %310 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %311 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %314 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = icmp eq i32 %312, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %452

318:                                              ; preds = %309
  %319 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %320 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %318
  %324 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %325 = load i8*, i8** %20, align 8
  %326 = load i32, i32* %16, align 4
  %327 = call i32 @match_wildcard_base(%struct.pathspec_item* %324, i8* %325, i32 %326, i32* %22)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %323
  br label %452

330:                                              ; preds = %323, %318
  %331 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %332 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %333 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = load i32, i32* %15, align 4
  %336 = call i32 @strbuf_add(%struct.strbuf* %331, i8* %334, i32 %335)
  %337 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %338 = load i8*, i8** %19, align 8
  %339 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %340 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %339, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %346 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @git_fnmatch(%struct.pathspec_item* %337, i8* %338, i8* %344, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %330
  %351 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %16, align 4
  %354 = add nsw i32 %352, %353
  %355 = call i32 @strbuf_setlen(%struct.strbuf* %351, i32 %354)
  br label %406

356:                                              ; preds = %330
  %357 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %358 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %387

361:                                              ; preds = %356
  %362 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %363 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = call i64 @S_ISGITLINK(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %387

367:                                              ; preds = %361
  %368 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %369 = load i8*, i8** %19, align 8
  %370 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %371 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %370, i32 0, i32 1
  %372 = load i8*, i8** %371, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  %376 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %377 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @ps_strncmp(%struct.pathspec_item* %368, i8* %369, i8* %375, i32 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %367
  %382 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %383 = load i32, i32* %11, align 4
  %384 = load i32, i32* %16, align 4
  %385 = add nsw i32 %383, %384
  %386 = call i32 @strbuf_setlen(%struct.strbuf* %382, i32 %385)
  br label %406

387:                                              ; preds = %367, %361, %356
  %388 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %389 = load i32, i32* %11, align 4
  %390 = load i32, i32* %16, align 4
  %391 = add nsw i32 %389, %390
  %392 = call i32 @strbuf_setlen(%struct.strbuf* %388, i32 %391)
  %393 = load %struct.pathspec*, %struct.pathspec** %12, align 8
  %394 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %387
  %398 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %399 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = call i64 @S_ISDIR(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %397
  %404 = load i32, i32* @entry_interesting, align 4
  store i32 %404, i32* %7, align 4
  br label %457

405:                                              ; preds = %397, %387
  br label %452

406:                                              ; preds = %381, %350, %305, %264, %239, %213, %189
  %407 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %408 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %407, i32 0, i32 4
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %450

411:                                              ; preds = %406
  %412 = load i32, i32* @entry_not_interesting, align 4
  store i32 %412, i32* %17, align 4
  %413 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %414 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = call i64 @S_ISDIR(i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %411
  %419 = load i32, i32* @entry_interesting, align 4
  store i32 %419, i32* %7, align 4
  br label %457

420:                                              ; preds = %411
  %421 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %422 = load %struct.name_entry*, %struct.name_entry** %9, align 8
  %423 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %422, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8
  %425 = load i32, i32* %15, align 4
  %426 = call i32 @strbuf_add(%struct.strbuf* %421, i8* %424, i32 %425)
  %427 = load %struct.index_state*, %struct.index_state** %8, align 8
  %428 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %429 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %428, i32 0, i32 1
  %430 = load i8*, i8** %429, align 8
  %431 = load i32, i32* %11, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %435 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* %11, align 4
  %438 = sub nsw i32 %436, %437
  %439 = load %struct.pathspec_item*, %struct.pathspec_item** %18, align 8
  %440 = call i32 @match_pathspec_attrs(%struct.index_state* %427, i8* %433, i32 %438, %struct.pathspec_item* %439)
  store i32 %440, i32* %23, align 4
  %441 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %442 = load i32, i32* %11, align 4
  %443 = load i32, i32* %16, align 4
  %444 = add nsw i32 %442, %443
  %445 = call i32 @strbuf_setlen(%struct.strbuf* %441, i32 %444)
  %446 = load i32, i32* %23, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %420
  br label %452

449:                                              ; preds = %420
  br label %450

450:                                              ; preds = %449, %406
  %451 = load i32, i32* @entry_interesting, align 4
  store i32 %451, i32* %7, align 4
  br label %457

452:                                              ; preds = %448, %405, %329, %317, %307, %152
  %453 = load i32, i32* %14, align 4
  %454 = add nsw i32 %453, -1
  store i32 %454, i32* %14, align 4
  br label %111

455:                                              ; preds = %111
  %456 = load i32, i32* %17, align 4
  store i32 %456, i32* %7, align 4
  br label %457

457:                                              ; preds = %455, %450, %418, %403, %276, %214, %187, %102, %75
  %458 = load i32, i32* %7, align 4
  ret i32 %458
}

declare dso_local i32 @GUARD_PATHSPEC(%struct.pathspec*, i32) #1

declare dso_local i64 @within_depth(i8*, i32, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #1

declare dso_local i32 @match_dir_prefix(%struct.pathspec_item*, i8*, i8*, i32) #1

declare dso_local i32 @basecmp(%struct.pathspec_item*, i8*, i8*, i32) #1

declare dso_local i64 @match_entry(%struct.pathspec_item*, %struct.name_entry*, i32, i8*, i32, i32*) #1

declare dso_local i32 @git_fnmatch(%struct.pathspec_item*, i8*, i8*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @ps_strncmp(%struct.pathspec_item*, i8*, i8*, i32) #1

declare dso_local i32 @match_wildcard_base(%struct.pathspec_item*, i8*, i32, i32*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @match_pathspec_attrs(%struct.index_state*, i8*, i32, %struct.pathspec_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
