; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_mark_new_skip_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_mark_new_skip_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i32 }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@CE_CONFLICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pattern_list*, %struct.index_state*, i32, i32)* @mark_new_skip_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_new_skip_worktree(%struct.pattern_list* %0, %struct.index_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pattern_list*, align 8
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  store %struct.pattern_list* %0, %struct.pattern_list** %5, align 8
  store %struct.index_state* %1, %struct.index_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %60, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.index_state*, %struct.index_state** %6, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %11
  %18 = load %struct.index_state*, %struct.index_state** %6, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %20, i64 %22
  %24 = load %struct.cache_entry*, %struct.cache_entry** %23, align 8
  store %struct.cache_entry* %24, %struct.cache_entry** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %60

35:                                               ; preds = %27, %17
  %36 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %37 = call i32 @ce_stage(%struct.cache_entry* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CE_CONFLICTED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %49 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %39, %35
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %11

63:                                               ; preds = %11
  %64 = load %struct.index_state*, %struct.index_state** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.pattern_list*, %struct.pattern_list** %5, align 8
  %68 = call i32 @clear_ce_flags(%struct.index_state* %64, i32 %65, i32 %66, %struct.pattern_list* %67)
  ret void
}

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @clear_ce_flags(%struct.index_state*, i32, i32, %struct.pattern_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
