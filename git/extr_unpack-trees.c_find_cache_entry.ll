; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_find_cache_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_find_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.traverse_info = type { %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cache_entry** }
%struct.name_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.traverse_info*, %struct.name_entry*)* @find_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @find_cache_entry(%struct.traverse_info* %0, %struct.name_entry* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.traverse_info*, align 8
  %5 = alloca %struct.name_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.unpack_trees_options*, align 8
  store %struct.traverse_info* %0, %struct.traverse_info** %4, align 8
  store %struct.name_entry* %1, %struct.name_entry** %5, align 8
  %8 = load %struct.traverse_info*, %struct.traverse_info** %4, align 8
  %9 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %10 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %13 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @find_cache_pos(%struct.traverse_info* %8, i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.traverse_info*, %struct.traverse_info** %4, align 8
  %17 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %16, i32 0, i32 0
  %18 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %17, align 8
  store %struct.unpack_trees_options* %18, %struct.unpack_trees_options** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 0, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %23 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.cache_entry**, %struct.cache_entry*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %26, i64 %28
  %30 = load %struct.cache_entry*, %struct.cache_entry** %29, align 8
  store %struct.cache_entry* %30, %struct.cache_entry** %3, align 8
  br label %32

31:                                               ; preds = %2
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  br label %32

32:                                               ; preds = %31, %21
  %33 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  ret %struct.cache_entry* %33
}

declare dso_local i32 @find_cache_pos(%struct.traverse_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
