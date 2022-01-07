; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_new_tree_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_new_tree_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_entry = type { i32 }

@avail_tree_entry = common dso_local global %struct.tree_entry* null, align 8
@tree_entry_alloc = common dso_local global i32 0, align 4
@tree_entry_allocd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree_entry* ()* @new_tree_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree_entry* @new_tree_entry() #0 {
  %1 = alloca %struct.tree_entry*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.tree_entry*, %struct.tree_entry** @avail_tree_entry, align 8
  %4 = icmp ne %struct.tree_entry* %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @tree_entry_alloc, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = load i32, i32* @tree_entry_allocd, align 4
  %11 = zext i32 %10 to i64
  %12 = add i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @tree_entry_allocd, align 4
  %14 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ALLOC_ARRAY(%struct.tree_entry* %14, i32 %15)
  %17 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  store %struct.tree_entry* %17, %struct.tree_entry** @avail_tree_entry, align 8
  br label %18

18:                                               ; preds = %22, %5
  %19 = load i32, i32* %2, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %2, align 4
  %21 = icmp ugt i32 %19, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  %24 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %23, i64 1
  %25 = bitcast %struct.tree_entry* %24 to i8*
  %26 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  %27 = bitcast %struct.tree_entry* %26 to i8**
  store i8* %25, i8** %27, align 8
  %28 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  %29 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %28, i32 1
  store %struct.tree_entry* %29, %struct.tree_entry** %1, align 8
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  %32 = bitcast %struct.tree_entry* %31 to i8**
  store i8* null, i8** %32, align 8
  br label %33

33:                                               ; preds = %30, %0
  %34 = load %struct.tree_entry*, %struct.tree_entry** @avail_tree_entry, align 8
  store %struct.tree_entry* %34, %struct.tree_entry** %1, align 8
  %35 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  %36 = bitcast %struct.tree_entry* %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.tree_entry*
  store %struct.tree_entry* %38, %struct.tree_entry** @avail_tree_entry, align 8
  %39 = load %struct.tree_entry*, %struct.tree_entry** %1, align 8
  ret %struct.tree_entry* %39
}

declare dso_local i32 @ALLOC_ARRAY(%struct.tree_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
