; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_skip.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no revert in progress\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no cherry-pick in progress\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unexpected action in sequencer_skip\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to skip the commit\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"there is nothing to skip\00", align 1
@advice_resolve_conflict = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"have you committed already?\0Atry \22git %s --continue\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cherry-pick\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_skip(%struct.repository* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.repository*, %struct.repository** %4, align 8
  %8 = call i32 @sequencer_get_last_command(%struct.repository* %7, i32* %6)
  %9 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %10 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %46 [
    i32 128, label %12
    i32 129, label %29
  ]

12:                                               ; preds = %2
  %13 = load %struct.repository*, %struct.repository** %4, align 8
  %14 = call i32 @git_path_revert_head(%struct.repository* %13)
  %15 = call i32 @file_exists(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @error(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %17
  %24 = call i32 (...) @rollback_is_safe()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %63

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %12
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.repository*, %struct.repository** %4, align 8
  %31 = call i32 @git_path_cherry_pick_head(%struct.repository* %30)
  %32 = call i32 @file_exists(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 129
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @error(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %34
  %41 = call i32 (...) @rollback_is_safe()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %63

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %29
  br label %48

46:                                               ; preds = %2
  %47 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %45, %28
  %49 = call i64 (...) @skip_single_pick()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 @error(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %48
  %55 = call i32 (...) @git_path_seq_dir()
  %56 = call i32 @is_directory(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %76

59:                                               ; preds = %54
  %60 = load %struct.repository*, %struct.repository** %4, align 8
  %61 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %62 = call i32 @sequencer_continue(%struct.repository* %60, %struct.replay_opts* %61)
  store i32 %62, i32* %3, align 4
  br label %76

63:                                               ; preds = %43, %26
  %64 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @error(i32 %64)
  %66 = load i64, i64* @advice_resolve_conflict, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 128
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  %74 = call i32 @advise(i32 %69, i8* %73)
  br label %75

75:                                               ; preds = %68, %63
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %59, %58, %51, %37, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @sequencer_get_last_command(%struct.repository*, i32*) #1

declare dso_local i32 @file_exists(i32) #1

declare dso_local i32 @git_path_revert_head(%struct.repository*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @rollback_is_safe(...) #1

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @skip_single_pick(...) #1

declare dso_local i32 @is_directory(i32) #1

declare dso_local i32 @git_path_seq_dir(...) #1

declare dso_local i32 @sequencer_continue(%struct.repository*, %struct.replay_opts*) #1

declare dso_local i32 @advise(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
