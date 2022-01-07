; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ie_match_stat.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ie_match_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }

@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_MATCH_RACY_IS_DIRTY = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_FSMONITOR = common dso_local global i32 0, align 4
@CE_VALID = common dso_local global i32 0, align 4
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4
@TYPE_CHANGED = common dso_local global i32 0, align 4
@MODE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ie_match_stat(%struct.index_state* %0, %struct.cache_entry* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @CE_MATCH_RACY_IS_DIRTY, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CE_MATCH_IGNORE_FSMONITOR, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load %struct.index_state*, %struct.index_state** %6, align 8
  %31 = call i32 @refresh_fsmonitor(%struct.index_state* %30)
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %37 = call i64 @ce_skip_worktree(%struct.cache_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %100

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CE_VALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %100

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %100

62:                                               ; preds = %54, %51
  %63 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %64 = call i64 @ce_intent_to_add(%struct.cache_entry* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @DATA_CHANGED, align 4
  %68 = load i32, i32* @TYPE_CHANGED, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MODE_CHANGED, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %5, align 4
  br label %100

72:                                               ; preds = %62
  %73 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %74 = load %struct.stat*, %struct.stat** %8, align 8
  %75 = call i32 @ce_match_stat_basic(%struct.cache_entry* %73, %struct.stat* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %72
  %79 = load %struct.index_state*, %struct.index_state** %6, align 8
  %80 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %81 = call i64 @is_racy_timestamp(%struct.index_state* %79, %struct.cache_entry* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @DATA_CHANGED, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %97

90:                                               ; preds = %83
  %91 = load %struct.index_state*, %struct.index_state** %6, align 8
  %92 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %93 = load %struct.stat*, %struct.stat** %8, align 8
  %94 = call i32 @ce_modified_check_fs(%struct.index_state* %91, %struct.cache_entry* %92, %struct.stat* %93)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %90, %86
  br label %98

98:                                               ; preds = %97, %78, %72
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %66, %61, %50, %39
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @refresh_fsmonitor(%struct.index_state*) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @ce_intent_to_add(%struct.cache_entry*) #1

declare dso_local i32 @ce_match_stat_basic(%struct.cache_entry*, %struct.stat*) #1

declare dso_local i64 @is_racy_timestamp(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @ce_modified_check_fs(%struct.index_state*, %struct.cache_entry*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
