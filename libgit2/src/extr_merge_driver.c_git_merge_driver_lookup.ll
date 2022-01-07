; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }

@merge_driver_name__text = common dso_local global i8* null, align 8
@git_merge_driver__text = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@merge_driver_name__binary = common dso_local global i8* null, align 8
@git_merge_driver__binary = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@merge_driver_registry = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to lock merge driver registry\00", align 1
@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot use an unregistered filter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @git_merge_driver_lookup(i8* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** @merge_driver_name__text, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @git_merge_driver__text, i32 0, i32 0), %struct.TYPE_10__** %2, align 8
  br label %63

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** @merge_driver_name__binary, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.TYPE_10__* @git_merge_driver__binary, %struct.TYPE_10__** %2, align 8
  br label %63

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = call i64 @git_rwlock_rdlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @merge_driver_registry, i32 0, i32 0))
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @GIT_ERROR_OS, align 4
  %22 = call i32 @git_error_set(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %63

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.TYPE_9__* @merge_driver_registry_lookup(i64* %5, i8* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @git_rwlock_rdunlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @merge_driver_registry, i32 0, i32 0))
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = icmp eq %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %31 = call i32 @git_error_set(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %63

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_10__*)* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 %49(%struct.TYPE_10__* %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %63

56:                                               ; preds = %44, %37
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %32
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %2, align 8
  br label %63

63:                                               ; preds = %59, %55, %29, %20, %15, %10
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %64
}

declare dso_local i64 @git_rwlock_rdlock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @merge_driver_registry_lookup(i64*, i8*) #1

declare dso_local i32 @git_rwlock_rdunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
