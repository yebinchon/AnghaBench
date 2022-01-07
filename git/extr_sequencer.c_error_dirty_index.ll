; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_error_dirty_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_error_dirty_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"your local changes would be overwritten by %s.\00", align 1
@advice_commit_before_merge = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"commit your changes or stash them to proceed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.replay_opts*)* @error_dirty_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_dirty_index(%struct.repository* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %6 = load %struct.repository*, %struct.repository** %4, align 8
  %7 = call i64 @repo_read_index_unmerged(%struct.repository* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %11 = call i8* @action_name(%struct.replay_opts* %10)
  %12 = call i32 @_(i8* %11)
  %13 = call i32 @error_resolve_conflict(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %17 = call i8* @action_name(%struct.replay_opts* %16)
  %18 = call i32 @_(i8* %17)
  %19 = call i32 @error(i32 %15, i32 %18)
  %20 = load i64, i64* @advice_commit_before_merge, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @advise(i32 %23)
  br label %25

25:                                               ; preds = %22, %14
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @repo_read_index_unmerged(%struct.repository*) #1

declare dso_local i32 @error_resolve_conflict(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @action_name(%struct.replay_opts*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @advise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
