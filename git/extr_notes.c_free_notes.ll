; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_free_notes.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_free_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__* }

@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_notes(%struct.notes_tree* %0) #0 {
  %2 = alloca %struct.notes_tree*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %2, align 8
  %3 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %4 = icmp ne %struct.notes_tree* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  %7 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %8 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %13 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @note_tree_free(%struct.TYPE_3__* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %18 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_3__* %19)
  br label %21

21:                                               ; preds = %26, %16
  %22 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %23 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %28 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %33 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %32, i32 0, i32 1
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %35 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @free(%struct.TYPE_3__* %38)
  %40 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %41 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @free(%struct.TYPE_3__* %42)
  %44 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %45 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %48 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %47, i32 0, i32 2
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %51 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @free(%struct.TYPE_3__* %52)
  %54 = load %struct.notes_tree*, %struct.notes_tree** %2, align 8
  %55 = call i32 @memset(%struct.notes_tree* %54, i32 0, i32 32)
  ret void
}

declare dso_local i32 @note_tree_free(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.notes_tree*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
