; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_status.c_status_validate_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_status.c_status_validate_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@GIT_STATUS_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"git_status_options\00", align 1
@GIT_STATUS_SHOW_WORKDIR_ONLY = common dso_local global i64 0, align 8
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown status 'show' option\00", align 1
@GIT_STATUS_OPT_NO_REFRESH = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_UPDATE_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"updating index from status is not allowed when index refresh is disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @status_validate_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_validate_options(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = load i32, i32* @GIT_STATUS_OPTIONS_VERSION, align 4
  %10 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_4__* %8, i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GIT_STATUS_SHOW_WORKDIR_ONLY, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %18 = call i32 @git_error_set(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

19:                                               ; preds = %7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GIT_STATUS_OPT_NO_REFRESH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GIT_STATUS_OPT_UPDATE_INDEX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %35 = call i32 @git_error_set(i32 %34, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

36:                                               ; preds = %26, %19
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %16, %6
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
