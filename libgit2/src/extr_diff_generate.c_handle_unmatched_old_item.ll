; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_handle_unmatched_old_item.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_handle_unmatched_old_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@GIT_DELTA_CONFLICTED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_TYPECHANGE_TREES = common dso_local global i32 0, align 4
@GIT_DELTA_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @handle_unmatched_old_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_unmatched_old_item(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load i32, i32* @GIT_DELTA_DELETED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = call i64 @git_index_entry_is_conflict(%struct.TYPE_15__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @GIT_DELTA_CONFLICTED, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = call i32 @diff_delta__from_one(i32* %18, i32 %19, %struct.TYPE_15__* %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %17
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE_TREES, align 4
  %30 = call i64 @DIFF_FLAG_IS_SET(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = call i64 @entry_is_prefixed(i32* %33, %struct.TYPE_15__* %36, %struct.TYPE_15__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = call %struct.TYPE_13__* @diff_delta__last_for_item(i32* %43, %struct.TYPE_15__* %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %8, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* @GIT_DELTA_TYPECHANGE, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %69 = call i64 @DIFF_FLAG_ISNT_SET(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @iterator_advance(%struct.TYPE_15__** %73, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %86

78:                                               ; preds = %66, %58
  br label %79

79:                                               ; preds = %78, %32, %27
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @iterator_advance(%struct.TYPE_15__** %81, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %71, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @git_index_entry_is_conflict(%struct.TYPE_15__*) #1

declare dso_local i32 @diff_delta__from_one(i32*, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @DIFF_FLAG_IS_SET(i32*, i32) #1

declare dso_local i64 @entry_is_prefixed(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @diff_delta__last_for_item(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @DIFF_FLAG_ISNT_SET(i32*, i32) #1

declare dso_local i32 @iterator_advance(%struct.TYPE_15__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
