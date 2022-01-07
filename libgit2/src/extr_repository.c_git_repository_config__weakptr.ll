; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_config__weakptr.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_config__weakptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_config__weakptr(i32** %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  %16 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %19, i32* %9, align 4
  %20 = call i32 @git_config_find_global(i32* %6)
  %21 = call i32 @git_config_find_xdg(i32* %7)
  %22 = call i32 @git_config_find_system(i32* %8)
  %23 = call i32 @git_config_find_programdata(i32* %9)
  %24 = call i64 @git_buf_len(i32* %6)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 @git_config__global_location(i32* %6)
  br label %28

28:                                               ; preds = %26, %15
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = call i32 @path_unless_empty(i32* %6)
  %31 = call i32 @path_unless_empty(i32* %7)
  %32 = call i32 @path_unless_empty(i32* %8)
  %33 = call i32 @path_unless_empty(i32* %9)
  %34 = call i32 @load_config(i32** %10, %struct.TYPE_5__* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %28
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = call i32 @GIT_REFCOUNT_OWN(i32* %38, %struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @git__compare_and_swap(i32** %42, i32* null, i32* %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @GIT_REFCOUNT_OWN(i32* %48, %struct.TYPE_5__* null)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @git_config_free(i32* %50)
  br label %52

52:                                               ; preds = %47, %37
  br label %53

53:                                               ; preds = %52, %28
  %54 = call i32 @git_buf_dispose(i32* %6)
  %55 = call i32 @git_buf_dispose(i32* %7)
  %56 = call i32 @git_buf_dispose(i32* %8)
  %57 = call i32 @git_buf_dispose(i32* %9)
  br label %58

58:                                               ; preds = %53, %2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32**, i32*** %3, align 8
  store i32* %61, i32** %62, align 8
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @git_config_find_global(i32*) #1

declare dso_local i32 @git_config_find_xdg(i32*) #1

declare dso_local i32 @git_config_find_system(i32*) #1

declare dso_local i32 @git_config_find_programdata(i32*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @git_config__global_location(i32*) #1

declare dso_local i32 @load_config(i32**, %struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @path_unless_empty(i32*) #1

declare dso_local i32 @GIT_REFCOUNT_OWN(i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @git__compare_and_swap(i32**, i32*, i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
