; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_open_worktree_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_open_worktree_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"commondir\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gitdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**, i8*, i8*, i8*)* @open_worktree_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_worktree_dir(%struct.TYPE_6__** %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %9, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @is_worktree_dir(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  br label %80

17:                                               ; preds = %4
  %18 = call %struct.TYPE_6__* @git__calloc(i32 1, i32 48)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %10, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %11, align 4
  br label %80

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @git__strdup(i8* %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 6
  store i32* %24, i32** %26, align 8
  %27 = icmp eq i32* %24, null
  br i1 %27, label %60, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @git_worktree__read_link(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = icmp eq i32* %31, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @git_worktree__read_link(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = icmp eq i32* %38, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @git__strdup(i8* %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = icmp eq i32* %48, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32* @git_path_dirname(i32* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = icmp eq i32* %56, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %45, %35, %28, %21
  store i32 -1, i32* %11, align 4
  br label %80

61:                                               ; preds = %52
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @git_path_prettify_dir(i32* %9, i8* %62, i32* null)
  store i32 %63, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %80

66:                                               ; preds = %61
  %67 = call i32 @git_buf_detach(i32* %9)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = call i32 @git_worktree_is_locked(i32* null, %struct.TYPE_6__* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %79, align 8
  br label %80

80:                                               ; preds = %66, %65, %60, %20, %16
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = call i32 @git_worktree_free(%struct.TYPE_6__* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = call i32 @git_buf_dispose(i32* %9)
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @is_worktree_dir(i8*) #1

declare dso_local %struct.TYPE_6__* @git__calloc(i32, i32) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i8* @git_worktree__read_link(i8*, i8*) #1

declare dso_local i32* @git_path_dirname(i32*) #1

declare dso_local i32 @git_path_prettify_dir(i32*, i8*, i32*) #1

declare dso_local i32 @git_buf_detach(i32*) #1

declare dso_local i32 @git_worktree_is_locked(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @git_worktree_free(%struct.TYPE_6__*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
