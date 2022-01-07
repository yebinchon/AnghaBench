; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_all_trees_same_as_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_all_trees_same_as_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_entry = type { i32 }
%struct.traverse_info = type { %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.name_entry*, %struct.traverse_info*)* @all_trees_same_as_cache_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @all_trees_same_as_cache_tree(i32 %0, i64 %1, %struct.name_entry* %2, %struct.traverse_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.name_entry*, align 8
  %9 = alloca %struct.traverse_info*, align 8
  %10 = alloca %struct.unpack_trees_options*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.name_entry* %2, %struct.name_entry** %8, align 8
  store %struct.traverse_info* %3, %struct.traverse_info** %9, align 8
  %12 = load %struct.traverse_info*, %struct.traverse_info** %9, align 8
  %13 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 0
  %14 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %13, align 8
  store %struct.unpack_trees_options* %14, %struct.unpack_trees_options** %10, align 8
  %15 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %10, align 8
  %16 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %4
  store i32 0, i32* %5, align 4
  br label %54

27:                                               ; preds = %19
  store i32 1, i32* %11, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %34 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %34, i64 %36
  %38 = call i32 @are_same_oid(%struct.name_entry* %33, %struct.name_entry* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %54

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %10, align 8
  %47 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %52 = load %struct.traverse_info*, %struct.traverse_info** %9, align 8
  %53 = call i32 @cache_tree_matches_traversal(i32 %50, %struct.name_entry* %51, %struct.traverse_info* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %45, %40, %26
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @are_same_oid(%struct.name_entry*, %struct.name_entry*) #1

declare dso_local i32 @cache_tree_matches_traversal(i32, %struct.name_entry*, %struct.traverse_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
