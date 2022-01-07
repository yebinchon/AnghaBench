; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_invalidate_ce_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_invalidate_ce_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, %struct.unpack_trees_options*)* @invalidate_ce_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_ce_path(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %5 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %6 = icmp ne %struct.cache_entry* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %23

8:                                                ; preds = %2
  %9 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %10 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %13 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cache_tree_invalidate_path(i32 %11, i32 %14)
  %16 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %17 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %20 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @untracked_cache_invalidate_path(i32 %18, i32 %21, i32 1)
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @cache_tree_invalidate_path(i32, i32) #1

declare dso_local i32 @untracked_cache_invalidate_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
