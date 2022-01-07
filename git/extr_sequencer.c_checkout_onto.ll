; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_checkout_onto.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_checkout_onto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"checkout %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: not a valid OID\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not detach HEAD\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ORIG_HEAD\00", align 1
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.replay_opts*, i8*, %struct.object_id*, i8*)* @checkout_onto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_onto(%struct.repository* %0, %struct.replay_opts* %1, i8* %2, %struct.object_id* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.replay_opts*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i8* @reflog_message(%struct.replay_opts* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @get_oid(i8* %17, %struct.object_id* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 (i32, ...) @error(i32 %21, i8* %22)
  store i32 %23, i32* %6, align 4
  br label %42

24:                                               ; preds = %5
  %25 = load %struct.repository*, %struct.repository** %7, align 8
  %26 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %27 = load %struct.object_id*, %struct.object_id** %10, align 8
  %28 = call i32 @oid_to_hex(%struct.object_id* %27)
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @run_git_checkout(%struct.repository* %25, %struct.replay_opts* %26, i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %34 = call i32 @apply_autostash(%struct.replay_opts* %33)
  %35 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %36 = call i32 @sequencer_remove_state(%struct.replay_opts* %35)
  %37 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 (i32, ...) @error(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %41 = call i32 @update_ref(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.object_id* %12, i32* null, i32 0, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %32, %20
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i8* @reflog_message(%struct.replay_opts*, i8*, i8*, i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @run_git_checkout(%struct.repository*, %struct.replay_opts*, i32, i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @apply_autostash(%struct.replay_opts*) #1

declare dso_local i32 @sequencer_remove_state(%struct.replay_opts*) #1

declare dso_local i32 @update_ref(i32*, i8*, %struct.object_id*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
