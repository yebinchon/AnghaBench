; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_remove_marked_cache_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_remove_marked_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

@CE_REMOVE = common dso_local global i32 0, align 4
@CE_ENTRY_REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_marked_cache_entries(%struct.index_state* %0, i32 %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.index_state*, %struct.index_state** %3, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 2
  %10 = load %struct.cache_entry**, %struct.cache_entry*** %9, align 8
  store %struct.cache_entry** %10, %struct.cache_entry*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %77, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.index_state*, %struct.index_state** %3, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %11
  %18 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %18, i64 %20
  %22 = load %struct.cache_entry*, %struct.cache_entry** %21, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CE_REMOVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.index_state*, %struct.index_state** %3, align 8
  %33 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %33, i64 %35
  %37 = load %struct.cache_entry*, %struct.cache_entry** %36, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cache_tree_invalidate_path(%struct.index_state* %32, i32 %39)
  %41 = load %struct.index_state*, %struct.index_state** %3, align 8
  %42 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %42, i64 %44
  %46 = load %struct.cache_entry*, %struct.cache_entry** %45, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @untracked_cache_remove_from_index(%struct.index_state* %41, i32 %48)
  br label %50

50:                                               ; preds = %31, %28
  %51 = load %struct.index_state*, %struct.index_state** %3, align 8
  %52 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %52, i64 %54
  %56 = load %struct.cache_entry*, %struct.cache_entry** %55, align 8
  %57 = call i32 @remove_name_hash(%struct.index_state* %51, %struct.cache_entry* %56)
  %58 = load %struct.index_state*, %struct.index_state** %3, align 8
  %59 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %59, i64 %61
  %63 = load %struct.cache_entry*, %struct.cache_entry** %62, align 8
  %64 = call i32 @save_or_free_index_entry(%struct.index_state* %58, %struct.cache_entry* %63)
  br label %76

65:                                               ; preds = %17
  %66 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %66, i64 %68
  %70 = load %struct.cache_entry*, %struct.cache_entry** %69, align 8
  %71 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %71, i64 %74
  store %struct.cache_entry* %70, %struct.cache_entry** %75, align 8
  br label %76

76:                                               ; preds = %65, %50
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %11

80:                                               ; preds = %11
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.index_state*, %struct.index_state** %3, align 8
  %83 = getelementptr inbounds %struct.index_state, %struct.index_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %96

87:                                               ; preds = %80
  %88 = load i32, i32* @CE_ENTRY_REMOVED, align 4
  %89 = load %struct.index_state*, %struct.index_state** %3, align 8
  %90 = getelementptr inbounds %struct.index_state, %struct.index_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.index_state*, %struct.index_state** %3, align 8
  %95 = getelementptr inbounds %struct.index_state, %struct.index_state* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %87, %86
  ret void
}

declare dso_local i32 @cache_tree_invalidate_path(%struct.index_state*, i32) #1

declare dso_local i32 @untracked_cache_remove_from_index(%struct.index_state*, i32) #1

declare dso_local i32 @remove_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @save_or_free_index_entry(%struct.index_state*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
