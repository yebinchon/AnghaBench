; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_create_seq_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_create_seq_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"revert is already in progress\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"try \22git revert (--continue | %s--abort | --quit)\22\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cherry-pick is already in progress\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"try \22git cherry-pick (--continue | %s--abort | --quit)\22\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unexpected action in create_seq_dir\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@advice_sequencer_in_use = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"--skip | \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"could not create sequencer directory '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @create_seq_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_seq_dir(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.repository*, %struct.repository** %3, align 8
  %9 = call i32 @git_path_revert_head(%struct.repository* %8)
  %10 = call i64 @file_exists(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.repository*, %struct.repository** %3, align 8
  %14 = call i32 @git_path_cherry_pick_head(%struct.repository* %13)
  %15 = call i64 @file_exists(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.repository*, %struct.repository** %3, align 8
  %21 = call i32 @sequencer_get_last_command(%struct.repository* %20, i32* %4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 129, label %28
  ]

25:                                               ; preds = %23
  %26 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  br label %33

28:                                               ; preds = %23
  %29 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  store i8* %30, i8** %6, align 8
  br label %33

31:                                               ; preds = %23
  %32 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28, %25
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  %40 = load i64, i64* @advice_sequencer_in_use, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %48 = call i32 @advise(i8* %43, i8* %47)
  br label %49

49:                                               ; preds = %42, %37
  store i32 -1, i32* %2, align 4
  br label %59

50:                                               ; preds = %34
  %51 = call i32 (...) @git_path_seq_dir()
  %52 = call i64 @mkdir(i32 %51, i32 511)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %56 = call i32 (...) @git_path_seq_dir()
  %57 = call i32 @error_errno(i8* %55, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %54, %49
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @file_exists(i32) #1

declare dso_local i32 @git_path_revert_head(%struct.repository*) #1

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #1

declare dso_local i32 @sequencer_get_last_command(%struct.repository*, i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @advise(i8*, i8*) #1

declare dso_local i64 @mkdir(i32, i32) #1

declare dso_local i32 @git_path_seq_dir(...) #1

declare dso_local i32 @error_errno(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
