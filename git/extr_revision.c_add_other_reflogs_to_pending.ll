; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_other_reflogs_to_pending.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_other_reflogs_to_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.all_refs_cb = type { %struct.worktree* }
%struct.worktree = type { i64 }

@handle_one_reflog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.all_refs_cb*)* @add_other_reflogs_to_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_other_reflogs_to_pending(%struct.all_refs_cb* %0) #0 {
  %2 = alloca %struct.all_refs_cb*, align 8
  %3 = alloca %struct.worktree**, align 8
  %4 = alloca %struct.worktree**, align 8
  %5 = alloca %struct.worktree*, align 8
  store %struct.all_refs_cb* %0, %struct.all_refs_cb** %2, align 8
  %6 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %6, %struct.worktree*** %3, align 8
  %7 = load %struct.worktree**, %struct.worktree*** %3, align 8
  store %struct.worktree** %7, %struct.worktree*** %4, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %10 = load %struct.worktree*, %struct.worktree** %9, align 8
  %11 = icmp ne %struct.worktree* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %14 = load %struct.worktree*, %struct.worktree** %13, align 8
  store %struct.worktree* %14, %struct.worktree** %5, align 8
  %15 = load %struct.worktree*, %struct.worktree** %5, align 8
  %16 = getelementptr inbounds %struct.worktree, %struct.worktree* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %29

20:                                               ; preds = %12
  %21 = load %struct.worktree*, %struct.worktree** %5, align 8
  %22 = load %struct.all_refs_cb*, %struct.all_refs_cb** %2, align 8
  %23 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %22, i32 0, i32 0
  store %struct.worktree* %21, %struct.worktree** %23, align 8
  %24 = load %struct.worktree*, %struct.worktree** %5, align 8
  %25 = call i32 @get_worktree_ref_store(%struct.worktree* %24)
  %26 = load i32, i32* @handle_one_reflog, align 4
  %27 = load %struct.all_refs_cb*, %struct.all_refs_cb** %2, align 8
  %28 = call i32 @refs_for_each_reflog(i32 %25, i32 %26, %struct.all_refs_cb* %27)
  br label %29

29:                                               ; preds = %20, %19
  %30 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %31 = getelementptr inbounds %struct.worktree*, %struct.worktree** %30, i32 1
  store %struct.worktree** %31, %struct.worktree*** %4, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %34 = call i32 @free_worktrees(%struct.worktree** %33)
  ret void
}

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i32 @refs_for_each_reflog(i32, i32, %struct.all_refs_cb*) #1

declare dso_local i32 @get_worktree_ref_store(%struct.worktree*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
