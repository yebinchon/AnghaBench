; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_is_prunable.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_is_prunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_WORKTREE_PRUNE_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_WORKTREE_PRUNE_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"git_worktree_prune_options\00", align 1
@GIT_WORKTREE_PRUNE_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no reason given\00", align 1
@GIT_ERROR_WORKTREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"not pruning locked working tree: '%s'\00", align 1
@GIT_WORKTREE_PRUNE_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"not pruning valid working tree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_worktree_is_prunable(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_WORKTREE_PRUNE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = load i32, i32* @GIT_WORKTREE_PRUNE_OPTIONS_VERSION, align 4
  %12 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_12__* %10, i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @memcpy(%struct.TYPE_12__* %7, %struct.TYPE_12__* %16, i32 4)
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GIT_WORKTREE_PRUNE_LOCKED, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @git_worktree_is_locked(%struct.TYPE_13__* %6, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @git_buf_attach_notowned(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 15)
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @git_error_set(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @git_buf_dispose(%struct.TYPE_13__* %6)
  store i32 0, i32* %3, align 4
  br label %54

40:                                               ; preds = %24, %18
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GIT_WORKTREE_PRUNE_VALID, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @git_worktree_validate(i32* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %52 = call i32 (i32, i8*, ...) @git_error_set(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %46, %40
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %34
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #2

declare dso_local i64 @git_worktree_is_locked(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @git_buf_attach_notowned(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*, ...) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

declare dso_local i64 @git_worktree_validate(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
