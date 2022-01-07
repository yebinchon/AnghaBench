; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_prune.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@GIT_WORKTREE_PRUNE_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@GIT_WORKTREE_PRUNE_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"git_worktree_prune_options\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/worktrees/%s\00", align 1
@GIT_ERROR_WORKTREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"worktree gitdir '%s' does not exist\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@GIT_WORKTREE_PRUNE_WORKING_TREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"working tree '%s' does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_worktree_prune(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_WORKTREE_PRUNE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_18__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = load i32, i32* @GIT_WORKTREE_PRUNE_OPTIONS_VERSION, align 4
  %13 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_16__* %11, i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @memcpy(%struct.TYPE_16__* %5, %struct.TYPE_16__* %17, i32 4)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @git_worktree_is_prunable(%struct.TYPE_17__* %20, %struct.TYPE_16__* %5)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %8, align 4
  br label %91

24:                                               ; preds = %19
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @git_buf_printf(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %91

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @git_path_exists(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @git_error_set(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %8, align 4
  br label %91

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %48 = call i32 @git_futils_rmdir_r(i32 %46, i32* null, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %91

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GIT_WORKTREE_PRUNE_WORKING_TREE, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @git_path_exists(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57, %51
  br label %91

64:                                               ; preds = %57
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @git_path_dirname(i32 %67)
  store i8* %68, i8** %7, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %91

71:                                               ; preds = %64
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @git_buf_attach(%struct.TYPE_18__* %6, i8* %72, i32 0)
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @git_path_exists(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @git_error_set(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %8, align 4
  br label %91

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %87 = call i32 @git_futils_rmdir_r(i32 %85, i32* null, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %89, %78, %70, %63, %50, %39, %33, %23
  %92 = call i32 @git_buf_dispose(%struct.TYPE_18__* %6)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_16__*, i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @git_worktree_is_prunable(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_18__*, i8*, i32, i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_futils_rmdir_r(i32, i32*, i32) #2

declare dso_local i8* @git_path_dirname(i32) #2

declare dso_local i32 @git_buf_attach(%struct.TYPE_18__*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
