; ModuleID = '/home/carl/AnghaBench/git/extr_resolve-undo.c_unmerge_marked_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_resolve-undo.c_unmerge_marked_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry**, i32 }
%struct.cache_entry = type { i32 }

@CE_MATCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmerge_marked_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %5 = load %struct.index_state*, %struct.index_state** %2, align 8
  %6 = getelementptr inbounds %struct.index_state, %struct.index_state* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.index_state*, %struct.index_state** %2, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %20, i64 %22
  %24 = load %struct.cache_entry*, %struct.cache_entry** %23, align 8
  store %struct.cache_entry* %24, %struct.cache_entry** %4, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CE_MATCHED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load %struct.index_state*, %struct.index_state** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @unmerge_index_entry_at(%struct.index_state* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %11

39:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @unmerge_index_entry_at(%struct.index_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
