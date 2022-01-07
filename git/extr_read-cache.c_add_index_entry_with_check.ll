; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_add_index_entry_with_check.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_add_index_entry_with_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.cache_entry = type { i32, i32 }

@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@ADD_CACHE_SKIP_DFCHECK = common dso_local global i32 0, align 4
@ADD_CACHE_NEW_ONLY = common dso_local global i32 0, align 4
@ADD_CACHE_KEEP_CACHE_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid path '%s'\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"'%s' appears as both a file and as a directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, i32)* @add_index_entry_with_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_index_entry_with_check(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ADD_CACHE_SKIP_DFCHECK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ADD_CACHE_NEW_ONLY, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ADD_CACHE_KEEP_CACHE_TREE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = load %struct.index_state*, %struct.index_state** %5, align 8
  %31 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cache_tree_invalidate_path(%struct.index_state* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.index_state*, %struct.index_state** %5, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.index_state*, %struct.index_state** %5, align 8
  %45 = getelementptr inbounds %struct.index_state, %struct.index_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load %struct.index_state*, %struct.index_state** %5, align 8
  %48 = getelementptr inbounds %struct.index_state, %struct.index_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i32 %43, i32 %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.index_state*, %struct.index_state** %5, align 8
  %60 = getelementptr inbounds %struct.index_state, %struct.index_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @index_pos_to_insert_pos(i32 %61)
  store i32 %62, i32* %8, align 4
  br label %73

63:                                               ; preds = %40, %35
  %64 = load %struct.index_state*, %struct.index_state** %5, align 8
  %65 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %66 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %69 = call i32 @ce_namelen(%struct.cache_entry* %68)
  %70 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %71 = call i64 @ce_stage(%struct.cache_entry* %70)
  %72 = call i32 @index_name_stage_pos(%struct.index_state* %64, i32 %67, i32 %69, i64 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %63, %58
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load %struct.index_state*, %struct.index_state** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %83 = call i32 @replace_index_entry(%struct.index_state* %80, i32 %81, %struct.cache_entry* %82)
  br label %84

84:                                               ; preds = %79, %76
  store i32 0, i32* %4, align 4
  br label %183

85:                                               ; preds = %73
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 0, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ADD_CACHE_KEEP_CACHE_TREE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load %struct.index_state*, %struct.index_state** %5, align 8
  %95 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %96 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @untracked_cache_add_to_index(%struct.index_state* %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %85
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.index_state*, %struct.index_state** %5, align 8
  %102 = getelementptr inbounds %struct.index_state, %struct.index_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %99
  %106 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %107 = call i64 @ce_stage(%struct.cache_entry* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %127, %109
  %111 = load %struct.index_state*, %struct.index_state** %5, align 8
  %112 = getelementptr inbounds %struct.index_state, %struct.index_state* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %113, i64 %115
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %119 = call i64 @ce_same_name(%struct.TYPE_2__* %117, %struct.cache_entry* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  store i32 1, i32* %9, align 4
  %122 = load %struct.index_state*, %struct.index_state** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @remove_index_entry_at(%struct.index_state* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %128

127:                                              ; preds = %121
  br label %110

128:                                              ; preds = %126, %110
  br label %129

129:                                              ; preds = %128, %105, %99
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %183

133:                                              ; preds = %129
  %134 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %135 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %138 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @verify_path(i32 %136, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %144 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %145 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @error(i32 %143, i32 %146)
  store i32 %147, i32* %4, align 4
  br label %183

148:                                              ; preds = %133
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %180, label %151

151:                                              ; preds = %148
  %152 = load %struct.index_state*, %struct.index_state** %5, align 8
  %153 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @check_file_directory_conflict(%struct.index_state* %152, %struct.cache_entry* %153, i32 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %151
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %163 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %164 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @error(i32 %162, i32 %165)
  store i32 %166, i32* %4, align 4
  br label %183

167:                                              ; preds = %158
  %168 = load %struct.index_state*, %struct.index_state** %5, align 8
  %169 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %170 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %173 = call i32 @ce_namelen(%struct.cache_entry* %172)
  %174 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %175 = call i64 @ce_stage(%struct.cache_entry* %174)
  %176 = call i32 @index_name_stage_pos(%struct.index_state* %168, i32 %171, i32 %173, i64 %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 0, %177
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %167, %151, %148
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %161, %142, %132, %84
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @cache_tree_invalidate_path(%struct.index_state*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @index_pos_to_insert_pos(i32) #1

declare dso_local i32 @index_name_stage_pos(%struct.index_state*, i32, i32, i64) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @replace_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

declare dso_local i32 @untracked_cache_add_to_index(%struct.index_state*, i32) #1

declare dso_local i64 @ce_same_name(%struct.TYPE_2__*, %struct.cache_entry*) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

declare dso_local i32 @verify_path(i32, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @check_file_directory_conflict(%struct.index_state*, %struct.cache_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
