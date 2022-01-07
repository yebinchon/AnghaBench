; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_register.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@merge_driver_registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to lock merge driver registry\00", align 1
@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"attempt to reregister existing driver '%s'\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_driver_register(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i64 @git_rwlock_wrlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @merge_driver_registry, i32 0, i32 0))
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @GIT_ERROR_OS, align 4
  %20 = call i32 (i32, i8*, ...) @git_error_set(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %37

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @merge_driver_registry_find(i32* null, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, ...) @git_error_set(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @merge_driver_registry_insert(i8* %31, i32* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = call i32 @git_rwlock_wrunlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @merge_driver_registry, i32 0, i32 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_rwlock_wrlock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i32 @merge_driver_registry_find(i32*, i8*) #1

declare dso_local i32 @merge_driver_registry_insert(i8*, i32*) #1

declare dso_local i32 @git_rwlock_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
