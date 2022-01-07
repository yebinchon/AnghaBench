; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_populate_worktree_map.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_populate_worktree_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.worktree = type { i64 }
%struct.ref_to_worktree_entry = type { i32, %struct.worktree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, %struct.worktree**)* @populate_worktree_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_worktree_map(%struct.hashmap* %0, %struct.worktree** %1) #0 {
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca %struct.worktree**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_to_worktree_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  store %struct.worktree** %1, %struct.worktree*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %48, %2
  %8 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.worktree*, %struct.worktree** %8, i64 %10
  %12 = load %struct.worktree*, %struct.worktree** %11, align 8
  %13 = icmp ne %struct.worktree* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %7
  %15 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.worktree*, %struct.worktree** %15, i64 %17
  %19 = load %struct.worktree*, %struct.worktree** %18, align 8
  %20 = getelementptr inbounds %struct.worktree, %struct.worktree* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %14
  %24 = call %struct.ref_to_worktree_entry* @xmalloc(i32 16)
  store %struct.ref_to_worktree_entry* %24, %struct.ref_to_worktree_entry** %6, align 8
  %25 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.worktree*, %struct.worktree** %25, i64 %27
  %29 = load %struct.worktree*, %struct.worktree** %28, align 8
  %30 = load %struct.ref_to_worktree_entry*, %struct.ref_to_worktree_entry** %6, align 8
  %31 = getelementptr inbounds %struct.ref_to_worktree_entry, %struct.ref_to_worktree_entry* %30, i32 0, i32 1
  store %struct.worktree* %29, %struct.worktree** %31, align 8
  %32 = load %struct.ref_to_worktree_entry*, %struct.ref_to_worktree_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ref_to_worktree_entry, %struct.ref_to_worktree_entry* %32, i32 0, i32 0
  %34 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.worktree*, %struct.worktree** %34, i64 %36
  %38 = load %struct.worktree*, %struct.worktree** %37, align 8
  %39 = getelementptr inbounds %struct.worktree, %struct.worktree* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @strhash(i64 %40)
  %42 = call i32 @hashmap_entry_init(i32* %33, i32 %41)
  %43 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %44 = load %struct.ref_to_worktree_entry*, %struct.ref_to_worktree_entry** %6, align 8
  %45 = getelementptr inbounds %struct.ref_to_worktree_entry, %struct.ref_to_worktree_entry* %44, i32 0, i32 0
  %46 = call i32 @hashmap_add(%struct.hashmap* %43, i32* %45)
  br label %47

47:                                               ; preds = %23, %14
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %7

51:                                               ; preds = %7
  ret void
}

declare dso_local %struct.ref_to_worktree_entry* @xmalloc(i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i64) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
