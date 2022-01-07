; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_remove_index_entry_at.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_remove_index_entry_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry**, i32 }
%struct.cache_entry = type { i32 }

@CE_ENTRY_REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_index_entry_at(%struct.index_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.index_state*, %struct.index_state** %4, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 1
  %9 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %9, i64 %11
  %13 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  store %struct.cache_entry* %13, %struct.cache_entry** %6, align 8
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %16 = call i32 @record_resolve_undo(%struct.index_state* %14, %struct.cache_entry* %15)
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %19 = call i32 @remove_name_hash(%struct.index_state* %17, %struct.cache_entry* %18)
  %20 = load %struct.index_state*, %struct.index_state** %4, align 8
  %21 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %22 = call i32 @save_or_free_index_entry(%struct.index_state* %20, %struct.cache_entry* %21)
  %23 = load i32, i32* @CE_ENTRY_REMOVED, align 4
  %24 = load %struct.index_state*, %struct.index_state** %4, align 8
  %25 = getelementptr inbounds %struct.index_state, %struct.index_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.index_state*, %struct.index_state** %4, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.index_state*, %struct.index_state** %4, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

38:                                               ; preds = %2
  %39 = load %struct.index_state*, %struct.index_state** %4, align 8
  %40 = getelementptr inbounds %struct.index_state, %struct.index_state* %39, i32 0, i32 1
  %41 = load %struct.cache_entry**, %struct.cache_entry*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %41, i64 %43
  %45 = load %struct.index_state*, %struct.index_state** %4, align 8
  %46 = getelementptr inbounds %struct.index_state, %struct.index_state* %45, i32 0, i32 1
  %47 = load %struct.cache_entry**, %struct.cache_entry*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %47, i64 %49
  %51 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %50, i64 1
  %52 = load %struct.index_state*, %struct.index_state** %4, align 8
  %53 = getelementptr inbounds %struct.index_state, %struct.index_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @MOVE_ARRAY(%struct.cache_entry** %44, %struct.cache_entry** %51, i32 %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %38, %37
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @record_resolve_undo(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @remove_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @save_or_free_index_entry(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @MOVE_ARRAY(%struct.cache_entry**, %struct.cache_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
