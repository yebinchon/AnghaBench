; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_single_pick.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_single_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.replay_opts = type { i64 }

@GIT_REFLOG_ACTION = common dso_local global i32 0, align 4
@REPLAY_PICK = common dso_local global i64 0, align 8
@TODO_PICK = common dso_local global i32 0, align 4
@TODO_REVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit*, %struct.replay_opts*)* @single_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_pick(%struct.repository* %0, %struct.commit* %1, %struct.replay_opts* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.replay_opts*, align 8
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.replay_opts* %2, %struct.replay_opts** %6, align 8
  %8 = load i32, i32* @GIT_REFLOG_ACTION, align 4
  %9 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %10 = call i32 @action_name(%struct.replay_opts* %9)
  %11 = call i32 @setenv(i32 %8, i32 %10, i32 0)
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %14 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REPLAY_PICK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TODO_PICK, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @TODO_REVERT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.commit*, %struct.commit** %5, align 8
  %25 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %26 = call i32 @do_pick_commit(%struct.repository* %12, i32 %23, %struct.commit* %24, %struct.replay_opts* %25, i32 0, i32* %7)
  ret i32 %26
}

declare dso_local i32 @setenv(i32, i32, i32) #1

declare dso_local i32 @action_name(%struct.replay_opts*) #1

declare dso_local i32 @do_pick_commit(%struct.repository*, i32, %struct.commit*, %struct.replay_opts*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
