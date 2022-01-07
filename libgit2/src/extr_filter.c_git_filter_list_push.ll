; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_push.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32* }

@filter_registry = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to lock filter registry\00", align 1
@filter_def_filter_key_check = common dso_local global i32 0, align 4
@GIT_ERROR_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot use an unregistered filter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filter_list_push(%struct.TYPE_10__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 @git_rwlock_rdlock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @filter_registry, i32 0, i32 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @GIT_ERROR_OS, align 4
  %25 = call i32 @git_error_set(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

26:                                               ; preds = %17
  %27 = load i32, i32* @filter_def_filter_key_check, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @git_vector_search2(i64* %9, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @filter_registry, i32 0, i32 1), i32 %27, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = call %struct.TYPE_12__* @git_vector_get(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @filter_registry, i32 0, i32 1), i64 %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %10, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = call i32 @git_rwlock_rdunlock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @filter_registry, i32 0, i32 0))
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = icmp eq %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @GIT_ERROR_FILTER, align 4
  %40 = call i32 @git_error_set(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

41:                                               ; preds = %34
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = call i32 @filter_initialize(%struct.TYPE_12__* %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %65

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_11__* @git_array_alloc(i32 %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %11, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %52, %50, %38, %23
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_rwlock_rdlock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_vector_search2(i64*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @git_vector_get(i32*, i64) #1

declare dso_local i32 @git_rwlock_rdunlock(i32*) #1

declare dso_local i32 @filter_initialize(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @git_array_alloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
