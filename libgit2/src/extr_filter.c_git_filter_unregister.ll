; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_unregister.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }

@GIT_FILTER_CRLF = common dso_local global i32 0, align 4
@GIT_FILTER_IDENT = common dso_local global i32 0, align 4
@GIT_ERROR_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot unregister filter '%s'\00", align 1
@filter_registry = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to lock filter registry\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"cannot find filter '%s' to unregister\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filter_unregister(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i32, i32* @GIT_FILTER_CRLF, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i32 %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @GIT_FILTER_IDENT, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i32 %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @GIT_ERROR_FILTER, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32, i8*, ...) @git_error_set(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %2, align 4
  br label %82

22:                                               ; preds = %13
  %23 = call i64 @git_rwlock_wrlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @filter_registry, i32 0, i32 0))
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @GIT_ERROR_OS, align 4
  %27 = call i32 (i32, i8*, ...) @git_error_set(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %82

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call %struct.TYPE_6__* @filter_registry_lookup(i64* %4, i8* %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %5, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @GIT_ERROR_FILTER, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i32, i8*, ...) @git_error_set(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %36, i32* %6, align 4
  br label %79

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @git_vector_remove(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @filter_registry, i32 0, i32 1), i64 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %53, align 8
  %55 = icmp ne i32 (%struct.TYPE_7__*)* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 %61(%struct.TYPE_7__* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %56, %49, %44, %37
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @git__free(%struct.TYPE_6__* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @git__free(%struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = call i32 @git__free(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %68, %32
  %80 = call i32 @git_rwlock_wrunlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @filter_registry, i32 0, i32 0))
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %25, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i64 @git_rwlock_wrlock(i32*) #1

declare dso_local %struct.TYPE_6__* @filter_registry_lookup(i64*, i8*) #1

declare dso_local i32 @git_vector_remove(i32*, i64) #1

declare dso_local i32 @git__free(%struct.TYPE_6__*) #1

declare dso_local i32 @git_rwlock_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
