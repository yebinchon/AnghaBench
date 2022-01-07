; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_copy_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_copy_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.notes_tree = type { i32 }

@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_note(%struct.notes_tree* %0, %struct.object_id* %1, %struct.object_id* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.notes_tree*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_id*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %15 = load %struct.object_id*, %struct.object_id** %8, align 8
  %16 = call %struct.object_id* @get_note(%struct.notes_tree* %14, %struct.object_id* %15)
  store %struct.object_id* %16, %struct.object_id** %12, align 8
  %17 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %18 = load %struct.object_id*, %struct.object_id** %9, align 8
  %19 = call %struct.object_id* @get_note(%struct.notes_tree* %17, %struct.object_id* %18)
  store %struct.object_id* %19, %struct.object_id** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load %struct.object_id*, %struct.object_id** %13, align 8
  %24 = icmp ne %struct.object_id* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %45

26:                                               ; preds = %22, %5
  %27 = load %struct.object_id*, %struct.object_id** %12, align 8
  %28 = icmp ne %struct.object_id* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %31 = load %struct.object_id*, %struct.object_id** %9, align 8
  %32 = load %struct.object_id*, %struct.object_id** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @add_note(%struct.notes_tree* %30, %struct.object_id* %31, %struct.object_id* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.object_id*, %struct.object_id** %13, align 8
  %37 = icmp ne %struct.object_id* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %40 = load %struct.object_id*, %struct.object_id** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @add_note(%struct.notes_tree* %39, %struct.object_id* %40, %struct.object_id* @null_oid, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38, %29, %25
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.object_id* @get_note(%struct.notes_tree*, %struct.object_id*) #1

declare dso_local i32 @add_note(%struct.notes_tree*, %struct.object_id*, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
