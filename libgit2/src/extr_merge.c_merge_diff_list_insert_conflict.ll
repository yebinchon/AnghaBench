; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_diff_list_insert_conflict.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_diff_list_insert_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_diff_df_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.merge_diff_df_data*, i32**)* @merge_diff_list_insert_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_diff_list_insert_conflict(%struct.TYPE_4__* %0, %struct.merge_diff_df_data* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.merge_diff_df_data*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.merge_diff_df_data* %1, %struct.merge_diff_df_data** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32**, i32*** %7, align 8
  %11 = call i32* @merge_diff_from_index_entries(%struct.TYPE_4__* %9, i32** %10)
  store i32* %11, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @merge_diff_detect_type(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load %struct.merge_diff_df_data*, %struct.merge_diff_df_data** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @merge_diff_detect_df_conflict(%struct.merge_diff_df_data* %18, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @git_vector_insert(i32* %24, i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %17, %13, %3
  store i32 -1, i32* %4, align 4
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32* @merge_diff_from_index_entries(%struct.TYPE_4__*, i32**) #1

declare dso_local i64 @merge_diff_detect_type(i32*) #1

declare dso_local i64 @merge_diff_detect_df_conflict(%struct.merge_diff_df_data*, i32*) #1

declare dso_local i64 @git_vector_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
