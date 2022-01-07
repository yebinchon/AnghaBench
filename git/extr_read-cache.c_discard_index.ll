; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_discard_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_discard_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32*, i32*, i64, i32, i64, i64, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @discard_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %3 = load %struct.index_state*, %struct.index_state** %2, align 8
  %4 = call i32 @validate_cache_entries(%struct.index_state* %3)
  %5 = load %struct.index_state*, %struct.index_state** %2, align 8
  %6 = call i32 @resolve_undo_clear_index(%struct.index_state* %5)
  %7 = load %struct.index_state*, %struct.index_state** %2, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 9
  store i64 0, i64* %8, align 8
  %9 = load %struct.index_state*, %struct.index_state** %2, align 8
  %10 = getelementptr inbounds %struct.index_state, %struct.index_state* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.index_state*, %struct.index_state** %2, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.index_state*, %struct.index_state** %2, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.index_state*, %struct.index_state** %2, align 8
  %18 = call i32 @free_name_hash(%struct.index_state* %17)
  %19 = load %struct.index_state*, %struct.index_state** %2, align 8
  %20 = getelementptr inbounds %struct.index_state, %struct.index_state* %19, i32 0, i32 6
  %21 = call i32 @cache_tree_free(i32* %20)
  %22 = load %struct.index_state*, %struct.index_state** %2, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.index_state*, %struct.index_state** %2, align 8
  %25 = getelementptr inbounds %struct.index_state, %struct.index_state* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.index_state*, %struct.index_state** %2, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @FREE_AND_NULL(i32 %28)
  %30 = load %struct.index_state*, %struct.index_state** %2, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.index_state*, %struct.index_state** %2, align 8
  %33 = call i32 @discard_split_index(%struct.index_state* %32)
  %34 = load %struct.index_state*, %struct.index_state** %2, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @free_untracked_cache(i32* %36)
  %38 = load %struct.index_state*, %struct.index_state** %2, align 8
  %39 = getelementptr inbounds %struct.index_state, %struct.index_state* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.index_state*, %struct.index_state** %2, align 8
  %41 = getelementptr inbounds %struct.index_state, %struct.index_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %1
  %45 = load %struct.index_state*, %struct.index_state** %2, align 8
  %46 = getelementptr inbounds %struct.index_state, %struct.index_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 (...) @should_validate_cache_entries()
  %49 = call i32 @mem_pool_discard(i32* %47, i32 %48)
  %50 = load %struct.index_state*, %struct.index_state** %2, align 8
  %51 = getelementptr inbounds %struct.index_state, %struct.index_state* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %1
  ret i32 0
}

declare dso_local i32 @validate_cache_entries(%struct.index_state*) #1

declare dso_local i32 @resolve_undo_clear_index(%struct.index_state*) #1

declare dso_local i32 @free_name_hash(%struct.index_state*) #1

declare dso_local i32 @cache_tree_free(i32*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

declare dso_local i32 @discard_split_index(%struct.index_state*) #1

declare dso_local i32 @free_untracked_cache(i32*) #1

declare dso_local i32 @mem_pool_discard(i32*, i32) #1

declare dso_local i32 @should_validate_cache_entries(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
