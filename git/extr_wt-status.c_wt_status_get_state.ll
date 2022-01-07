; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_get_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.repository = type { i32 }
%struct.wt_status_state = type { i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"CHERRY_PICK_HEAD\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REVERT_HEAD\00", align 1
@REPLAY_PICK = common dso_local global i32 0, align 4
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wt_status_get_state(%struct.repository* %0, %struct.wt_status_state* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.wt_status_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.wt_status_state* %1, %struct.wt_status_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.repository*, %struct.repository** %4, align 8
  %11 = call i32 @git_path_merge_head(%struct.repository* %10)
  %12 = call i32 @stat(i32 %11, %struct.stat* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %16 = call i64 @wt_status_check_rebase(i32* null, %struct.wt_status_state* %15)
  %17 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %18 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %21 = call i64 @wt_status_check_rebase(i32* null, %struct.wt_status_state* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %39

24:                                               ; preds = %19
  %25 = load %struct.repository*, %struct.repository** %4, align 8
  %26 = call i32 @git_path_cherry_pick_head(%struct.repository* %25)
  %27 = call i32 @stat(i32 %26, %struct.stat* %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = call i32 @get_oid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.object_id* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %34 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %36 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %35, i32 0, i32 4
  %37 = call i32 @oidcpy(i32* %36, %struct.object_id* %8)
  br label %38

38:                                               ; preds = %32, %29, %24
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %42 = call i32 @wt_status_check_bisect(i32* null, %struct.wt_status_state* %41)
  %43 = load %struct.repository*, %struct.repository** %4, align 8
  %44 = call i32 @git_path_revert_head(%struct.repository* %43)
  %45 = call i32 @stat(i32 %44, %struct.stat* %7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = call i32 @get_oid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %52 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  %53 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %54 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %53, i32 0, i32 3
  %55 = call i32 @oidcpy(i32* %54, %struct.object_id* %8)
  br label %56

56:                                               ; preds = %50, %47, %40
  %57 = load %struct.repository*, %struct.repository** %4, align 8
  %58 = call i32 @sequencer_get_last_command(%struct.repository* %57, i32* %9)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @REPLAY_PICK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %66 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %68 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %67, i32 0, i32 4
  %69 = call i32 @oidcpy(i32* %68, %struct.object_id* @null_oid)
  br label %76

70:                                               ; preds = %60
  %71 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %72 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %74 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %73, i32 0, i32 3
  %75 = call i32 @oidcpy(i32* %74, %struct.object_id* @null_oid)
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.repository*, %struct.repository** %4, align 8
  %82 = load %struct.wt_status_state*, %struct.wt_status_state** %5, align 8
  %83 = call i32 @wt_status_get_detached_from(%struct.repository* %81, %struct.wt_status_state* %82)
  br label %84

84:                                               ; preds = %80, %77
  ret void
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @git_path_merge_head(%struct.repository*) #1

declare dso_local i64 @wt_status_check_rebase(i32*, %struct.wt_status_state*) #1

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #1

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @wt_status_check_bisect(i32*, %struct.wt_status_state*) #1

declare dso_local i32 @git_path_revert_head(%struct.repository*) #1

declare dso_local i32 @sequencer_get_last_command(%struct.repository*, i32*) #1

declare dso_local i32 @wt_status_get_detached_from(%struct.repository*, %struct.wt_status_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
