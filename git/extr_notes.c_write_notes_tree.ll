; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_write_notes_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_write_notes_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }
%struct.tree_write_stack = type { i8*, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.write_each_note_data = type { i32, %struct.tree_write_stack* }

@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@FOR_EACH_NOTE_DONT_UNPACK_SUBTREES = common dso_local global i32 0, align 4
@FOR_EACH_NOTE_YIELD_SUBTREES = common dso_local global i32 0, align 4
@write_each_note = common dso_local global i32 0, align 4
@tree_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_notes_tree(%struct.notes_tree* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.notes_tree*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.tree_write_stack, align 8
  %6 = alloca %struct.write_each_note_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.notes_tree* %0, %struct.notes_tree** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %9 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %10 = icmp ne %struct.notes_tree* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %3, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %14 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @assert(i32 %15)
  %17 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 32, %21
  %23 = mul nsw i32 256, %22
  %24 = call i32 @strbuf_init(%struct.TYPE_5__* %18, i32 %23)
  %25 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.write_each_note_data, %struct.write_each_note_data* %6, i32 0, i32 1
  store %struct.tree_write_stack* %5, %struct.tree_write_stack** %31, align 8
  %32 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %33 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.write_each_note_data, %struct.write_each_note_data* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @FOR_EACH_NOTE_DONT_UNPACK_SUBTREES, align 4
  %37 = load i32, i32* @FOR_EACH_NOTE_YIELD_SUBTREES, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.notes_tree*, %struct.notes_tree** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @write_each_note, align 4
  %42 = call i64 @for_each_note(%struct.notes_tree* %39, i32 %40, i32 %41, %struct.write_each_note_data* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %12
  %45 = call i64 @write_each_non_note_until(i32* null, %struct.write_each_note_data* %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = call i64 @tree_write_stack_finish_subtree(%struct.tree_write_stack* %5)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @tree_type, align 4
  %58 = load %struct.object_id*, %struct.object_id** %4, align 8
  %59 = call i64 @write_object_file(i32 %53, i32 %56, i32 %57, %struct.object_id* %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %50, %47, %44, %12
  %62 = phi i1 [ true, %47 ], [ true, %44 ], [ true, %12 ], [ %60, %50 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %5, i32 0, i32 1
  %65 = call i32 @strbuf_release(%struct.TYPE_5__* %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @for_each_note(%struct.notes_tree*, i32, i32, %struct.write_each_note_data*) #1

declare dso_local i64 @write_each_non_note_until(i32*, %struct.write_each_note_data*) #1

declare dso_local i64 @tree_write_stack_finish_subtree(%struct.tree_write_stack*) #1

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
