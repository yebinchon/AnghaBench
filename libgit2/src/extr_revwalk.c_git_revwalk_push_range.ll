; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk_push_range.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk_push_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@GIT_REVWALK__PUSH_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid revspec: range not provided\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@GIT_REVPARSE_MERGE_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"symmetric differences not implemented in revwalk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revwalk_push_range(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_REVWALK__PUSH_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @git_revparse(%struct.TYPE_11__* %7, i32 %12, i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %24 = call i32 @git_error_set(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %25, i32* %8, align 4
  br label %52

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %34 = call i32 @git_error_set(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %35, i32* %8, align 4
  br label %52

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_object_id(i32 %40)
  %42 = call i32 @git_revwalk__push_commit(%struct.TYPE_10__* %38, i32 %41, %struct.TYPE_9__* %6)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %52

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @git_object_id(i32 %49)
  %51 = call i32 @git_revwalk__push_commit(%struct.TYPE_10__* %47, i32 %50, %struct.TYPE_9__* %6)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %44, %32, %22
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @git_object_free(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @git_object_free(i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %52, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_revparse(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_revwalk__push_commit(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @git_object_id(i32) #2

declare dso_local i32 @git_object_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
