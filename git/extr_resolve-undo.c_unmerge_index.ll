; ModuleID = '/home/carl/AnghaBench/git/extr_resolve-undo.c_unmerge_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_resolve-undo.c_unmerge_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry**, i32 }
%struct.cache_entry = type { i32 }
%struct.pathspec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmerge_index(%struct.index_state* %0, %struct.pathspec* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.pathspec* %1, %struct.pathspec** %4, align 8
  %7 = load %struct.index_state*, %struct.index_state** %3, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %40

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.index_state*, %struct.index_state** %3, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 1
  %22 = load %struct.cache_entry**, %struct.cache_entry*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %22, i64 %24
  %26 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  store %struct.cache_entry* %26, %struct.cache_entry** %6, align 8
  %27 = load %struct.index_state*, %struct.index_state** %3, align 8
  %28 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %29 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %30 = call i32 @ce_path_match(%struct.index_state* %27, %struct.cache_entry* %28, %struct.pathspec* %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.index_state*, %struct.index_state** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @unmerge_index_entry_at(%struct.index_state* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %13

40:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @ce_path_match(%struct.index_state*, %struct.cache_entry*, %struct.pathspec*, i32*) #1

declare dso_local i32 @unmerge_index_entry_at(%struct.index_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
