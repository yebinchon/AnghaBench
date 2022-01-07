; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_stash_delta_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_stash_delta_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, %struct.TYPE_10__*, i32*)* @stash_delta_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @stash_delta_merge(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_10__* @git_diff__delta_dup(%struct.TYPE_10__* %21, i32* %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %4, align 8
  br label %37

32:                                               ; preds = %14, %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.TYPE_10__* @git_diff__merge_like_cgit(%struct.TYPE_10__* %33, %struct.TYPE_10__* %34, i32* %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %4, align 8
  br label %37

37:                                               ; preds = %32, %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %38
}

declare dso_local %struct.TYPE_10__* @git_diff__delta_dup(%struct.TYPE_10__*, i32*) #1

declare dso_local %struct.TYPE_10__* @git_diff__merge_like_cgit(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
