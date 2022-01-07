; ModuleID = '/home/carl/AnghaBench/git/extr_preload-index.c_preload_thread.c'
source_filename = "/home/carl/AnghaBench/git/extr_preload-index.c_preload_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_def = type { i32 }
%struct.thread_data = type { i32, i32, %struct.progress_data*, i32, %struct.index_state* }
%struct.progress_data = type { i32, i32, i32 }
%struct.index_state = type { i64, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.stat = type { i32 }

@CACHE_DEF_INIT = common dso_local global %struct.cache_def zeroinitializer, align 4
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4
@CE_MATCH_RACY_IS_DIRTY = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_FSMONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @preload_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @preload_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.cache_entry**, align 8
  %8 = alloca %struct.cache_def, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca %struct.progress_data*, align 8
  %12 = alloca %struct.progress_data*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.thread_data*
  store %struct.thread_data* %14, %struct.thread_data** %5, align 8
  %15 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %16 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %15, i32 0, i32 4
  %17 = load %struct.index_state*, %struct.index_state** %16, align 8
  store %struct.index_state* %17, %struct.index_state** %6, align 8
  %18 = load %struct.index_state*, %struct.index_state** %6, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %21 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %22 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %20, i64 %24
  store %struct.cache_entry** %25, %struct.cache_entry*** %7, align 8
  %26 = bitcast %struct.cache_def* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.cache_def* @CACHE_DEF_INIT to i8*), i64 4, i1 false)
  %27 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %28 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %32 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = load %struct.index_state*, %struct.index_state** %6, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = load %struct.index_state*, %struct.index_state** %6, align 8
  %42 = getelementptr inbounds %struct.index_state, %struct.index_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %45 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %43, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %40, %1
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %158, %50
  %53 = load %struct.cache_entry**, %struct.cache_entry*** %7, align 8
  %54 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %53, i32 1
  store %struct.cache_entry** %54, %struct.cache_entry*** %7, align 8
  %55 = load %struct.cache_entry*, %struct.cache_entry** %53, align 8
  store %struct.cache_entry* %55, %struct.cache_entry** %9, align 8
  %56 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %57 = call i64 @ce_stage(%struct.cache_entry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %158

60:                                               ; preds = %52
  %61 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISGITLINK(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %158

67:                                               ; preds = %60
  %68 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %69 = call i64 @ce_uptodate(%struct.cache_entry* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %158

72:                                               ; preds = %67
  %73 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %74 = call i64 @ce_skip_worktree(%struct.cache_entry* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %158

77:                                               ; preds = %72
  %78 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %158

85:                                               ; preds = %77
  %86 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %87 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %86, i32 0, i32 2
  %88 = load %struct.progress_data*, %struct.progress_data** %87, align 8
  %89 = icmp ne %struct.progress_data* %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, 31
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %90
  %95 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %96 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %95, i32 0, i32 2
  %97 = load %struct.progress_data*, %struct.progress_data** %96, align 8
  store %struct.progress_data* %97, %struct.progress_data** %11, align 8
  %98 = load %struct.progress_data*, %struct.progress_data** %11, align 8
  %99 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %98, i32 0, i32 1
  %100 = call i32 @pthread_mutex_lock(i32* %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.progress_data*, %struct.progress_data** %11, align 8
  %105 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.progress_data*, %struct.progress_data** %11, align 8
  %109 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.progress_data*, %struct.progress_data** %11, align 8
  %112 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @display_progress(i32 %110, i32 %113)
  %115 = load %struct.progress_data*, %struct.progress_data** %11, align 8
  %116 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %115, i32 0, i32 1
  %117 = call i32 @pthread_mutex_unlock(i32* %116)
  %118 = load i32, i32* %3, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %94, %90, %85
  %120 = load %struct.index_state*, %struct.index_state** %6, align 8
  %121 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %122 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %123 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %122, i32 0, i32 3
  %124 = call i32 @ce_path_match(%struct.index_state* %120, %struct.cache_entry* %121, i32* %123, i32* null)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %158

127:                                              ; preds = %119
  %128 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %129 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %132 = call i32 @ce_namelen(%struct.cache_entry* %131)
  %133 = call i64 @threaded_has_symlink_leading_path(%struct.cache_def* %8, i32 %130, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %158

136:                                              ; preds = %127
  %137 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %138 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @lstat(i32 %139, %struct.stat* %10)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %158

143:                                              ; preds = %136
  %144 = load %struct.index_state*, %struct.index_state** %6, align 8
  %145 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %146 = load i32, i32* @CE_MATCH_RACY_IS_DIRTY, align 4
  %147 = load i32, i32* @CE_MATCH_IGNORE_FSMONITOR, align 4
  %148 = or i32 %146, %147
  %149 = call i64 @ie_match_stat(%struct.index_state* %144, %struct.cache_entry* %145, %struct.stat* %10, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %158

152:                                              ; preds = %143
  %153 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %154 = call i32 @ce_mark_uptodate(%struct.cache_entry* %153)
  %155 = load %struct.index_state*, %struct.index_state** %6, align 8
  %156 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %157 = call i32 @mark_fsmonitor_valid(%struct.index_state* %155, %struct.cache_entry* %156)
  br label %158

158:                                              ; preds = %152, %151, %142, %135, %126, %84, %76, %71, %66, %59
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %3, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %52, label %162

162:                                              ; preds = %158
  %163 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %164 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %163, i32 0, i32 2
  %165 = load %struct.progress_data*, %struct.progress_data** %164, align 8
  %166 = icmp ne %struct.progress_data* %165, null
  br i1 %166, label %167, label %186

167:                                              ; preds = %162
  %168 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %169 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %168, i32 0, i32 2
  %170 = load %struct.progress_data*, %struct.progress_data** %169, align 8
  store %struct.progress_data* %170, %struct.progress_data** %12, align 8
  %171 = load %struct.progress_data*, %struct.progress_data** %12, align 8
  %172 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %171, i32 0, i32 1
  %173 = call i32 @pthread_mutex_lock(i32* %172)
  %174 = load %struct.progress_data*, %struct.progress_data** %12, align 8
  %175 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.progress_data*, %struct.progress_data** %12, align 8
  %178 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @display_progress(i32 %176, i32 %181)
  %183 = load %struct.progress_data*, %struct.progress_data** %12, align 8
  %184 = getelementptr inbounds %struct.progress_data, %struct.progress_data* %183, i32 0, i32 1
  %185 = call i32 @pthread_mutex_unlock(i32* %184)
  br label %186

186:                                              ; preds = %167, %162
  %187 = call i32 @cache_def_clear(%struct.cache_def* %8)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #2

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i64 @ce_uptodate(%struct.cache_entry*) #2

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @display_progress(i32, i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @ce_path_match(%struct.index_state*, %struct.cache_entry*, i32*, i32*) #2

declare dso_local i64 @threaded_has_symlink_leading_path(%struct.cache_def*, i32, i32) #2

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #2

declare dso_local i64 @lstat(i32, %struct.stat*) #2

declare dso_local i64 @ie_match_stat(%struct.index_state*, %struct.cache_entry*, %struct.stat*, i32) #2

declare dso_local i32 @ce_mark_uptodate(%struct.cache_entry*) #2

declare dso_local i32 @mark_fsmonitor_valid(%struct.index_state*, %struct.cache_entry*) #2

declare dso_local i32 @cache_def_clear(%struct.cache_def*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
