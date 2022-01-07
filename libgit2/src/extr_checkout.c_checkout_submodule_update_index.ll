; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_submodule_update_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_submodule_update_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.stat = type { i32 }

@GIT_CHECKOUT_DONT_UPDATE_INDEX = common dso_local global i32 0, align 4
@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not stat submodule %s\0A\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*)* @checkout_submodule_update_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_submodule_update_index(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.stat, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GIT_CHECKOUT_DONT_UPDATE_INDEX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @checkout_target_fullpath(%struct.TYPE_13__** %6, %struct.TYPE_14__* %16, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @p_stat(i32 %31, %struct.stat* %7)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @git_error_set(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %23
  %42 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = call i32 @checkout_update_index(%struct.TYPE_14__* %44, %struct.TYPE_12__* %45, %struct.stat* %7)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %34, %22, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @checkout_target_fullpath(%struct.TYPE_13__**, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @p_stat(i32, %struct.stat*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @checkout_update_index(%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
