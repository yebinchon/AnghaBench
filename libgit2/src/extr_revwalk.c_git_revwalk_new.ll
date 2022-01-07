; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32, i32, i32 }

@git_commit_list_time_cmp = common dso_local global i32 0, align 4
@COMMIT_ALLOC = common dso_local global i32 0, align 4
@revwalk_next_unsorted = common dso_local global i32 0, align 4
@revwalk_enqueue_unsorted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revwalk_new(%struct.TYPE_6__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call %struct.TYPE_6__* @git__calloc(i32 1, i32 48)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  %12 = call i64 @git_oidmap_new(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* @git_commit_list_time_cmp, align 4
  %19 = call i64 @git_pqueue_init(i32* %17, i32 0, i32 8, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %45

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* @COMMIT_ALLOC, align 4
  %26 = call i32 @git_pool_init(i32* %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32* @revwalk_next_unsorted, i32** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32* @revwalk_enqueue_unsorted, i32** %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @git_repository_odb(i32* %35, i32* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = call i32 @git_revwalk_free(%struct.TYPE_6__* %40)
  store i32 -1, i32* %3, align 4
  br label %45

42:                                               ; preds = %22
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39, %21, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_6__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__*) #1

declare dso_local i64 @git_oidmap_new(i32*) #1

declare dso_local i64 @git_pqueue_init(i32*, i32, i32, i32) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i64 @git_repository_odb(i32*, i32*) #1

declare dso_local i32 @git_revwalk_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
