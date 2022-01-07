; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_dup_cache_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_dup_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_entry* @dup_cache_entry(%struct.cache_entry* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %8 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %9 = call i32 @ce_size(%struct.cache_entry* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %12 = call i32 @ce_namelen(%struct.cache_entry* %11)
  %13 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %10, i32 %12)
  store %struct.cache_entry* %13, %struct.cache_entry** %7, align 8
  %14 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %15 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @memcpy(%struct.cache_entry* %17, %struct.cache_entry* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  ret %struct.cache_entry* %24
}

declare dso_local i32 @ce_size(%struct.cache_entry*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @memcpy(%struct.cache_entry*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
