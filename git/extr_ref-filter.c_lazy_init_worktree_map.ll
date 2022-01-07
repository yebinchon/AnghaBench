; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_lazy_init_worktree_map.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_lazy_init_worktree_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@ref_to_worktree_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ref_to_worktree_map_cmpfnc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lazy_init_worktree_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lazy_init_worktree_map() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ref_to_worktree_map, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = call i64 @get_worktrees(i32 0)
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ref_to_worktree_map, i32 0, i32 0), align 8
  %6 = load i32, i32* @ref_to_worktree_map_cmpfnc, align 4
  %7 = call i32 @hashmap_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ref_to_worktree_map, i32 0, i32 1), i32 %6, i32* null, i32 0)
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ref_to_worktree_map, i32 0, i32 0), align 8
  %9 = call i32 @populate_worktree_map(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ref_to_worktree_map, i32 0, i32 1), i64 %8)
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

declare dso_local i64 @get_worktrees(i32) #1

declare dso_local i32 @hashmap_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @populate_worktree_map(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
