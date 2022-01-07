; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_index_objects_to_pending.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_index_objects_to_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.index_state* }
%struct.index_state = type { i32* }
%struct.worktree = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_index_objects_to_pending(%struct.rev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.worktree**, align 8
  %6 = alloca %struct.worktree**, align 8
  %7 = alloca %struct.worktree*, align 8
  %8 = alloca %struct.index_state, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @repo_read_index(%struct.TYPE_2__* %11)
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.index_state*, %struct.index_state** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @do_add_index_objects_to_pending(%struct.rev_info* %13, %struct.index_state* %18, i32 %19)
  %21 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %61

26:                                               ; preds = %2
  %27 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %27, %struct.worktree*** %5, align 8
  %28 = load %struct.worktree**, %struct.worktree*** %5, align 8
  store %struct.worktree** %28, %struct.worktree*** %6, align 8
  br label %29

29:                                               ; preds = %55, %26
  %30 = load %struct.worktree**, %struct.worktree*** %6, align 8
  %31 = load %struct.worktree*, %struct.worktree** %30, align 8
  %32 = icmp ne %struct.worktree* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.worktree**, %struct.worktree*** %6, align 8
  %35 = load %struct.worktree*, %struct.worktree** %34, align 8
  store %struct.worktree* %35, %struct.worktree** %7, align 8
  %36 = bitcast %struct.index_state* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 8, i1 false)
  %37 = load %struct.worktree*, %struct.worktree** %7, align 8
  %38 = getelementptr inbounds %struct.worktree, %struct.worktree* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.worktree*, %struct.worktree** %7, align 8
  %44 = call i32 @worktree_git_path(%struct.worktree* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.worktree*, %struct.worktree** %7, align 8
  %46 = call i32 @get_worktree_git_dir(%struct.worktree* %45)
  %47 = call i64 @read_index_from(%struct.index_state* %8, i32 %44, i32 %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @do_add_index_objects_to_pending(%struct.rev_info* %50, %struct.index_state* %8, i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = call i32 @discard_index(%struct.index_state* %8)
  br label %55

55:                                               ; preds = %53, %41
  %56 = load %struct.worktree**, %struct.worktree*** %6, align 8
  %57 = getelementptr inbounds %struct.worktree*, %struct.worktree** %56, i32 1
  store %struct.worktree** %57, %struct.worktree*** %6, align 8
  br label %29

58:                                               ; preds = %29
  %59 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %60 = call i32 @free_worktrees(%struct.worktree** %59)
  br label %61

61:                                               ; preds = %58, %25
  ret void
}

declare dso_local i32 @repo_read_index(%struct.TYPE_2__*) #1

declare dso_local i32 @do_add_index_objects_to_pending(%struct.rev_info*, %struct.index_state*, i32) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @read_index_from(%struct.index_state*, i32, i32) #1

declare dso_local i32 @worktree_git_path(%struct.worktree*, i8*) #1

declare dso_local i32 @get_worktree_git_dir(%struct.worktree*) #1

declare dso_local i32 @discard_index(%struct.index_state*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
