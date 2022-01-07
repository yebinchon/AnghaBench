; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_add_lines_to_move_detection.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_add_lines_to_move_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hashmap = type { i32 }
%struct.moved_entry = type { i32, %struct.moved_entry*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@COLOR_MOVED_WS_ALLOW_INDENTATION_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.hashmap*, %struct.hashmap*)* @add_lines_to_move_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_lines_to_move_detection(%struct.diff_options* %0, %struct.hashmap* %1, %struct.hashmap* %2) #0 {
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca %struct.hashmap*, align 8
  %7 = alloca %struct.moved_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hashmap*, align 8
  %10 = alloca %struct.moved_entry*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store %struct.hashmap* %1, %struct.hashmap** %5, align 8
  store %struct.hashmap* %2, %struct.hashmap** %6, align 8
  store %struct.moved_entry* null, %struct.moved_entry** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %85, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %11
  %20 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %21 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %34 [
    i32 128, label %30
    i32 129, label %32
  ]

30:                                               ; preds = %19
  %31 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  store %struct.hashmap* %31, %struct.hashmap** %9, align 8
  br label %35

32:                                               ; preds = %19
  %33 = load %struct.hashmap*, %struct.hashmap** %6, align 8
  store %struct.hashmap* %33, %struct.hashmap** %9, align 8
  br label %35

34:                                               ; preds = %19
  store %struct.moved_entry* null, %struct.moved_entry** %7, align 8
  br label %85

35:                                               ; preds = %32, %30
  %36 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %37 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @COLOR_MOVED_WS_ALLOW_INDENTATION_CHANGE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %44 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = call i32 @fill_es_indent_data(%struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %42, %35
  %53 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.moved_entry* @prepare_entry(%struct.diff_options* %53, i32 %54)
  store %struct.moved_entry* %55, %struct.moved_entry** %10, align 8
  %56 = load %struct.moved_entry*, %struct.moved_entry** %7, align 8
  %57 = icmp ne %struct.moved_entry* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.moved_entry*, %struct.moved_entry** %7, align 8
  %60 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %65 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %63, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %58
  %76 = load %struct.moved_entry*, %struct.moved_entry** %10, align 8
  %77 = load %struct.moved_entry*, %struct.moved_entry** %7, align 8
  %78 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %77, i32 0, i32 1
  store %struct.moved_entry* %76, %struct.moved_entry** %78, align 8
  br label %79

79:                                               ; preds = %75, %58, %52
  %80 = load %struct.hashmap*, %struct.hashmap** %9, align 8
  %81 = load %struct.moved_entry*, %struct.moved_entry** %10, align 8
  %82 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %81, i32 0, i32 0
  %83 = call i32 @hashmap_add(%struct.hashmap* %80, i32* %82)
  %84 = load %struct.moved_entry*, %struct.moved_entry** %10, align 8
  store %struct.moved_entry* %84, %struct.moved_entry** %7, align 8
  br label %85

85:                                               ; preds = %79, %34
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %11

88:                                               ; preds = %11
  ret void
}

declare dso_local i32 @fill_es_indent_data(%struct.TYPE_6__*) #1

declare dso_local %struct.moved_entry* @prepare_entry(%struct.diff_options*, i32) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
