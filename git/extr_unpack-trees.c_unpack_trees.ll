; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_unpack_trees.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_unpack_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.tree_desc = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i8*, i64, %struct.pattern_list*, i64, %struct.pattern_list, %struct.pattern_list*, %struct.pattern_list*, i64, i64, i64, i32, %struct.cache_entry*, i32 }
%struct.pattern_list = type { i32, i32, i32, i64, %struct.cache_entry**, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.traverse_info = type { i32, i64, %struct.unpack_trees_options*, i32 }

@unpack_trees.dfc = internal global %struct.cache_entry* null, align 8
@MAX_UNPACK_TREES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unpack_trees takes at most %d trees\00", align 1
@core_apply_sparse_checkout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"info/sparse-checkout\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CE_NEW_SKIP_WORKTREE = common dso_local global i32 0, align 4
@unpack_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"traverse_trees\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Merge requires file-level merging\00", align 1
@CE_ADDED = common dso_local global i32 0, align 4
@CE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Sparse checkout leaves no entry on working directory\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIT_TEST_CHECK_CACHE_TREE\00", align 1
@the_repository = common dso_local global i32 0, align 4
@WRITE_TREE_SILENT = common dso_local global i32 0, align 4
@WRITE_TREE_REPAIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"unpack_trees\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpack_trees(i32 %0, %struct.tree_desc* %1, %struct.unpack_trees_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_desc*, align 8
  %6 = alloca %struct.unpack_trees_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pattern_list, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.traverse_info, align 8
  %13 = alloca %struct.cache_entry*, align 8
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cache_entry*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tree_desc* %1, %struct.tree_desc** %5, align 8
  store %struct.unpack_trees_options* %2, %struct.unpack_trees_options** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %22 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = call i32 (...) @trace_performance_enter()
  %25 = call i32 @memset(%struct.pattern_list* %9, i32 0, i32 64)
  %26 = load i32, i32* @core_apply_sparse_checkout, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %30 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %35 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %38 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = call i8* @git_pathdup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @add_patterns_from_file_to_list(i8* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.pattern_list* %9, i32* null)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %48 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %51 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %50, i32 0, i32 8
  store %struct.pattern_list* %9, %struct.pattern_list** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %52, %36
  %56 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %57 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %56, i32 0, i32 6
  %58 = call i32 @memset(%struct.pattern_list* %57, i32 0, i32 64)
  %59 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %60 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %63 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %62, i32 0, i32 4
  %64 = load %struct.pattern_list*, %struct.pattern_list** %63, align 8
  %65 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %69 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %73 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %72, i32 0, i32 4
  %74 = load %struct.pattern_list*, %struct.pattern_list** %73, align 8
  %75 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %79 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %83 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %82, i32 0, i32 4
  %84 = load %struct.pattern_list*, %struct.pattern_list** %83, align 8
  %85 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %88 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %88, i32 0, i32 7
  store i32 %86, i32* %89, align 8
  %90 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %91 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %90, i32 0, i32 4
  %92 = load %struct.pattern_list*, %struct.pattern_list** %91, align 8
  %93 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %92, i32 0, i32 6
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %55
  %97 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %98 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %98, i32 0, i32 6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %99, align 8
  br label %132

100:                                              ; preds = %55
  %101 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %102 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %101, i32 0, i32 4
  %103 = load %struct.pattern_list*, %struct.pattern_list** %102, align 8
  %104 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %105 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %104, i32 0, i32 7
  %106 = load %struct.pattern_list*, %struct.pattern_list** %105, align 8
  %107 = icmp eq %struct.pattern_list* %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %110 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %109, i32 0, i32 4
  %111 = load %struct.pattern_list*, %struct.pattern_list** %110, align 8
  %112 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %111, i32 0, i32 6
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %115 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %115, i32 0, i32 6
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %116, align 8
  %117 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %118 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %118, i32 0, i32 6
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %131

124:                                              ; preds = %100
  %125 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %126 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %125, i32 0, i32 6
  %127 = call %struct.TYPE_4__* @init_split_index(%struct.pattern_list* %126)
  %128 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %129 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %129, i32 0, i32 6
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %130, align 8
  br label %131

131:                                              ; preds = %124, %108
  br label %132

132:                                              ; preds = %131, %96
  %133 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %134 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %134, i32 0, i32 5
  %136 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %137 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %136, i32 0, i32 4
  %138 = load %struct.pattern_list*, %struct.pattern_list** %137, align 8
  %139 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %138, i32 0, i32 5
  %140 = call i32 @oidcpy(i32* %135, i32* %139)
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %143 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %145 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %144, i32 0, i32 4
  %146 = load %struct.pattern_list*, %struct.pattern_list** %145, align 8
  %147 = call i32 @mark_all_ce_unused(%struct.pattern_list* %146)
  %148 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %149 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %132
  %153 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %154 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %153, i32 0, i32 8
  %155 = load %struct.pattern_list*, %struct.pattern_list** %154, align 8
  %156 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %157 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %156, i32 0, i32 4
  %158 = load %struct.pattern_list*, %struct.pattern_list** %157, align 8
  %159 = load i32, i32* @CE_NEW_SKIP_WORKTREE, align 4
  %160 = call i32 @mark_new_skip_worktree(%struct.pattern_list* %155, %struct.pattern_list* %158, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %152, %132
  %162 = load %struct.cache_entry*, %struct.cache_entry** @unpack_trees.dfc, align 8
  %163 = icmp ne %struct.cache_entry* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = call i32 @cache_entry_size(i32 0)
  %166 = call %struct.cache_entry* @xcalloc(i32 1, i32 %165)
  store %struct.cache_entry* %166, %struct.cache_entry** @unpack_trees.dfc, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.cache_entry*, %struct.cache_entry** @unpack_trees.dfc, align 8
  %169 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %170 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %169, i32 0, i32 13
  store %struct.cache_entry* %168, %struct.cache_entry** %170, align 8
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %236

173:                                              ; preds = %167
  %174 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %175 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %180 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  br label %183

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi i8* [ %181, %178 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %182 ]
  store i8* %184, i8** %11, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = call i32 @setup_traverse_info(%struct.traverse_info* %12, i8* %185)
  %187 = load i32, i32* @unpack_callback, align 4
  %188 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 3
  store i32 %187, i32* %188, align 8
  %189 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %190 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 2
  store %struct.unpack_trees_options* %189, %struct.unpack_trees_options** %190, align 8
  %191 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %192 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 1
  store i64 %193, i64* %194, align 8
  %195 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %196 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %195, i32 0, i32 12
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 0
  store i32 %197, i32* %198, align 8
  %199 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %200 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %223

203:                                              ; preds = %183
  br label %204

204:                                              ; preds = %203, %221
  %205 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %206 = call %struct.cache_entry* @next_cache_entry(%struct.unpack_trees_options* %205)
  store %struct.cache_entry* %206, %struct.cache_entry** %13, align 8
  %207 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %208 = icmp ne %struct.cache_entry* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  br label %222

210:                                              ; preds = %204
  %211 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %212 = call i64 @ce_in_traverse_path(%struct.cache_entry* %211, %struct.traverse_info* %12)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %222

215:                                              ; preds = %210
  %216 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %217 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %218 = call i64 @unpack_index_entry(%struct.cache_entry* %216, %struct.unpack_trees_options* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %443

221:                                              ; preds = %215
  br label %204

222:                                              ; preds = %214, %209
  br label %223

223:                                              ; preds = %222, %183
  %224 = call i32 (...) @trace_performance_enter()
  %225 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %226 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %225, i32 0, i32 4
  %227 = load %struct.pattern_list*, %struct.pattern_list** %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %230 = call i32 @traverse_trees(%struct.pattern_list* %227, i32 %228, %struct.tree_desc* %229, %struct.traverse_info* %12)
  store i32 %230, i32* %8, align 4
  %231 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %223
  br label %443

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235, %167
  %237 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %238 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %237, i32 0, i32 11
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  br label %242

242:                                              ; preds = %241, %254
  %243 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %244 = call %struct.cache_entry* @next_cache_entry(%struct.unpack_trees_options* %243)
  store %struct.cache_entry* %244, %struct.cache_entry** %14, align 8
  %245 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %246 = icmp ne %struct.cache_entry* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %242
  br label %255

248:                                              ; preds = %242
  %249 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %250 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %251 = call i64 @unpack_index_entry(%struct.cache_entry* %249, %struct.unpack_trees_options* %250)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %443

254:                                              ; preds = %248
  br label %242

255:                                              ; preds = %247
  br label %256

256:                                              ; preds = %255, %236
  %257 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %258 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %257, i32 0, i32 4
  %259 = load %struct.pattern_list*, %struct.pattern_list** %258, align 8
  %260 = call i32 @mark_all_ce_unused(%struct.pattern_list* %259)
  %261 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %262 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %261, i32 0, i32 10
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %256
  %266 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %267 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %266, i32 0, i32 9
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %272 = call i32 @unpack_failed(%struct.unpack_trees_options* %271, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 %272, i32* %8, align 4
  br label %439

273:                                              ; preds = %265, %256
  %274 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %275 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %364, label %278

278:                                              ; preds = %273
  store i32 1, i32* %15, align 4
  %279 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %280 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %279, i32 0, i32 8
  %281 = load %struct.pattern_list*, %struct.pattern_list** %280, align 8
  %282 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %283 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %282, i32 0, i32 6
  %284 = load i32, i32* @CE_ADDED, align 4
  %285 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %286 = load i32, i32* @CE_NEW_SKIP_WORKTREE, align 4
  %287 = or i32 %285, %286
  %288 = call i32 @mark_new_skip_worktree(%struct.pattern_list* %281, %struct.pattern_list* %283, i32 %284, i32 %287)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %289

289:                                              ; preds = %344, %278
  %290 = load i32, i32* %7, align 4
  %291 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %292 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %290, %294
  br i1 %295, label %296, label %347

296:                                              ; preds = %289
  %297 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %298 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %298, i32 0, i32 4
  %300 = load %struct.cache_entry**, %struct.cache_entry*** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %300, i64 %302
  %304 = load %struct.cache_entry*, %struct.cache_entry** %303, align 8
  store %struct.cache_entry* %304, %struct.cache_entry** %16, align 8
  %305 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %306 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @CE_ADDED, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %296
  %312 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %313 = load i32, i32* @ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, align 4
  %314 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %315 = call i64 @verify_absent(%struct.cache_entry* %312, i32 %313, %struct.unpack_trees_options* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %311
  %318 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %319 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %318, i32 0, i32 5
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %317
  br label %443

323:                                              ; preds = %317
  store i32 -1, i32* %8, align 4
  br label %324

324:                                              ; preds = %323, %311, %296
  %325 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %326 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %325, i32 0, i32 6
  %327 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %328 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %329 = call i64 @apply_sparse_checkout(%struct.pattern_list* %326, %struct.cache_entry* %327, %struct.unpack_trees_options* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %324
  %332 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %333 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %332, i32 0, i32 5
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %331
  br label %443

337:                                              ; preds = %331
  store i32 -1, i32* %8, align 4
  br label %338

338:                                              ; preds = %337, %324
  %339 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %340 = call i32 @ce_skip_worktree(%struct.cache_entry* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %338
  store i32 0, i32* %15, align 4
  br label %343

343:                                              ; preds = %342, %338
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %7, align 4
  br label %289

347:                                              ; preds = %289
  %348 = load i32, i32* %8, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  br label %443

351:                                              ; preds = %347
  %352 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %353 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %352, i32 0, i32 6
  %354 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %351
  %358 = load i32, i32* %15, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %362 = call i32 @unpack_failed(%struct.unpack_trees_options* %361, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 %362, i32* %8, align 4
  br label %439

363:                                              ; preds = %357, %351
  br label %364

364:                                              ; preds = %363, %273
  %365 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %366 = call i64 @check_updates(%struct.unpack_trees_options* %365)
  %367 = icmp ne i64 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 -2, i32 0
  store i32 %369, i32* %8, align 4
  %370 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %371 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %370, i32 0, i32 7
  %372 = load %struct.pattern_list*, %struct.pattern_list** %371, align 8
  %373 = icmp ne %struct.pattern_list* %372, null
  br i1 %373, label %374, label %432

374:                                              ; preds = %364
  %375 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %376 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %375, i32 0, i32 6
  %377 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %378 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %377, i32 0, i32 4
  %379 = load %struct.pattern_list*, %struct.pattern_list** %378, align 8
  %380 = call i32 @move_index_extensions(%struct.pattern_list* %376, %struct.pattern_list* %379)
  %381 = load i32, i32* %8, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %417, label %383

383:                                              ; preds = %374
  %384 = call i64 @git_env_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load i32, i32* @the_repository, align 4
  %388 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %389 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %388, i32 0, i32 6
  %390 = call i32 @cache_tree_verify(i32 %387, %struct.pattern_list* %389)
  br label %391

391:                                              ; preds = %386, %383
  %392 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %393 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %392, i32 0, i32 6
  %394 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %391
  %398 = call i64 (...) @cache_tree()
  %399 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %400 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %399, i32 0, i32 6
  %401 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %400, i32 0, i32 3
  store i64 %398, i64* %401, align 8
  br label %402

402:                                              ; preds = %397, %391
  %403 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %404 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %403, i32 0, i32 6
  %405 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = call i32 @cache_tree_fully_valid(i64 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %416, label %409

409:                                              ; preds = %402
  %410 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %411 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %410, i32 0, i32 6
  %412 = load i32, i32* @WRITE_TREE_SILENT, align 4
  %413 = load i32, i32* @WRITE_TREE_REPAIR, align 4
  %414 = or i32 %412, %413
  %415 = call i32 @cache_tree_update(%struct.pattern_list* %411, i32 %414)
  br label %416

416:                                              ; preds = %409, %402
  br label %417

417:                                              ; preds = %416, %374
  %418 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %419 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %418, i32 0, i32 6
  %420 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %419, i32 0, i32 2
  store i32 1, i32* %420, align 8
  %421 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %422 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %421, i32 0, i32 7
  %423 = load %struct.pattern_list*, %struct.pattern_list** %422, align 8
  %424 = call i32 @discard_index(%struct.pattern_list* %423)
  %425 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %426 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %425, i32 0, i32 7
  %427 = load %struct.pattern_list*, %struct.pattern_list** %426, align 8
  %428 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %429 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %428, i32 0, i32 6
  %430 = bitcast %struct.pattern_list* %427 to i8*
  %431 = bitcast %struct.pattern_list* %429 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %430, i8* align 8 %431, i64 64, i1 false)
  br label %436

432:                                              ; preds = %364
  %433 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %434 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %433, i32 0, i32 6
  %435 = call i32 @discard_index(%struct.pattern_list* %434)
  br label %436

436:                                              ; preds = %432, %417
  %437 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %438 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %437, i32 0, i32 4
  store %struct.pattern_list* null, %struct.pattern_list** %438, align 8
  br label %439

439:                                              ; preds = %463, %436, %360, %270
  %440 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %441 = call i32 @clear_pattern_list(%struct.pattern_list* %9)
  %442 = load i32, i32* %8, align 4
  ret i32 %442

443:                                              ; preds = %350, %336, %322, %253, %234, %220
  %444 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %445 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %444, i32 0, i32 5
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %443
  %449 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %450 = call i32 @display_error_msgs(%struct.unpack_trees_options* %449)
  br label %451

451:                                              ; preds = %448, %443
  %452 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %453 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %452, i32 0, i32 4
  %454 = load %struct.pattern_list*, %struct.pattern_list** %453, align 8
  %455 = call i32 @mark_all_ce_unused(%struct.pattern_list* %454)
  %456 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %457 = call i32 @unpack_failed(%struct.unpack_trees_options* %456, i8* null)
  store i32 %457, i32* %8, align 4
  %458 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %459 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %451
  store i32 0, i32* %8, align 4
  br label %463

463:                                              ; preds = %462, %451
  br label %439
}

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @trace_performance_enter(...) #1

declare dso_local i32 @memset(%struct.pattern_list*, i32, i32) #1

declare dso_local i8* @git_pathdup(i8*) #1

declare dso_local i64 @add_patterns_from_file_to_list(i8*, i8*, i32, %struct.pattern_list*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_4__* @init_split_index(%struct.pattern_list*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @mark_all_ce_unused(%struct.pattern_list*) #1

declare dso_local i32 @mark_new_skip_worktree(%struct.pattern_list*, %struct.pattern_list*, i32, i32) #1

declare dso_local %struct.cache_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @cache_entry_size(i32) #1

declare dso_local i32 @setup_traverse_info(%struct.traverse_info*, i8*) #1

declare dso_local %struct.cache_entry* @next_cache_entry(%struct.unpack_trees_options*) #1

declare dso_local i64 @ce_in_traverse_path(%struct.cache_entry*, %struct.traverse_info*) #1

declare dso_local i64 @unpack_index_entry(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @traverse_trees(%struct.pattern_list*, i32, %struct.tree_desc*, %struct.traverse_info*) #1

declare dso_local i32 @trace_performance_leave(i8*) #1

declare dso_local i32 @unpack_failed(%struct.unpack_trees_options*, i8*) #1

declare dso_local i64 @verify_absent(%struct.cache_entry*, i32, %struct.unpack_trees_options*) #1

declare dso_local i64 @apply_sparse_checkout(%struct.pattern_list*, %struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @check_updates(%struct.unpack_trees_options*) #1

declare dso_local i32 @move_index_extensions(%struct.pattern_list*, %struct.pattern_list*) #1

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local i32 @cache_tree_verify(i32, %struct.pattern_list*) #1

declare dso_local i64 @cache_tree(...) #1

declare dso_local i32 @cache_tree_fully_valid(i64) #1

declare dso_local i32 @cache_tree_update(%struct.pattern_list*, i32) #1

declare dso_local i32 @discard_index(%struct.pattern_list*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_pattern_list(%struct.pattern_list*) #1

declare dso_local i32 @display_error_msgs(%struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
