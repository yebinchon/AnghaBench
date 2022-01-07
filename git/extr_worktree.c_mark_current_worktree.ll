; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_mark_current_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_mark_current_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worktree**)* @mark_current_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_current_worktree(%struct.worktree** %0) #0 {
  %2 = alloca %struct.worktree**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.worktree*, align 8
  %6 = alloca i8*, align 8
  store %struct.worktree** %0, %struct.worktree*** %2, align 8
  %7 = call i32 (...) @get_git_dir()
  %8 = call i8* @absolute_pathdup(i32 %7)
  store i8* %8, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load %struct.worktree**, %struct.worktree*** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.worktree*, %struct.worktree** %10, i64 %12
  %14 = load %struct.worktree*, %struct.worktree** %13, align 8
  %15 = icmp ne %struct.worktree* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.worktree**, %struct.worktree*** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.worktree*, %struct.worktree** %17, i64 %19
  %21 = load %struct.worktree*, %struct.worktree** %20, align 8
  store %struct.worktree* %21, %struct.worktree** %5, align 8
  %22 = load %struct.worktree*, %struct.worktree** %5, align 8
  %23 = call i8* @get_worktree_git_dir(%struct.worktree* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @absolute_path(i8* %25)
  %27 = call i32 @fspathcmp(i8* %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load %struct.worktree*, %struct.worktree** %5, align 8
  %31 = getelementptr inbounds %struct.worktree, %struct.worktree* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %36

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %9

36:                                               ; preds = %29, %9
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @free(i8* %37)
  ret void
}

declare dso_local i8* @absolute_pathdup(i32) #1

declare dso_local i32 @get_git_dir(...) #1

declare dso_local i8* @get_worktree_git_dir(%struct.worktree*) #1

declare dso_local i32 @fspathcmp(i8*, i32) #1

declare dso_local i32 @absolute_path(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
