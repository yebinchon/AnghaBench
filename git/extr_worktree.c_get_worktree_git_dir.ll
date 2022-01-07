; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_get_worktree_git_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_get_worktree_git_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"worktrees/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_worktree_git_dir(%struct.worktree* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worktree*, align 8
  store %struct.worktree* %0, %struct.worktree** %3, align 8
  %4 = load %struct.worktree*, %struct.worktree** %3, align 8
  %5 = icmp ne %struct.worktree* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i8* (...) @get_git_dir()
  store i8* %7, i8** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.worktree*, %struct.worktree** %3, align 8
  %10 = getelementptr inbounds %struct.worktree, %struct.worktree* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i8* (...) @get_git_common_dir()
  store i8* %14, i8** %2, align 8
  br label %20

15:                                               ; preds = %8
  %16 = load %struct.worktree*, %struct.worktree** %3, align 8
  %17 = getelementptr inbounds %struct.worktree, %struct.worktree* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @git_common_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %15, %13, %6
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local i8* @get_git_dir(...) #1

declare dso_local i8* @get_git_common_dir(...) #1

declare dso_local i8* @git_common_path(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
