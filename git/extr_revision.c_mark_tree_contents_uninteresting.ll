; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_tree_contents_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_tree_contents_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.tree*)* @mark_tree_contents_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_tree_contents_uninteresting(%struct.repository* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree_desc, align 4
  %6 = alloca %struct.name_entry, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.tree* %1, %struct.tree** %4, align 8
  %7 = load %struct.tree*, %struct.tree** %4, align 8
  %8 = call i64 @parse_tree_gently(%struct.tree* %7, i32 1)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.tree*, %struct.tree** %4, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tree*, %struct.tree** %4, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @init_tree_desc(%struct.tree_desc* %5, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %38, %11
  %20 = call i64 @tree_entry(%struct.tree_desc* %5, %struct.name_entry* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @object_type(i32 %24)
  switch i32 %25, label %37 [
    i32 128, label %26
    i32 129, label %32
  ]

26:                                               ; preds = %22
  %27 = load %struct.repository*, %struct.repository** %3, align 8
  %28 = load %struct.repository*, %struct.repository** %3, align 8
  %29 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %6, i32 0, i32 0
  %30 = call i32 @lookup_tree(%struct.repository* %28, i32* %29)
  %31 = call i32 @mark_tree_uninteresting(%struct.repository* %27, i32 %30)
  br label %38

32:                                               ; preds = %22
  %33 = load %struct.repository*, %struct.repository** %3, align 8
  %34 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %6, i32 0, i32 0
  %35 = call i32 @lookup_blob(%struct.repository* %33, i32* %34)
  %36 = call i32 @mark_blob_uninteresting(i32 %35)
  br label %38

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %32, %26
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.tree*, %struct.tree** %4, align 8
  %41 = call i32 @free_tree_buffer(%struct.tree* %40)
  br label %42

42:                                               ; preds = %39, %10
  ret void
}

declare dso_local i64 @parse_tree_gently(%struct.tree*, i32) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @object_type(i32) #1

declare dso_local i32 @mark_tree_uninteresting(%struct.repository*, i32) #1

declare dso_local i32 @lookup_tree(%struct.repository*, i32*) #1

declare dso_local i32 @mark_blob_uninteresting(i32) #1

declare dso_local i32 @lookup_blob(%struct.repository*, i32*) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
