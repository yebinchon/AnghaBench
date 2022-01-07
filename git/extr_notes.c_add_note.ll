; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_add_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_add_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32, i32, i64, i32 }
%struct.object_id = type { i32 }
%struct.leaf_node = type { i32, i32 }

@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 8
@PTR_TYPE_NOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_note(%struct.notes_tree* %0, %struct.object_id* %1, %struct.object_id* %2, i64 %3) #0 {
  %5 = alloca %struct.notes_tree*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.leaf_node*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %11 = icmp ne %struct.notes_tree* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %5, align 8
  br label %13

13:                                               ; preds = %12, %4
  %14 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %15 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %19 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %24 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %22, %13
  %27 = call i64 @xmalloc(i32 8)
  %28 = inttoptr i64 %27 to %struct.leaf_node*
  store %struct.leaf_node* %28, %struct.leaf_node** %9, align 8
  %29 = load %struct.leaf_node*, %struct.leaf_node** %9, align 8
  %30 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %29, i32 0, i32 1
  %31 = load %struct.object_id*, %struct.object_id** %6, align 8
  %32 = call i32 @oidcpy(i32* %30, %struct.object_id* %31)
  %33 = load %struct.leaf_node*, %struct.leaf_node** %9, align 8
  %34 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %33, i32 0, i32 0
  %35 = load %struct.object_id*, %struct.object_id** %7, align 8
  %36 = call i32 @oidcpy(i32* %34, %struct.object_id* %35)
  %37 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %38 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %39 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.leaf_node*, %struct.leaf_node** %9, align 8
  %42 = load i32, i32* @PTR_TYPE_NOTE, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @note_tree_insert(%struct.notes_tree* %37, i32 %40, i32 0, %struct.leaf_node* %41, i32 %42, i64 %43)
  ret i32 %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @note_tree_insert(%struct.notes_tree*, i32, i32, %struct.leaf_node*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
