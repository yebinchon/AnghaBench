; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_get_cleanup_mode.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_get_cleanup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@COMMIT_MSG_CLEANUP_ALL = common dso_local global i32 0, align 4
@COMMIT_MSG_CLEANUP_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"verbatim\00", align 1
@COMMIT_MSG_CLEANUP_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"scissors\00", align 1
@COMMIT_MSG_CLEANUP_SCISSORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid cleanup mode %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cleanup_mode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @COMMIT_MSG_CLEANUP_ALL, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @COMMIT_MSG_CLEANUP_SPACE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @COMMIT_MSG_CLEANUP_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @COMMIT_MSG_CLEANUP_SPACE, align 4
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @COMMIT_MSG_CLEANUP_ALL, align 4
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @COMMIT_MSG_CLEANUP_SCISSORS, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @COMMIT_MSG_CLEANUP_SPACE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %3, align 4
  br label %60

52:                                               ; preds = %39
  %53 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @die(i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %19, %25, %31, %37, %50, %59
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
