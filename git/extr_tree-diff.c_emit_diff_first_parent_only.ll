; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_emit_diff_first_parent_only.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_emit_diff_first_parent_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 (%struct.diff_options*, i32, i32, %struct.object_id*, i32, i32, i32)*, i32 (%struct.diff_options*, i32, i32, %struct.object_id*, %struct.object_id*, i32, i32, i32, i32, i32)* }
%struct.object_id = type { i32 }
%struct.combine_diff_path = type { i32, i32, %struct.object_id, %struct.combine_diff_parent* }
%struct.combine_diff_parent = type { i32, %struct.object_id }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, %struct.combine_diff_path*)* @emit_diff_first_parent_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_diff_first_parent_only(%struct.diff_options* %0, %struct.combine_diff_path* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.combine_diff_path*, align 8
  %5 = alloca %struct.combine_diff_parent*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store %struct.combine_diff_path* %1, %struct.combine_diff_path** %4, align 8
  %9 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %10 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %9, i32 0, i32 3
  %11 = load %struct.combine_diff_parent*, %struct.combine_diff_parent** %10, align 8
  %12 = getelementptr inbounds %struct.combine_diff_parent, %struct.combine_diff_parent* %11, i64 0
  store %struct.combine_diff_parent* %12, %struct.combine_diff_parent** %5, align 8
  %13 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %14 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.combine_diff_parent*, %struct.combine_diff_parent** %5, align 8
  %19 = getelementptr inbounds %struct.combine_diff_parent, %struct.combine_diff_parent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 1
  %25 = load i32 (%struct.diff_options*, i32, i32, %struct.object_id*, %struct.object_id*, i32, i32, i32, i32, i32)*, i32 (%struct.diff_options*, i32, i32, %struct.object_id*, %struct.object_id*, i32, i32, i32, i32, i32)** %24, align 8
  %26 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %27 = load %struct.combine_diff_parent*, %struct.combine_diff_parent** %5, align 8
  %28 = getelementptr inbounds %struct.combine_diff_parent, %struct.combine_diff_parent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %31 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.combine_diff_parent*, %struct.combine_diff_parent** %5, align 8
  %34 = getelementptr inbounds %struct.combine_diff_parent, %struct.combine_diff_parent* %33, i32 0, i32 1
  %35 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %36 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %35, i32 0, i32 2
  %37 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %38 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %25(%struct.diff_options* %26, i32 %29, i32 %32, %struct.object_id* %34, %struct.object_id* %36, i32 1, i32 1, i32 %39, i32 0, i32 0)
  br label %70

41:                                               ; preds = %17, %2
  %42 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %43 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  store i32 43, i32* %8, align 4
  %47 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %48 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %47, i32 0, i32 2
  store %struct.object_id* %48, %struct.object_id** %6, align 8
  %49 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %50 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  br label %58

52:                                               ; preds = %41
  store i32 45, i32* %8, align 4
  %53 = load %struct.combine_diff_parent*, %struct.combine_diff_parent** %5, align 8
  %54 = getelementptr inbounds %struct.combine_diff_parent, %struct.combine_diff_parent* %53, i32 0, i32 1
  store %struct.object_id* %54, %struct.object_id** %6, align 8
  %55 = load %struct.combine_diff_parent*, %struct.combine_diff_parent** %5, align 8
  %56 = getelementptr inbounds %struct.combine_diff_parent, %struct.combine_diff_parent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %60 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %59, i32 0, i32 0
  %61 = load i32 (%struct.diff_options*, i32, i32, %struct.object_id*, i32, i32, i32)*, i32 (%struct.diff_options*, i32, i32, %struct.object_id*, i32, i32, i32)** %60, align 8
  %62 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.object_id*, %struct.object_id** %6, align 8
  %66 = load %struct.combine_diff_path*, %struct.combine_diff_path** %4, align 8
  %67 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %61(%struct.diff_options* %62, i32 %63, i32 %64, %struct.object_id* %65, i32 1, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %58, %22
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
