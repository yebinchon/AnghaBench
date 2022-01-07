; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_deleted_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_deleted_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32 }

@ERROR_WOULD_LOSE_UNTRACKED_REMOVED = common dso_local global i32 0, align 4
@CE_CONFLICTED = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.cache_entry*, %struct.unpack_trees_options*)* @deleted_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deleted_entry(%struct.cache_entry* %0, %struct.cache_entry* %1, %struct.unpack_trees_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.unpack_trees_options*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store %struct.unpack_trees_options* %2, %struct.unpack_trees_options** %7, align 8
  %8 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %9 = icmp ne %struct.cache_entry* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %12 = load i32, i32* @ERROR_WOULD_LOSE_UNTRACKED_REMOVED, align 4
  %13 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %14 = call i64 @verify_absent(%struct.cache_entry* %11, i32 %12, %struct.unpack_trees_options* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %39

17:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %20 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CE_CONFLICTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %27 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %28 = call i64 @verify_uptodate(%struct.cache_entry* %26, %struct.unpack_trees_options* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %39

31:                                               ; preds = %25, %18
  %32 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %33 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %34 = load i32, i32* @CE_REMOVE, align 4
  %35 = call i32 @add_entry(%struct.unpack_trees_options* %32, %struct.cache_entry* %33, i32 %34, i32 0)
  %36 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %37 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %38 = call i32 @invalidate_ce_path(%struct.cache_entry* %36, %struct.unpack_trees_options* %37)
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %30, %17, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @verify_absent(%struct.cache_entry*, i32, %struct.unpack_trees_options*) #1

declare dso_local i64 @verify_uptodate(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @add_entry(%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32) #1

declare dso_local i32 @invalidate_ce_path(%struct.cache_entry*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
