; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_handle_unmatched_new_item.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_handle_unmatched_new_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_35__*, %struct.TYPE_31__*, i32, i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_30__, i64 }
%struct.TYPE_30__ = type { i64 }

@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DELTA_CONFLICTED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_FILEMODE_TREE = common dso_local global i64 0, align 8
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@DOT_GIT = common dso_local global i32 0, align 4
@GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_ITERATOR_STATUS_FILTERED = common dso_local global i64 0, align 8
@GIT_ITERATOR_STATUS_IGNORED = common dso_local global i64 0, align 8
@GIT_ITERATOR_STATUS_EMPTY = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ITERATOR_TYPE_WORKDIR = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_FILEMODE_COMMIT = common dso_local global i64 0, align 8
@GIT_FILEMODE_UNREADABLE = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DELTA_UNREADABLE = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_TYPECHANGE_TREES = common dso_local global i32 0, align 4
@GIT_DELTA_TYPECHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_34__*)* @handle_unmatched_new_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_unmatched_new_item(%struct.TYPE_32__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %7, align 8
  %18 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %24 = call i32 @entry_is_prefixed(%struct.TYPE_32__* %19, i32 %22, %struct.TYPE_31__* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %26 = call i64 @git_index_entry_is_conflict(%struct.TYPE_31__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  store i64 %29, i64* %8, align 8
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %32, align 8
  %34 = call i64 @git_iterator_current_is_ignored(%struct.TYPE_35__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %28
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %197

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %55 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %56 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_32__* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %49
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %64 = load i32, i32* @GIT_DIFF_RECURSE_IGNORED_DIRS, align 4
  %65 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_32__* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  br label %69

69:                                               ; preds = %67, %53, %45
  %70 = phi i1 [ true, %53 ], [ true, %45 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  store i32* null, i32** %11, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %79, align 8
  %81 = call i64 @git_iterator_current_workdir_path(i32** %11, %struct.TYPE_35__* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %338

84:                                               ; preds = %77
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* @DOT_GIT, align 4
  %90 = call i64 @git_path_contains(i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %87, %84
  br label %94

94:                                               ; preds = %93, %74, %69
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %173, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %173

101:                                              ; preds = %97
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %103 = load i32, i32* @GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS, align 4
  %104 = call i64 @DIFF_FLAG_ISNT_SET(%struct.TYPE_32__* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %173

106:                                              ; preds = %101
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %110 = call i32 @diff_delta__from_one(%struct.TYPE_32__* %107, i64 %108, i32* null, %struct.TYPE_31__* %109)
  store i32 %110, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %338

114:                                              ; preds = %106
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %117 = call %struct.TYPE_33__* @diff_delta__last_for_item(%struct.TYPE_32__* %115, %struct.TYPE_31__* %116)
  store %struct.TYPE_33__* %117, %struct.TYPE_33__** %12, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %119 = icmp ne %struct.TYPE_33__* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %124, align 8
  %126 = call i32 @iterator_advance(%struct.TYPE_31__** %122, %struct.TYPE_35__* %125)
  store i32 %126, i32* %3, align 4
  br label %338

127:                                              ; preds = %114
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %131, align 8
  %133 = call i32 @iterator_advance_over(%struct.TYPE_31__** %129, i64* %13, %struct.TYPE_35__* %132)
  store i32 %133, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %338

137:                                              ; preds = %127
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* @GIT_ITERATOR_STATUS_FILTERED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = call i32 @git_vector_pop(i32* %144)
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %147 = call i32 @git__free(%struct.TYPE_33__* %146)
  br label %148

148:                                              ; preds = %141, %137
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* @GIT_ITERATOR_STATUS_IGNORED, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* @GIT_ITERATOR_STATUS_EMPTY, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152, %148
  %157 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %161 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %162 = call i64 @DIFF_FLAG_ISNT_SET(%struct.TYPE_32__* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = call i32 @git_vector_pop(i32* %167)
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %170 = call i32 @git__free(%struct.TYPE_33__* %169)
  br label %171

171:                                              ; preds = %164, %156
  br label %172

172:                                              ; preds = %171, %152
  store i32 0, i32* %3, align 4
  br label %338

173:                                              ; preds = %101, %97, %94
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %173
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %180, align 8
  %182 = call i32 @iterator_advance_into(%struct.TYPE_31__** %178, %struct.TYPE_35__* %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @GIT_ENOTFOUND, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %176
  %187 = call i32 (...) @git_error_clear()
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %191, align 8
  %193 = call i32 @iterator_advance(%struct.TYPE_31__** %189, %struct.TYPE_35__* %192)
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %186, %176
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %338

196:                                              ; preds = %173
  br label %296

197:                                              ; preds = %39
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %197
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %203 = load i32, i32* @GIT_DIFF_RECURSE_IGNORED_DIRS, align 4
  %204 = call i64 @DIFF_FLAG_ISNT_SET(%struct.TYPE_32__* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %208, align 8
  %210 = call i64 @git_iterator_current_tree_is_ignored(%struct.TYPE_35__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %216, align 8
  %218 = call i32 @iterator_advance(%struct.TYPE_31__** %214, %struct.TYPE_35__* %217)
  store i32 %218, i32* %3, align 4
  br label %338

219:                                              ; preds = %206, %201, %197
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_35__*, %struct.TYPE_35__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %219
  %228 = load i64, i64* %8, align 8
  %229 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i64, i64* @GIT_DELTA_ADDED, align 8
  store i64 %232, i64* %8, align 8
  br label %233

233:                                              ; preds = %231, %227
  br label %294

234:                                              ; preds = %219
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %276

240:                                              ; preds = %234
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @git_submodule_lookup(i32* null, i32 %243, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %240
  %250 = call i32 (...) @git_error_clear()
  %251 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  store i64 %251, i64* %8, align 8
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %249
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_35__*, %struct.TYPE_35__** %258, align 8
  %260 = call i32 @iterator_advance_into(%struct.TYPE_31__** %256, %struct.TYPE_35__* %259)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @GIT_ENOTFOUND, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %254
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %3, align 4
  br label %338

266:                                              ; preds = %254
  %267 = call i32 (...) @git_error_clear()
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %271, align 8
  %273 = call i32 @iterator_advance(%struct.TYPE_31__** %269, %struct.TYPE_35__* %272)
  store i32 %273, i32* %3, align 4
  br label %338

274:                                              ; preds = %249
  br label %275

275:                                              ; preds = %274, %240
  br label %293

276:                                              ; preds = %234
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @GIT_FILEMODE_UNREADABLE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %276
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %284 = load i32, i32* @GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED, align 4
  %285 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_32__* %283, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  store i64 %288, i64* %8, align 8
  br label %291

289:                                              ; preds = %282
  %290 = load i64, i64* @GIT_DELTA_UNREADABLE, align 8
  store i64 %290, i64* %8, align 8
  br label %291

291:                                              ; preds = %289, %287
  br label %292

292:                                              ; preds = %291, %276
  br label %293

293:                                              ; preds = %292, %275
  br label %294

294:                                              ; preds = %293, %233
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295, %196
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %298 = load i64, i64* %8, align 8
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %300 = call i32 @diff_delta__from_one(%struct.TYPE_32__* %297, i64 %298, i32* null, %struct.TYPE_31__* %299)
  store i32 %300, i32* %6, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = load i32, i32* %6, align 4
  store i32 %303, i32* %3, align 4
  br label %338

304:                                              ; preds = %296
  %305 = load i64, i64* %8, align 8
  %306 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %331

308:                                              ; preds = %304
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %310 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE_TREES, align 4
  %311 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_32__* %309, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %331

313:                                              ; preds = %308
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %331

316:                                              ; preds = %313
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %319 = call %struct.TYPE_33__* @diff_delta__last_for_item(%struct.TYPE_32__* %317, %struct.TYPE_31__* %318)
  store %struct.TYPE_33__* %319, %struct.TYPE_33__** %14, align 8
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %321 = icmp ne %struct.TYPE_33__* %320, null
  br i1 %321, label %322, label %330

322:                                              ; preds = %316
  %323 = load i64, i64* @GIT_DELTA_TYPECHANGE, align 8
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %324, i32 0, i32 1
  store i64 %323, i64* %325, align 8
  %326 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 0
  store i64 %326, i64* %329, align 8
  br label %330

330:                                              ; preds = %322, %316
  br label %331

331:                                              ; preds = %330, %313, %308, %304
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_35__*, %struct.TYPE_35__** %335, align 8
  %337 = call i32 @iterator_advance(%struct.TYPE_31__** %333, %struct.TYPE_35__* %336)
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %331, %302, %266, %264, %212, %194, %172, %135, %120, %112, %83
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i32 @entry_is_prefixed(%struct.TYPE_32__*, i32, %struct.TYPE_31__*) #1

declare dso_local i64 @git_index_entry_is_conflict(%struct.TYPE_31__*) #1

declare dso_local i64 @git_iterator_current_is_ignored(%struct.TYPE_35__*) #1

declare dso_local i64 @DIFF_FLAG_IS_SET(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @git_iterator_current_workdir_path(i32**, %struct.TYPE_35__*) #1

declare dso_local i64 @git_path_contains(i32*, i32) #1

declare dso_local i64 @DIFF_FLAG_ISNT_SET(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @diff_delta__from_one(%struct.TYPE_32__*, i64, i32*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_33__* @diff_delta__last_for_item(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @iterator_advance(%struct.TYPE_31__**, %struct.TYPE_35__*) #1

declare dso_local i32 @iterator_advance_over(%struct.TYPE_31__**, i64*, %struct.TYPE_35__*) #1

declare dso_local i32 @git_vector_pop(i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_33__*) #1

declare dso_local i32 @iterator_advance_into(%struct.TYPE_31__**, %struct.TYPE_35__*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i64 @git_iterator_current_tree_is_ignored(%struct.TYPE_35__*) #1

declare dso_local i64 @git_submodule_lookup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
