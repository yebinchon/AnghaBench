; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_print_advice.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_print_advice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.replay_opts = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"GIT_CHERRY_PICK_HELP\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [99 x i8] c"after resolving the conflicts, mark the corrected paths\0Awith 'git add <paths>' or 'git rm <paths>'\00", align 1
@.str.3 = private unnamed_addr constant [139 x i8] c"after resolving the conflicts, mark the corrected paths\0Awith 'git add <paths>' or 'git rm <paths>'\0Aand commit the result with 'git commit'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i32, %struct.replay_opts*)* @print_advice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_advice(%struct.repository* %0, i32 %1, %struct.replay_opts* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.replay_opts*, align 8
  %7 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.replay_opts* %2, %struct.replay_opts** %6, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load %struct.repository*, %struct.repository** %4, align 8
  %16 = call i32 @git_path_cherry_pick_head(%struct.repository* %15)
  %17 = call i32 @unlink(i32 %16)
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %23 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 @_(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @advise(i32 %27)
  br label %32

29:                                               ; preds = %21
  %30 = call i32 @_(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @advise(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %11, %32, %18
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #1

declare dso_local i32 @advise(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
