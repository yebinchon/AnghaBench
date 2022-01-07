; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_open_bare.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_open_bare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_REPOSITORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"path is not a repository: %s\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_open_bare(%struct.TYPE_5__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %8, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @git_path_prettify_dir(i32* %7, i8* %12, i32* null)
  store i32 %13, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = call i32 @valid_repository_path(i32* %7, i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = call i32 @git_buf_dispose(i32* %7)
  %22 = call i32 @git_buf_dispose(i32* %8)
  %23 = load i32, i32* @GIT_ERROR_REPOSITORY, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @git_error_set(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %17
  %28 = call %struct.TYPE_5__* (...) @repository_alloc()
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %29)
  %31 = call i8* @git_buf_detach(i32* %7)
  %32 = bitcast i8* %31 to %struct.TYPE_5__*
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %37)
  %39 = call i8* @git_buf_detach(i32* %8)
  %40 = bitcast i8* %39 to %struct.TYPE_5__*
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %27, %20, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @git_path_prettify_dir(i32*, i8*, i32*) #1

declare dso_local i32 @valid_repository_path(i32*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @repository_alloc(...) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__*) #1

declare dso_local i8* @git_buf_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
