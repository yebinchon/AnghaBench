; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_apply_sparse_checkout.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_apply_sparse_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32 }

@CE_NEW_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_ENTRY_CHANGED = common dso_local global i32 0, align 4
@CE_UPDATE = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@CE_WT_REMOVE = common dso_local global i32 0, align 4
@ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, %struct.unpack_trees_options*)* @apply_sparse_checkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_sparse_checkout(%struct.index_state* %0, %struct.cache_entry* %1, %struct.unpack_trees_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.unpack_trees_options*, align 8
  %8 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store %struct.unpack_trees_options* %2, %struct.unpack_trees_options** %7, align 8
  %9 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %10 = call i32 @ce_skip_worktree(%struct.cache_entry* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %12 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CE_NEW_SKIP_WORKTREE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %19 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %20 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %33 = call i32 @ce_skip_worktree(%struct.cache_entry* %32)
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %37 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.index_state*, %struct.index_state** %5, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %43 = call i32 @mark_fsmonitor_invalid(%struct.index_state* %41, %struct.cache_entry* %42)
  %44 = load i32, i32* @CE_ENTRY_CHANGED, align 4
  %45 = load %struct.index_state*, %struct.index_state** %5, align 8
  %46 = getelementptr inbounds %struct.index_state, %struct.index_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %35, %30
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %54 = call i32 @ce_skip_worktree(%struct.cache_entry* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* @CE_UPDATE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CE_REMOVE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load i32, i32* @CE_WT_REMOVE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %73 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %56
  br label %77

77:                                               ; preds = %76, %52, %49
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %77
  %81 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %82 = call i32 @ce_skip_worktree(%struct.cache_entry* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %80
  %85 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %86 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CE_UPDATE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %93 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %94 = call i64 @verify_uptodate_sparse(%struct.cache_entry* %92, %struct.unpack_trees_options* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 -1, i32* %4, align 4
  br label %130

97:                                               ; preds = %91, %84
  %98 = load i32, i32* @CE_WT_REMOVE, align 4
  %99 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %100 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @CE_UPDATE, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %106 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %97, %80, %77
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %114 = call i32 @ce_skip_worktree(%struct.cache_entry* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %112
  %117 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %118 = load i32, i32* @ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, align 4
  %119 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %120 = call i64 @verify_absent_sparse(%struct.cache_entry* %117, i32 %118, %struct.unpack_trees_options* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 -1, i32* %4, align 4
  br label %130

123:                                              ; preds = %116
  %124 = load i32, i32* @CE_UPDATE, align 4
  %125 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %126 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %112, %109
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %122, %96
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i32 @mark_fsmonitor_invalid(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i64 @verify_uptodate_sparse(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i64 @verify_absent_sparse(%struct.cache_entry*, i32, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
