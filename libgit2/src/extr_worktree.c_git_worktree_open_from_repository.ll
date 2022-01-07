; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_open_from_repository.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_open_from_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_ERROR_WORKTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot open worktree of a non-worktree repo\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_worktree_open_from_repository(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @git_repository_is_worktree(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @GIT_ERROR_WORKTREE, align 4
  %16 = call i32 @git_error_set(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @git_repository_path(i32* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @git_repository_commondir(i32* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @git_path_prettify_dir(%struct.TYPE_5__* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %38

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @git_path_basename(i8* %27)
  store i8* %28, i8** %8, align 8
  %29 = load i32**, i32*** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @open_worktree_dir(i32** %29, i32 %31, i8* %32, i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %36, %25, %14
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @git__free(i8* %39)
  %41 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_repository_is_worktree(i32*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i8* @git_repository_path(i32*) #2

declare dso_local i8* @git_repository_commondir(i32*) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i8* @git_path_basename(i8*) #2

declare dso_local i32 @open_worktree_dir(i32**, i32, i8*, i8*) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
