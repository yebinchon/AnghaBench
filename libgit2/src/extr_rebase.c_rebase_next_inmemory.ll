; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_next_inmemory.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_next_inmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_7__, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_ERROR_REBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot rebase a merge commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**, %struct.TYPE_9__*)* @rebase_next_inmemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_next_inmemory(%struct.TYPE_8__** %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_8__* @git_array_get(i32 %17, i32 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @git_commit_lookup(i32** %5, i32 %24, i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @git_commit_tree(i32** %7, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %2
  br label %95

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @git_commit_parentcount(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %40 = call i32 @git_error_set(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %95

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @git_commit_parent(i32** %6, i32* %45, i32 0)
  store i32 %46, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @git_commit_tree(i32** %9, i32* %49)
  store i32 %50, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  br label %95

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @git_commit_tree(i32** %8, i32* %58)
  store i32 %59, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @git_merge_trees(i32** %11, i32 %64, i32* %65, i32* %66, i32* %67, i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61, %55
  br label %95

74:                                               ; preds = %61
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  store i32* null, i32** %11, align 8
  br label %92

83:                                               ; preds = %74
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @git_index_read_index(i32* %86, i32* %87)
  store i32 %88, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %79
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %94, align 8
  br label %95

95:                                               ; preds = %92, %90, %73, %52, %38, %33
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @git_commit_free(i32* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @git_commit_free(i32* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @git_tree_free(i32* %100)
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @git_tree_free(i32* %102)
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @git_tree_free(i32* %104)
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @git_index_free(i32* %106)
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_8__* @git_array_get(i32, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local i32 @git_merge_trees(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_index_read_index(i32*, i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
