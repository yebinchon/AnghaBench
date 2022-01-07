; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_create_ce_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_create_ce_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i64, i32, i32, i32, i32 }
%struct.traverse_info = type { i32 }
%struct.name_entry = type { i32, i32, i32, i32 }
%struct.index_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.traverse_info*, %struct.name_entry*, i32, %struct.index_state*, i32)* @create_ce_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @create_ce_entry(%struct.traverse_info* %0, %struct.name_entry* %1, i32 %2, %struct.index_state* %3, i32 %4) #0 {
  %6 = alloca %struct.traverse_info*, align 8
  %7 = alloca %struct.name_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.cache_entry*, align 8
  store %struct.traverse_info* %0, %struct.traverse_info** %6, align 8
  store %struct.name_entry* %1, %struct.name_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.index_state* %3, %struct.index_state** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.traverse_info*, %struct.traverse_info** %6, align 8
  %14 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %15 = call i32 @tree_entry_len(%struct.name_entry* %14)
  %16 = call i64 @traverse_path_len(%struct.traverse_info* %13, i32 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = call %struct.cache_entry* @make_empty_transient_cache_entry(i64 %20)
  br label %26

22:                                               ; preds = %5
  %23 = load %struct.index_state*, %struct.index_state** %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi %struct.cache_entry* [ %21, %19 ], [ %25, %22 ]
  store %struct.cache_entry* %27, %struct.cache_entry** %12, align 8
  %28 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %29 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @create_ce_mode(i32 %30)
  %32 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @create_ce_flags(i32 %34)
  %36 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 2
  %43 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %44 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %43, i32 0, i32 2
  %45 = call i32 @oidcpy(i32* %42, i32* %44)
  %46 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  %51 = load %struct.traverse_info*, %struct.traverse_info** %6, align 8
  %52 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %53 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %56 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @make_traverse_path(i32 %48, i64 %50, %struct.traverse_info* %51, i32 %54, i32 %57)
  %59 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  ret %struct.cache_entry* %59
}

declare dso_local i64 @traverse_path_len(%struct.traverse_info*, i32) #1

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #1

declare dso_local %struct.cache_entry* @make_empty_transient_cache_entry(i64) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i64) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @make_traverse_path(i32, i64, %struct.traverse_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
