; ModuleID = '/home/carl/AnghaBench/git/extr_tree-diff.c_skip_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-diff.c_skip_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc = type { i64, i32 }
%struct.strbuf = type { i32 }
%struct.diff_options = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@all_entries_not_interesting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_desc*, %struct.strbuf*, %struct.diff_options*)* @skip_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_uninteresting(%struct.tree_desc* %0, %struct.strbuf* %1, %struct.diff_options* %2) #0 {
  %4 = alloca %struct.tree_desc*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca i32, align 4
  store %struct.tree_desc* %0, %struct.tree_desc** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.diff_options* %2, %struct.diff_options** %6, align 8
  br label %8

8:                                                ; preds = %35, %3
  %9 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %10 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %15 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %20 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %19, i32 0, i32 1
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %23 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %22, i32 0, i32 0
  %24 = call i32 @tree_entry_interesting(i32 %18, i32* %20, %struct.strbuf* %21, i32 0, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @all_entries_not_interesting, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %33 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %38

35:                                               ; preds = %13
  %36 = load %struct.tree_desc*, %struct.tree_desc** %4, align 8
  %37 = call i32 @update_tree_entry(%struct.tree_desc* %36)
  br label %8

38:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @tree_entry_interesting(i32, i32*, %struct.strbuf*, i32, i32*) #1

declare dso_local i32 @update_tree_entry(%struct.tree_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
