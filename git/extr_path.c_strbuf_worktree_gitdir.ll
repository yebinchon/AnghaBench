; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_strbuf_worktree_gitdir.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_strbuf_worktree_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32, i32 }
%struct.worktree = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"worktrees/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.repository*, %struct.worktree*)* @strbuf_worktree_gitdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_worktree_gitdir(%struct.strbuf* %0, %struct.repository* %1, %struct.worktree* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.worktree*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.repository* %1, %struct.repository** %5, align 8
  store %struct.worktree* %2, %struct.worktree** %6, align 8
  %7 = load %struct.worktree*, %struct.worktree** %6, align 8
  %8 = icmp ne %struct.worktree* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = load %struct.repository*, %struct.repository** %5, align 8
  %12 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strbuf_addstr(%struct.strbuf* %10, i32 %13)
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.worktree*, %struct.worktree** %6, align 8
  %17 = getelementptr inbounds %struct.worktree, %struct.worktree* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = load %struct.repository*, %struct.repository** %5, align 8
  %23 = getelementptr inbounds %struct.repository, %struct.repository* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strbuf_addstr(%struct.strbuf* %21, i32 %24)
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = load %struct.repository*, %struct.repository** %5, align 8
  %29 = load %struct.worktree*, %struct.worktree** %6, align 8
  %30 = getelementptr inbounds %struct.worktree, %struct.worktree* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strbuf_git_common_path(%struct.strbuf* %27, %struct.repository* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %20
  br label %34

34:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_git_common_path(%struct.strbuf*, %struct.repository*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
