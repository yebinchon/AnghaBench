; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_get_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_get_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.leaf_node = type { %struct.object_id }

@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object_id* @get_note(%struct.notes_tree* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.notes_tree*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.leaf_node*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %6 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %7 = icmp ne %struct.notes_tree* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %3, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %11 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %15 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %16 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.object_id*, %struct.object_id** %4, align 8
  %19 = getelementptr inbounds %struct.object_id, %struct.object_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.leaf_node* @note_tree_find(%struct.notes_tree* %14, i32 %17, i32 0, i32 %20)
  store %struct.leaf_node* %21, %struct.leaf_node** %5, align 8
  %22 = load %struct.leaf_node*, %struct.leaf_node** %5, align 8
  %23 = icmp ne %struct.leaf_node* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load %struct.leaf_node*, %struct.leaf_node** %5, align 8
  %26 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %25, i32 0, i32 0
  br label %28

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.object_id* [ %26, %24 ], [ null, %27 ]
  ret %struct.object_id* %29
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.leaf_node* @note_tree_find(%struct.notes_tree*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
