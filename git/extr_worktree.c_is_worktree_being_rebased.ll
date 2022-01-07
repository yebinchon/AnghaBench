; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_is_worktree_being_rebased.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_is_worktree_being_rebased.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32 }
%struct.wt_status_state = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_worktree_being_rebased(%struct.worktree* %0, i8* %1) #0 {
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wt_status_state, align 8
  %6 = alloca i32, align 4
  store %struct.worktree* %0, %struct.worktree** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @memset(%struct.wt_status_state* %5, i32 0, i32 32)
  %8 = load %struct.worktree*, %struct.worktree** %3, align 8
  %9 = call i64 @wt_status_check_rebase(%struct.worktree* %8, %struct.wt_status_state* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @starts_with(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = call i32 @strcmp(i64 %29, i8* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %27, %23, %19, %15
  %38 = phi i1 [ false, %23 ], [ false, %19 ], [ false, %15 ], [ %36, %27 ]
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi i1 [ false, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @free(i64 %43)
  %45 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @free(i64 %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.wt_status_state*, i32, i32) #1

declare dso_local i64 @wt_status_check_rebase(%struct.worktree*, %struct.wt_status_state*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
