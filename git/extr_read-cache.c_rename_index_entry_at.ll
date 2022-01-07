; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_rename_index_entry_at.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_rename_index_entry_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i64, i32 }

@CE_HASHED = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rename_index_entry_at(%struct.index_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  %12 = load %struct.cache_entry**, %struct.cache_entry*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %12, i64 %14
  %16 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  store %struct.cache_entry* %16, %struct.cache_entry** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.index_state*, %struct.index_state** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %19, i32 %20)
  store %struct.cache_entry* %21, %struct.cache_entry** %8, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %23 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %24 = call i32 @copy_cache_entry(%struct.cache_entry* %22, %struct.cache_entry* %23)
  %25 = load i32, i32* @CE_HASHED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %35 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @memcpy(i32 %38, i8* %39, i32 %41)
  %43 = load %struct.index_state*, %struct.index_state** %4, align 8
  %44 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cache_tree_invalidate_path(%struct.index_state* %43, i32 %46)
  %48 = load %struct.index_state*, %struct.index_state** %4, align 8
  %49 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %50 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @untracked_cache_remove_from_index(%struct.index_state* %48, i32 %51)
  %53 = load %struct.index_state*, %struct.index_state** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @remove_index_entry_at(%struct.index_state* %53, i32 %54)
  %56 = load %struct.index_state*, %struct.index_state** %4, align 8
  %57 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %58 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %59 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @add_index_entry(%struct.index_state* %56, %struct.cache_entry* %57, i32 %60)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @copy_cache_entry(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cache_tree_invalidate_path(%struct.index_state*, i32) #1

declare dso_local i32 @untracked_cache_remove_from_index(%struct.index_state*, i32) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

declare dso_local i32 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
