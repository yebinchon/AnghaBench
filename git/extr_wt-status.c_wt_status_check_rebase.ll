; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_check_rebase.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_check_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32 }
%struct.wt_status_state = type { i32, i32, i32, i32, i8*, i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"rebase-apply\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"rebase-apply/applying\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"rebase-apply/patch\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"rebase-apply/head-name\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"rebase-apply/onto\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rebase-merge\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"rebase-merge/interactive\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"rebase-merge/head-name\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"rebase-merge/onto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wt_status_check_rebase(%struct.worktree* %0, %struct.wt_status_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.worktree*, align 8
  %5 = alloca %struct.wt_status_state*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.worktree* %0, %struct.worktree** %4, align 8
  store %struct.wt_status_state* %1, %struct.wt_status_state** %5, align 8
  %7 = load %struct.worktree*, %struct.worktree** %4, align 8
  %8 = call i32 @worktree_git_path(%struct.worktree* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @stat(i32 %8, %struct.stat* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %2
  %12 = load %struct.worktree*, %struct.worktree** %4, align 8
  %13 = call i32 @worktree_git_path(%struct.worktree* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @stat(i32 %13, %struct.stat* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %18 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.worktree*, %struct.worktree** %4, align 8
  %20 = call i32 @worktree_git_path(%struct.worktree* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @stat(i32 %20, %struct.stat* %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %29 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23, %16
  br label %42

31:                                               ; preds = %11
  %32 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %33 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load %struct.worktree*, %struct.worktree** %4, align 8
  %35 = call i8* @get_branch(%struct.worktree* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %37 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.worktree*, %struct.worktree** %4, align 8
  %39 = call i8* @get_branch(%struct.worktree* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %41 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %31, %30
  br label %70

43:                                               ; preds = %2
  %44 = load %struct.worktree*, %struct.worktree** %4, align 8
  %45 = call i32 @worktree_git_path(%struct.worktree* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %46 = call i32 @stat(i32 %45, %struct.stat* %6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %43
  %49 = load %struct.worktree*, %struct.worktree** %4, align 8
  %50 = call i32 @worktree_git_path(%struct.worktree* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %51 = call i32 @stat(i32 %50, %struct.stat* %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %55 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %54, i32 0, i32 3
  store i32 1, i32* %55, align 4
  br label %59

56:                                               ; preds = %48
  %57 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %58 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.worktree*, %struct.worktree** %4, align 8
  %61 = call i8* @get_branch(%struct.worktree* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %62 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %63 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.worktree*, %struct.worktree** %4, align 8
  %65 = call i8* @get_branch(%struct.worktree* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %66 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %67 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %69

68:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %71

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %42
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %68
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @worktree_git_path(%struct.worktree*, i8*) #1

declare dso_local i8* @get_branch(%struct.worktree*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
