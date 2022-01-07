; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_next_cache_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_next_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32, %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }

@CE_UNPACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.unpack_trees_options*)* @next_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @next_cache_entry(%struct.unpack_trees_options* %0) #0 {
  %2 = alloca %struct.cache_entry*, align 8
  %3 = alloca %struct.unpack_trees_options*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %3, align 8
  %7 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %8 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %7, i32 0, i32 1
  %9 = load %struct.index_state*, %struct.index_state** %8, align 8
  store %struct.index_state* %9, %struct.index_state** %4, align 8
  %10 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %11 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %35, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.index_state*, %struct.index_state** %4, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.index_state*, %struct.index_state** %4, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 1
  %22 = load %struct.cache_entry**, %struct.cache_entry*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %22, i64 %24
  %26 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  store %struct.cache_entry* %26, %struct.cache_entry** %6, align 8
  %27 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CE_UNPACKED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  store %struct.cache_entry* %34, %struct.cache_entry** %2, align 8
  br label %39

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %13

38:                                               ; preds = %13
  store %struct.cache_entry* null, %struct.cache_entry** %2, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  ret %struct.cache_entry* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
