; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_maybe_modified.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_maybe_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32 }

@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_ITERATOR_TYPE_WORKDIR = common dso_local global i64 0, align 8
@GIT_DIFFCAPS_HAS_SYMLINKS = common dso_local global i32 0, align 4
@GIT_DIFFCAPS_TRUST_MODE_BITS = common dso_local global i32 0, align 4
@MODE_BITS_MASK = common dso_local global i32 0, align 4
@GIT_DELTA_CONFLICTED = common dso_local global i32 0, align 4
@GIT_INDEX_ENTRY_VALID = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_INDEX_ENTRY_SKIP_WORKTREE = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_DELTA_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_FILEMODE_UNREADABLE = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@GIT_DELTA_UNREADABLE = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@GIT_DIFFCAPS_TRUST_CTIME = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_SUBMODULES = common dso_local global i32 0, align 4
@GIT_DIFF_UPDATE_INDEX = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_CASECHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @maybe_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_modified(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %19 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %8, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %9, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = call i32 @diff_pathspec_match(i8** %14, %struct.TYPE_22__* %40, %struct.TYPE_21__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %404

45:                                               ; preds = %2
  %46 = call i32 @memset(i32* %6, i32 0, i32 4)
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @S_ISLNK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @S_ISREG(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GIT_DIFFCAPS_HAS_SYMLINKS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %57, %54, %50, %45
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GIT_DIFFCAPS_TRUST_MODE_BITS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @MODE_BITS_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MODE_BITS_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @MODE_BITS_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @MODE_BITS_MASK, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %88, %91
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %84, %81, %73, %66
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = call i64 @git_index_entry_is_conflict(%struct.TYPE_21__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = call i64 @git_index_entry_is_conflict(%struct.TYPE_21__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %93
  %102 = load i32, i32* @GIT_DELTA_CONFLICTED, align 4
  store i32 %102, i32* %7, align 4
  br label %309

103:                                              ; preds = %97
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @GIT_INDEX_ENTRY_VALID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %111, i32* %7, align 4
  br label %308

112:                                              ; preds = %103
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @GIT_INDEX_ENTRY_SKIP_WORKTREE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %120, i32* %7, align 4
  br label %307

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  %123 = call i64 @GIT_MODE_TYPE(i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = call i64 @GIT_MODE_TYPE(i32 %124)
  %126 = icmp ne i64 %123, %125
  br i1 %126, label %127, label %165

127:                                              ; preds = %121
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE, align 4
  %130 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_22__* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @GIT_DELTA_TYPECHANGE, align 4
  store i32 %133, i32* %7, align 4
  br label %164

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @GIT_FILEMODE_UNREADABLE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %142 = call i32 @diff_delta__from_one(%struct.TYPE_22__* %139, i32 %140, %struct.TYPE_21__* %141, %struct.TYPE_21__* null)
  store i32 %142, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = load i32, i32* @GIT_DELTA_UNREADABLE, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %148 = call i32 @diff_delta__from_one(%struct.TYPE_22__* %145, i32 %146, %struct.TYPE_21__* null, %struct.TYPE_21__* %147)
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %144, %138
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %3, align 4
  br label %404

151:                                              ; preds = %134
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = call i32 @diff_delta__from_one(%struct.TYPE_22__* %152, i32 %153, %struct.TYPE_21__* %154, %struct.TYPE_21__* null)
  store i32 %155, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %159 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %161 = call i32 @diff_delta__from_one(%struct.TYPE_22__* %158, i32 %159, %struct.TYPE_21__* null, %struct.TYPE_21__* %160)
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %157, %151
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %3, align 4
  br label %404

164:                                              ; preds = %132
  br label %306

165:                                              ; preds = %121
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 8
  %170 = call i64 @git_oid_equal(i32* %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 8
  %179 = call i64 @git_oid_is_zero(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %182, i32* %7, align 4
  br label %305

183:                                              ; preds = %176, %172, %165
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 8
  %186 = call i64 @git_oid_is_zero(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %292

188:                                              ; preds = %183
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %292

191:                                              ; preds = %188
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @GIT_DIFFCAPS_TRUST_CTIME, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %16, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = call i32* @git_iterator_index(%struct.TYPE_24__* %201)
  store i32* %202, i32** %17, align 8
  %203 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i64 @S_ISGITLINK(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %191
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %210 = call i32 @maybe_modified_submodule(i32* %7, i32* %6, %struct.TYPE_22__* %208, %struct.TYPE_23__* %209)
  store i32 %210, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* %15, align 4
  store i32 %213, i32* %3, align 4
  br label %404

214:                                              ; preds = %207
  br label %291

215:                                              ; preds = %191
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %227, label %219

219:                                              ; preds = %215
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %222, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %219, %215
  %228 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %228, i32* %7, align 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = icmp sle i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %236, 0
  br label %238

238:                                              ; preds = %233, %227
  %239 = phi i1 [ false, %227 ], [ %237, %233 ]
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %13, align 4
  br label %290

241:                                              ; preds = %219
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 10
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 10
  %246 = call i32 @git_index_time_eq(i32* %243, i32* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %287

248:                                              ; preds = %241
  %249 = load i32, i32* %16, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 9
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 9
  %256 = call i32 @git_index_time_eq(i32* %253, i32* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %287

258:                                              ; preds = %251, %248
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %261, %264
  br i1 %265, label %287, label %266

266:                                              ; preds = %258
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %269, %272
  br i1 %273, label %287, label %274

274:                                              ; preds = %266
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 6
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %277, %280
  br i1 %281, label %287, label %282

282:                                              ; preds = %274
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %284 = load i32*, i32** %17, align 8
  %285 = call i64 @git_index_entry_newer_than_index(%struct.TYPE_21__* %283, i32* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282, %274, %266, %258, %251, %241
  %288 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %288, i32* %7, align 4
  store i32 1, i32* %13, align 4
  br label %289

289:                                              ; preds = %287, %282
  br label %290

290:                                              ; preds = %289, %238
  br label %291

291:                                              ; preds = %290, %214
  br label %304

292:                                              ; preds = %188, %183
  %293 = load i32, i32* %11, align 4
  %294 = call i64 @S_ISGITLINK(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %298 = load i32, i32* @GIT_DIFF_IGNORE_SUBMODULES, align 4
  %299 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_22__* %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %301, %296, %292
  br label %304

304:                                              ; preds = %303, %291
  br label %305

305:                                              ; preds = %304, %181
  br label %306

306:                                              ; preds = %305, %164
  br label %307

307:                                              ; preds = %306, %119
  br label %308

308:                                              ; preds = %307, %110
  br label %309

309:                                              ; preds = %308, %101
  %310 = load i32, i32* %13, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %357

312:                                              ; preds = %309
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 8
  %315 = call i64 @git_oid_is_zero(i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %357

317:                                              ; preds = %312
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %319 = load i32, i32* @GIT_DIFF_UPDATE_INDEX, align 4
  %320 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_22__* %318, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %11, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 8
  br label %330

329:                                              ; preds = %322, %317
  br label %330

330:                                              ; preds = %329, %326
  %331 = phi i32* [ %328, %326 ], [ null, %329 ]
  store i32* %331, i32** %18, align 8
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %335 = load i32, i32* %11, align 4
  %336 = load i32*, i32** %18, align 8
  %337 = call i32 @git_diff__oid_for_entry(i32* %6, i32* %333, %struct.TYPE_21__* %334, i32 %335, i32* %336)
  store i32 %337, i32* %15, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %330
  %340 = load i32, i32* %15, align 4
  store i32 %340, i32* %3, align 4
  br label %404

341:                                              ; preds = %330
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %356

345:                                              ; preds = %341
  %346 = load i32, i32* %10, align 4
  %347 = call i64 @S_ISGITLINK(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %345
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 8
  %352 = call i64 @git_oid_equal(i32* %351, i32* %6)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  store i32 %355, i32* %7, align 4
  br label %356

356:                                              ; preds = %354, %349, %345, %341
  br label %357

357:                                              ; preds = %356, %312, %309
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %359 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %360 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_22__* %358, i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %389

362:                                              ; preds = %357
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %364 = load i32, i32* @GIT_DIFF_INCLUDE_CASECHANGE, align 4
  %365 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_22__* %363, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %389

367:                                              ; preds = %362
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 7
  %373 = load i32, i32* %372, align 8
  %374 = call i64 @strcmp(i32 %370, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %389

376:                                              ; preds = %367
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %378 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %380 = call i32 @diff_delta__from_one(%struct.TYPE_22__* %377, i32 %378, %struct.TYPE_21__* %379, %struct.TYPE_21__* null)
  store i32 %380, i32* %15, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %376
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %384 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %386 = call i32 @diff_delta__from_one(%struct.TYPE_22__* %383, i32 %384, %struct.TYPE_21__* null, %struct.TYPE_21__* %385)
  store i32 %386, i32* %15, align 4
  br label %387

387:                                              ; preds = %382, %376
  %388 = load i32, i32* %15, align 4
  store i32 %388, i32* %3, align 4
  br label %404

389:                                              ; preds = %367, %362, %357
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %391 = load i32, i32* %7, align 4
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %393 = load i32, i32* %10, align 4
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %395 = load i32, i32* %11, align 4
  %396 = call i64 @git_oid_is_zero(i32* %6)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %389
  br label %400

399:                                              ; preds = %389
  br label %400

400:                                              ; preds = %399, %398
  %401 = phi i32* [ null, %398 ], [ %6, %399 ]
  %402 = load i8*, i8** %14, align 8
  %403 = call i32 @diff_delta__from_two(%struct.TYPE_22__* %390, i32 %391, %struct.TYPE_21__* %392, i32 %393, %struct.TYPE_21__* %394, i32 %395, i32* %401, i8* %402)
  store i32 %403, i32* %3, align 4
  br label %404

404:                                              ; preds = %400, %387, %339, %212, %162, %149, %44
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

declare dso_local i32 @diff_pathspec_match(i8**, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @git_index_entry_is_conflict(%struct.TYPE_21__*) #1

declare dso_local i64 @GIT_MODE_TYPE(i32) #1

declare dso_local i64 @DIFF_FLAG_IS_SET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @diff_delta__from_one(%struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @git_oid_equal(i32*, i32*) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32* @git_iterator_index(%struct.TYPE_24__*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @maybe_modified_submodule(i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @git_index_time_eq(i32*, i32*) #1

declare dso_local i64 @git_index_entry_newer_than_index(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @git_diff__oid_for_entry(i32*, i32*, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @diff_delta__from_two(%struct.TYPE_22__*, i32, %struct.TYPE_21__*, i32, %struct.TYPE_21__*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
