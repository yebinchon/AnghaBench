; ModuleID = '/home/carl/AnghaBench/git/extr_rebase-interactive.c_get_missing_commit_check_level.c'
source_filename = "/home/carl/AnghaBench/git/extr_rebase-interactive.c_get_missing_commit_check_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"rebase.missingcommitscheck\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@MISSING_COMMIT_CHECK_IGNORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@MISSING_COMMIT_CHECK_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@MISSING_COMMIT_CHECK_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"unrecognized setting %s for option rebase.missingCommitsCheck. Ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_missing_commit_check_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_missing_commit_check_level() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i64 @git_config_get_value(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @MISSING_COMMIT_CHECK_IGNORE, align 4
  store i32 %10, i32* %1, align 4
  br label %28

11:                                               ; preds = %5
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @MISSING_COMMIT_CHECK_WARN, align 4
  store i32 %16, i32* %1, align 4
  br label %28

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @MISSING_COMMIT_CHECK_ERROR, align 4
  store i32 %22, i32* %1, align 4
  br label %28

23:                                               ; preds = %17
  %24 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @warning(i32 %24, i8* %25)
  %27 = load i32, i32* @MISSING_COMMIT_CHECK_IGNORE, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %23, %21, %15, %9
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i64 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
