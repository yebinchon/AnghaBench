; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_chmod_index_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_chmod_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32, i32 }

@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_ENTRY_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chmod_index_entry(%struct.index_state* %0, %struct.cache_entry* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i8, align 1
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i8 %2, i8* %7, align 1
  %8 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %9 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @S_ISREG(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load i8, i8* %7, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %27 [
    i32 43, label %17
    i32 45, label %22
  ]

17:                                               ; preds = %14
  %18 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %19 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 73
  store i32 %21, i32* %19, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -74
  store i32 %26, i32* %24, align 4
  br label %28

27:                                               ; preds = %14
  store i32 -2, i32* %4, align 4
  br label %47

28:                                               ; preds = %22, %17
  %29 = load %struct.index_state*, %struct.index_state** %5, align 8
  %30 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %31 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cache_tree_invalidate_path(%struct.index_state* %29, i32 %32)
  %34 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %35 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.index_state*, %struct.index_state** %5, align 8
  %40 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %41 = call i32 @mark_fsmonitor_invalid(%struct.index_state* %39, %struct.cache_entry* %40)
  %42 = load i32, i32* @CE_ENTRY_CHANGED, align 4
  %43 = load %struct.index_state*, %struct.index_state** %5, align 8
  %44 = getelementptr inbounds %struct.index_state, %struct.index_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %28, %27, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @cache_tree_invalidate_path(%struct.index_state*, i32) #1

declare dso_local i32 @mark_fsmonitor_invalid(%struct.index_state*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
