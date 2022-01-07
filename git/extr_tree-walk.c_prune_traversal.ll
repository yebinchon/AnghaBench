; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_prune_traversal.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_prune_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.name_entry = type { i32 }
%struct.traverse_info = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.name_entry*, %struct.traverse_info*, %struct.strbuf*, i32)* @prune_traversal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune_traversal(%struct.index_state* %0, %struct.name_entry* %1, %struct.traverse_info* %2, %struct.strbuf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca %struct.name_entry*, align 8
  %9 = alloca %struct.traverse_info*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store %struct.name_entry* %1, %struct.name_entry** %8, align 8
  store %struct.traverse_info* %2, %struct.traverse_info** %9, align 8
  store %struct.strbuf* %3, %struct.strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.traverse_info*, %struct.traverse_info** %9, align 8
  %13 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  store i32 2, i32* %6, align 4
  br label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %20
  %26 = load %struct.index_state*, %struct.index_state** %7, align 8
  %27 = load %struct.name_entry*, %struct.name_entry** %8, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %29 = load %struct.traverse_info*, %struct.traverse_info** %9, align 8
  %30 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tree_entry_interesting(%struct.index_state* %26, %struct.name_entry* %27, %struct.strbuf* %28, i32 0, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %23, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @tree_entry_interesting(%struct.index_state*, %struct.name_entry*, %struct.strbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
