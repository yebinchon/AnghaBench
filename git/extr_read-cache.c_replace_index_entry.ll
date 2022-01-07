; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_replace_index_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_replace_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@CE_HASHED = common dso_local global i32 0, align 4
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_ENTRY_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i32, %struct.cache_entry*)* @replace_index_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_index_entry(%struct.index_state* %0, i32 %1, %struct.cache_entry* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %8 = load %struct.index_state*, %struct.index_state** %4, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 1
  %10 = load %struct.cache_entry**, %struct.cache_entry*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %10, i64 %12
  %14 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  store %struct.cache_entry* %14, %struct.cache_entry** %7, align 8
  %15 = load %struct.index_state*, %struct.index_state** %4, align 8
  %16 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %17 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %18 = call i32 @replace_index_entry_in_base(%struct.index_state* %15, %struct.cache_entry* %16, %struct.cache_entry* %17)
  %19 = load %struct.index_state*, %struct.index_state** %4, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %21 = call i32 @remove_name_hash(%struct.index_state* %19, %struct.cache_entry* %20)
  %22 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %23 = call i32 @discard_cache_entry(%struct.cache_entry* %22)
  %24 = load i32, i32* @CE_HASHED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.index_state*, %struct.index_state** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %33 = call i32 @set_index_entry(%struct.index_state* %30, i32 %31, %struct.cache_entry* %32)
  %34 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %35 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.index_state*, %struct.index_state** %4, align 8
  %40 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %41 = call i32 @mark_fsmonitor_invalid(%struct.index_state* %39, %struct.cache_entry* %40)
  %42 = load i32, i32* @CE_ENTRY_CHANGED, align 4
  %43 = load %struct.index_state*, %struct.index_state** %4, align 8
  %44 = getelementptr inbounds %struct.index_state, %struct.index_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  ret void
}

declare dso_local i32 @replace_index_entry_in_base(%struct.index_state*, %struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @remove_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i32 @set_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

declare dso_local i32 @mark_fsmonitor_invalid(%struct.index_state*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
