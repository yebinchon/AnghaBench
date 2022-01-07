; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_log_level_av_to_ijk.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_log_level_av_to_ijk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IJK_LOG_VERBOSE = common dso_local global i32 0, align 4
@AV_LOG_PANIC = common dso_local global i32 0, align 4
@IJK_LOG_FATAL = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@IJK_LOG_ERROR = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@IJK_LOG_WARN = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@IJK_LOG_INFO = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@IJK_LOG_DEBUG = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @log_level_av_to_ijk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_level_av_to_ijk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @IJK_LOG_VERBOSE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @AV_LOG_PANIC, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @IJK_LOG_FATAL, align 4
  store i32 %9, i32* %3, align 4
  br label %61

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @AV_LOG_FATAL, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @IJK_LOG_FATAL, align 4
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @IJK_LOG_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @AV_LOG_WARNING, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @IJK_LOG_WARN, align 4
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @AV_LOG_INFO, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @IJK_LOG_INFO, align 4
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @IJK_LOG_INFO, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @AV_LOG_DEBUG, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @IJK_LOG_DEBUG, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @AV_LOG_TRACE, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @IJK_LOG_VERBOSE, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @IJK_LOG_VERBOSE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %26
  br label %59

59:                                               ; preds = %58, %20
  br label %60

60:                                               ; preds = %59, %14
  br label %61

61:                                               ; preds = %60, %8
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
