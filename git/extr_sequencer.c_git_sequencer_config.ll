; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_git_sequencer_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_git_sequencer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"commit.cleanup\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"verbatim\00", align 1
@COMMIT_MSG_CLEANUP_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@COMMIT_MSG_CLEANUP_SPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@COMMIT_MSG_CLEANUP_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"scissors\00", align 1
@COMMIT_MSG_CLEANUP_SCISSORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"invalid commit message cleanup mode '%s'\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"commit.gpgsign\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_sequencer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_sequencer_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.replay_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.replay_opts*
  store %struct.replay_opts* %12, %struct.replay_opts** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %75, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_config_string(i8** %10, i8* %17, i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %103

24:                                               ; preds = %16
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @COMMIT_MSG_CLEANUP_NONE, align 4
  %30 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %31 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %33 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %71

34:                                               ; preds = %24
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @COMMIT_MSG_CLEANUP_SPACE, align 4
  %40 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %41 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %43 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %70

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @COMMIT_MSG_CLEANUP_ALL, align 4
  %50 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %51 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %53 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %69

54:                                               ; preds = %44
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @COMMIT_MSG_CLEANUP_SCISSORS, align 4
  %60 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %61 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %63 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %68

64:                                               ; preds = %54
  %65 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @warning(i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %38
  br label %71

71:                                               ; preds = %70, %28
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %103

75:                                               ; preds = %3
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @git_config_bool(i8* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %87

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32* [ %85, %84 ], [ null, %86 ]
  %89 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %90 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  store i32 0, i32* %4, align 4
  br label %103

91:                                               ; preds = %75
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @git_gpg_config(i8* %92, i8* %93, i32* null)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @git_diff_basic_config(i8* %100, i8* %101, i32* null)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %97, %87, %71, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i8**, i8*, i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @git_config_bool(i8*, i8*) #1

declare dso_local i32* @xstrdup(i8*) #1

declare dso_local i32 @git_gpg_config(i8*, i8*, i32*) #1

declare dso_local i32 @git_diff_basic_config(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
