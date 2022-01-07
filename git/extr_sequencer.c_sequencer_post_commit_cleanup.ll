; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_post_commit_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_post_commit_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32 }
%struct.repository = type { i32 }

@REPLAY_OPTS_INIT = common dso_local global %struct.replay_opts zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"cancelling a cherry picking in progress\00", align 1
@REPLAY_PICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cancelling a revert in progress\00", align 1
@REPLAY_REVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sequencer_post_commit_cleanup(%struct.repository* %0, i32 %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.replay_opts, align 4
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.replay_opts* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.replay_opts* @REPLAY_OPTS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %8 = load %struct.repository*, %struct.repository** %3, align 8
  %9 = call i32 @git_path_cherry_pick_head(%struct.repository* %8)
  %10 = call i64 @file_exists(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.repository*, %struct.repository** %3, align 8
  %14 = call i32 @git_path_cherry_pick_head(%struct.repository* %13)
  %15 = call i32 @unlink(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @warning(i32 %21)
  br label %23

23:                                               ; preds = %20, %17, %12
  %24 = load i32, i32* @REPLAY_PICK, align 4
  %25 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.repository*, %struct.repository** %3, align 8
  %28 = call i32 @git_path_revert_head(%struct.repository* %27)
  %29 = call i64 @file_exists(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.repository*, %struct.repository** %3, align 8
  %33 = call i32 @git_path_revert_head(%struct.repository* %32)
  %34 = call i32 @unlink(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @warning(i32 %40)
  br label %42

42:                                               ; preds = %39, %36, %31
  %43 = load i32, i32* @REPLAY_REVERT, align 4
  %44 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %26
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %55

49:                                               ; preds = %45
  %50 = call i32 (...) @have_finished_the_last_pick()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = call i32 @sequencer_remove_state(%struct.replay_opts* %5)
  br label %55

55:                                               ; preds = %53, %52, %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @file_exists(i32) #2

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @git_path_revert_head(%struct.repository*) #2

declare dso_local i32 @have_finished_the_last_pick(...) #2

declare dso_local i32 @sequencer_remove_state(%struct.replay_opts*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
