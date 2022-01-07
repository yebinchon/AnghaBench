; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_diff_tree_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_diff_tree_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combine_diff_path = type { i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.diff_options = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.combine_diff_path* @diff_tree_paths(%struct.combine_diff_path* %0, %struct.object_id* %1, %struct.object_id** %2, i32 %3, %struct.strbuf* %4, %struct.diff_options* %5) #0 {
  %7 = alloca %struct.combine_diff_path*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.diff_options*, align 8
  store %struct.combine_diff_path* %0, %struct.combine_diff_path** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store %struct.object_id** %2, %struct.object_id*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  store %struct.diff_options* %5, %struct.diff_options** %12, align 8
  %13 = load %struct.combine_diff_path*, %struct.combine_diff_path** %7, align 8
  %14 = load %struct.object_id*, %struct.object_id** %8, align 8
  %15 = load %struct.object_id**, %struct.object_id*** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %18 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %19 = call %struct.combine_diff_path* @ll_diff_tree_paths(%struct.combine_diff_path* %13, %struct.object_id* %14, %struct.object_id** %15, i32 %16, %struct.strbuf* %17, %struct.diff_options* %18)
  store %struct.combine_diff_path* %19, %struct.combine_diff_path** %7, align 8
  %20 = load %struct.combine_diff_path*, %struct.combine_diff_path** %7, align 8
  %21 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @FREE_AND_NULL(i32 %22)
  %24 = load %struct.combine_diff_path*, %struct.combine_diff_path** %7, align 8
  ret %struct.combine_diff_path* %24
}

declare dso_local %struct.combine_diff_path* @ll_diff_tree_paths(%struct.combine_diff_path*, %struct.object_id*, %struct.object_id**, i32, %struct.strbuf*, %struct.diff_options*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
