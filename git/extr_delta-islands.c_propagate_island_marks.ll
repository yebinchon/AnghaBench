; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_propagate_island_marks.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_propagate_island_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list*, %struct.TYPE_5__ }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.island_bitmap = type { i32 }
%struct.TYPE_6__ = type { i32 }

@island_marks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @propagate_island_marks(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.island_bitmap*, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  %6 = load i32, i32* @island_marks, align 4
  %7 = load %struct.commit*, %struct.commit** %2, align 8
  %8 = getelementptr inbounds %struct.commit, %struct.commit* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @kh_get_oid_map(i32 %6, i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @island_marks, align 4
  %14 = call i64 @kh_end(i32 %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load i32, i32* @island_marks, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call %struct.island_bitmap* @kh_value(i32 %17, i64 %18)
  store %struct.island_bitmap* %19, %struct.island_bitmap** %5, align 8
  %20 = load %struct.commit*, %struct.commit** %2, align 8
  %21 = call i32 @parse_commit(%struct.commit* %20)
  %22 = load %struct.commit*, %struct.commit** %2, align 8
  %23 = call %struct.TYPE_6__* @get_commit_tree(%struct.commit* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.island_bitmap*, %struct.island_bitmap** %5, align 8
  %26 = call i32 @set_island_marks(i32* %24, %struct.island_bitmap* %25)
  %27 = load %struct.commit*, %struct.commit** %2, align 8
  %28 = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 0
  %29 = load %struct.commit_list*, %struct.commit_list** %28, align 8
  store %struct.commit_list* %29, %struct.commit_list** %4, align 8
  br label %30

30:                                               ; preds = %40, %16
  %31 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %32 = icmp ne %struct.commit_list* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %35 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.island_bitmap*, %struct.island_bitmap** %5, align 8
  %39 = call i32 @set_island_marks(i32* %37, %struct.island_bitmap* %38)
  br label %40

40:                                               ; preds = %33
  %41 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %42 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %41, i32 0, i32 1
  %43 = load %struct.commit_list*, %struct.commit_list** %42, align 8
  store %struct.commit_list* %43, %struct.commit_list** %4, align 8
  br label %30

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %1
  ret void
}

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.island_bitmap* @kh_value(i32, i64) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @set_island_marks(i32*, %struct.island_bitmap*) #1

declare dso_local %struct.TYPE_6__* @get_commit_tree(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
