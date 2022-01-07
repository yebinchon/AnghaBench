; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_tree_entry_pathcmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_tree_entry_pathcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc = type { %struct.name_entry, i64 }
%struct.name_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_desc*, %struct.tree_desc*)* @tree_entry_pathcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_entry_pathcmp(%struct.tree_desc* %0, %struct.tree_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_desc*, align 8
  %5 = alloca %struct.tree_desc*, align 8
  %6 = alloca %struct.name_entry*, align 8
  %7 = alloca %struct.name_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.tree_desc* %0, %struct.tree_desc** %4, align 8
  store %struct.tree_desc* %1, %struct.tree_desc** %5, align 8
  %9 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %10 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %15 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %22 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %50

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %29 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %28, i32 0, i32 0
  store %struct.name_entry* %29, %struct.name_entry** %6, align 8
  %30 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %31 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %30, i32 0, i32 0
  store %struct.name_entry* %31, %struct.name_entry** %7, align 8
  %32 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %33 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %36 = call i32 @tree_entry_len(%struct.name_entry* %35)
  %37 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %38 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %41 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %44 = call i32 @tree_entry_len(%struct.name_entry* %43)
  %45 = load %struct.name_entry*, %struct.name_entry** %7, align 8
  %46 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @base_name_compare(i32 %34, i32 %36, i32 %39, i32 %42, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %27, %25, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @base_name_compare(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
