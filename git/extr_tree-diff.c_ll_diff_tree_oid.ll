; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_ll_diff_tree_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_ll_diff_tree_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.diff_options = type { i32 }
%struct.combine_diff_path = type { %struct.combine_diff_path* }

@emit_diff_first_parent_only = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, %struct.strbuf*, %struct.diff_options*)* @ll_diff_tree_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_diff_tree_oid(%struct.object_id* %0, %struct.object_id* %1, %struct.strbuf* %2, %struct.diff_options* %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca %struct.combine_diff_path, align 8
  %10 = alloca %struct.combine_diff_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.combine_diff_path*, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store %struct.diff_options* %3, %struct.diff_options** %8, align 8
  %13 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %9, i32 0, i32 0
  store %struct.combine_diff_path* null, %struct.combine_diff_path** %16, align 8
  %17 = load i32, i32* @emit_diff_first_parent_only, align 4
  %18 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.object_id*, %struct.object_id** %6, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %22 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %23 = call i32 @diff_tree_paths(%struct.combine_diff_path* %9, %struct.object_id* %20, %struct.object_id** %5, i32 1, %struct.strbuf* %21, %struct.diff_options* %22)
  %24 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %9, i32 0, i32 0
  %25 = load %struct.combine_diff_path*, %struct.combine_diff_path** %24, align 8
  store %struct.combine_diff_path* %25, %struct.combine_diff_path** %10, align 8
  br label %26

26:                                               ; preds = %29, %4
  %27 = load %struct.combine_diff_path*, %struct.combine_diff_path** %10, align 8
  %28 = icmp ne %struct.combine_diff_path* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.combine_diff_path*, %struct.combine_diff_path** %10, align 8
  store %struct.combine_diff_path* %30, %struct.combine_diff_path** %12, align 8
  %31 = load %struct.combine_diff_path*, %struct.combine_diff_path** %10, align 8
  %32 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %31, i32 0, i32 0
  %33 = load %struct.combine_diff_path*, %struct.combine_diff_path** %32, align 8
  store %struct.combine_diff_path* %33, %struct.combine_diff_path** %10, align 8
  %34 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  %35 = call i32 @free(%struct.combine_diff_path* %34)
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local i32 @diff_tree_paths(%struct.combine_diff_path*, %struct.object_id*, %struct.object_id**, i32, %struct.strbuf*, %struct.diff_options*) #1

declare dso_local i32 @free(%struct.combine_diff_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
