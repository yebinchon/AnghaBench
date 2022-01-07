; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_do_reset.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.lock_file = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32, %struct.object_id }
%struct.object_id = type { i32 }
%struct.tree_desc = type { i64 }
%struct.tree = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_REPORT_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[new root]\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"writing fake root commit\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"writing squash-onto\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"refs/rewritten/%.*s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"refs/rewritten/\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"could not read '%s'\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@oneway_merge = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to find tree of %s\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"could not write index\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"'%.*s'\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.replay_opts*)* @do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reset(%struct.repository* %0, i8* %1, i32 %2, %struct.replay_opts* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.replay_opts*, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.lock_file, align 4
  %13 = alloca %struct.tree_desc, align 8
  %14 = alloca %struct.tree*, align 8
  %15 = alloca %struct.unpack_trees_options, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.replay_opts* %3, %struct.replay_opts** %9, align 8
  %19 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %20 = bitcast %struct.lock_file* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %16, align 4
  %21 = load %struct.repository*, %struct.repository** %6, align 8
  %22 = load i32, i32* @LOCK_REPORT_ON_ERROR, align 4
  %23 = call i64 @repo_hold_locked_index(%struct.repository* %21, %struct.lock_file* %12, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %196

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %29
  %35 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %36 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %44 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %43, i32 0, i32 1
  %45 = call i64 @commit_tree(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %42, i32* null, %struct.object_id* %44, i32* null, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 (i32, ...) @error(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %196

50:                                               ; preds = %39
  %51 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %52 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %54 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %53, i32 0, i32 1
  %55 = call i8* @oid_to_hex(%struct.object_id* %54)
  store i8* %55, i8** %17, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = call i32 (...) @rebase_path_squash_onto()
  %60 = call i64 @write_message(i8* %56, i64 %58, i32 %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 (i32, ...) @error(i32 %63)
  store i32 %64, i32* %5, align 4
  br label %196

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %68 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %67, i32 0, i32 1
  %69 = call i32 @oidcpy(%struct.object_id* %11, %struct.object_id* %68)
  br label %112

70:                                               ; preds = %29, %26
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isspace(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %88

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  br label %71

88:                                               ; preds = %83, %71
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %90, i8* %91)
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @get_oid(i64 %94, %struct.object_id* %11)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %101 = add nsw i64 %99, %100
  %102 = call i64 @get_oid(i64 %101, %struct.object_id* %11)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, ...) @error(i32 %105, i64 %107)
  %109 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  %110 = call i32 @strbuf_release(%struct.strbuf* %10)
  store i32 -1, i32* %5, align 4
  br label %196

111:                                              ; preds = %97, %88
  br label %112

112:                                              ; preds = %111, %66
  %113 = call i32 @memset(%struct.unpack_trees_options* %15, i32 0, i32 24)
  %114 = call i32 @setup_unpack_trees_porcelain(%struct.unpack_trees_options* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %115 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load %struct.repository*, %struct.repository** %6, align 8
  %117 = getelementptr inbounds %struct.repository, %struct.repository* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 5
  store i32 %118, i32* %119, align 4
  %120 = load %struct.repository*, %struct.repository** %6, align 8
  %121 = getelementptr inbounds %struct.repository, %struct.repository* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 4
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @oneway_merge, align 4
  %125 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 3
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 2
  store i32 1, i32* %127, align 4
  %128 = load %struct.repository*, %struct.repository** %6, align 8
  %129 = call i64 @repo_read_index_unmerged(%struct.repository* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %112
  %132 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  %133 = call i32 @strbuf_release(%struct.strbuf* %10)
  %134 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %135 = call i8* @action_name(%struct.replay_opts* %134)
  %136 = call i32 @_(i8* %135)
  %137 = call i32 @error_resolve_conflict(i32 %136)
  store i32 %137, i32* %5, align 4
  br label %196

138:                                              ; preds = %112
  %139 = load %struct.repository*, %struct.repository** %6, align 8
  %140 = call i32 @fill_tree_descriptor(%struct.repository* %139, %struct.tree_desc* %13, %struct.object_id* %11)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %138
  %143 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %144 = call i8* @oid_to_hex(%struct.object_id* %11)
  %145 = call i32 (i32, ...) @error(i32 %143, i8* %144)
  %146 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  %147 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @free(i8* %149)
  %151 = call i32 @strbuf_release(%struct.strbuf* %10)
  store i32 -1, i32* %5, align 4
  br label %196

152:                                              ; preds = %138
  %153 = call i64 @unpack_trees(i32 1, %struct.tree_desc* %13, %struct.unpack_trees_options* %15)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  %157 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %13, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @free(i8* %159)
  %161 = call i32 @strbuf_release(%struct.strbuf* %10)
  store i32 -1, i32* %5, align 4
  br label %196

162:                                              ; preds = %152
  %163 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %11)
  store %struct.tree* %163, %struct.tree** %14, align 8
  %164 = load %struct.repository*, %struct.repository** %6, align 8
  %165 = load %struct.repository*, %struct.repository** %6, align 8
  %166 = getelementptr inbounds %struct.repository, %struct.repository* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.tree*, %struct.tree** %14, align 8
  %169 = call i32 @prime_cache_tree(%struct.repository* %164, i32 %167, %struct.tree* %168)
  %170 = load %struct.repository*, %struct.repository** %6, align 8
  %171 = getelementptr inbounds %struct.repository, %struct.repository* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @COMMIT_LOCK, align 4
  %174 = call i64 @write_locked_index(i32 %172, %struct.lock_file* %12, i32 %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %162
  %177 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %178 = call i32 (i32, ...) @error(i32 %177)
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %176, %162
  %180 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %13, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = call i32 @free(i8* %182)
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load %struct.replay_opts*, %struct.replay_opts** %9, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @reflog_message(%struct.replay_opts* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %188, i8* %189)
  %191 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %192 = call i32 @update_ref(i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.object_id* %11, i32* null, i32 0, i32 %191)
  store i32 %192, i32* %16, align 4
  br label %193

193:                                              ; preds = %186, %179
  %194 = call i32 @strbuf_release(%struct.strbuf* %10)
  %195 = load i32, i32* %16, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %193, %155, %142, %131, %104, %62, %47, %25
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @commit_tree(i8*, i32, i32, i32*, %struct.object_id*, i32*, i32*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @write_message(i8*, i64, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @rebase_path_squash_onto(...) #2

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i64 @get_oid(i64, %struct.object_id*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #2

declare dso_local i32 @setup_unpack_trees_porcelain(%struct.unpack_trees_options*, i8*) #2

declare dso_local i64 @repo_read_index_unmerged(%struct.repository*) #2

declare dso_local i32 @error_resolve_conflict(i32) #2

declare dso_local i8* @action_name(%struct.replay_opts*) #2

declare dso_local i32 @fill_tree_descriptor(%struct.repository*, %struct.tree_desc*, %struct.object_id*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #2

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #2

declare dso_local i32 @prime_cache_tree(%struct.repository*, i32, %struct.tree*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

declare dso_local i32 @update_ref(i32, i8*, %struct.object_id*, i32*, i32, i32) #2

declare dso_local i32 @reflog_message(%struct.replay_opts*, i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
