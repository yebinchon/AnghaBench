; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_do_git_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_do_git_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.worktree = type { i32 }
%struct.strbuf = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.worktree*, %struct.strbuf*, i8*, i32)* @do_git_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_git_path(%struct.repository* %0, %struct.worktree* %1, %struct.strbuf* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.worktree*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.worktree* %1, %struct.worktree** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %13 = load %struct.repository*, %struct.repository** %6, align 8
  %14 = load %struct.worktree*, %struct.worktree** %7, align 8
  %15 = call i32 @strbuf_worktree_gitdir(%struct.strbuf* %12, %struct.repository* %13, %struct.worktree* %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %5
  %21 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @is_dir_sep(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %35 = call i32 @strbuf_addch(%struct.strbuf* %34, i8 signext 47)
  br label %36

36:                                               ; preds = %33, %20, %5
  %37 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @strbuf_vaddf(%struct.strbuf* %40, i8* %41, i32 %42)
  %44 = load %struct.worktree*, %struct.worktree** %7, align 8
  %45 = icmp ne %struct.worktree* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load %struct.repository*, %struct.repository** %6, align 8
  %48 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @adjust_git_path(%struct.repository* %47, %struct.strbuf* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %53 = call i32 @strbuf_cleanup_path(%struct.strbuf* %52)
  ret void
}

declare dso_local i32 @strbuf_worktree_gitdir(%struct.strbuf*, %struct.repository*, %struct.worktree*) #1

declare dso_local i32 @is_dir_sep(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_vaddf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @adjust_git_path(%struct.repository*, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_cleanup_path(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
