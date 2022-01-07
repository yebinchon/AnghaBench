; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_unregister.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }

@merge_driver_registry = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to lock merge driver registry\00", align 1
@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot find merge driver '%s' to unregister\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_driver_unregister(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call i64 @git_rwlock_wrlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @merge_driver_registry, i32 0, i32 0))
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @GIT_ERROR_OS, align 4
  %11 = call i32 (i32, i8*, ...) @git_error_set(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.TYPE_6__* @merge_driver_registry_lookup(i64* %5, i8* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i32, i8*, ...) @git_error_set(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %20, i32* %6, align 4
  br label %50

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @git_vector_remove(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @merge_driver_registry, i32 0, i32 1), i64 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_7__*)* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 %40(%struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %35, %28, %21
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @git__free(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %47, %16
  %51 = call i32 @git_rwlock_wrunlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @merge_driver_registry, i32 0, i32 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @git_rwlock_wrlock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @merge_driver_registry_lookup(i64*, i8*) #1

declare dso_local i32 @git_vector_remove(i32*, i64) #1

declare dso_local i32 @git__free(%struct.TYPE_6__*) #1

declare dso_local i32 @git_rwlock_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
