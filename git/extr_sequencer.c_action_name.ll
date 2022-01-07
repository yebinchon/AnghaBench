; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_action_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_action_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cherry-pick\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rebase -i\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown action: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.replay_opts*)* @action_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @action_name(%struct.replay_opts* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.replay_opts*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %3, align 8
  %4 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %5 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 129, label %9
    i32 130, label %11
  ]

7:                                                ; preds = %1
  %8 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = call i8* @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = call i8* @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %19

13:                                               ; preds = %1
  %14 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %15 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %16 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @die(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %11, %9, %7
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
