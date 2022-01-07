; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_is_worktree_being_bisected.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_is_worktree_being_bisected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32 }
%struct.wt_status_state = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_worktree_being_bisected(%struct.worktree* %0, i8* %1) #0 {
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wt_status_state, align 8
  %6 = alloca i32, align 4
  store %struct.worktree* %0, %struct.worktree** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @memset(%struct.wt_status_state* %5, i32 0, i32 8)
  %8 = load %struct.worktree*, %struct.worktree** %3, align 8
  %9 = call i64 @wt_status_check_bisect(%struct.worktree* %8, %struct.wt_status_state* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @starts_with(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = call i32 @strcmp(i64 %21, i8* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %19, %15, %11, %2
  %30 = phi i1 [ false, %15 ], [ false, %11 ], [ false, %2 ], [ %28, %19 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @free(i64 %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.wt_status_state*, i32, i32) #1

declare dso_local i64 @wt_status_check_bisect(%struct.worktree*, %struct.wt_status_state*) #1

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
