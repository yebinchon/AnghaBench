; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_tree_entry_bypath.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_tree_entry_bypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@GIT_ERROR_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid tree path given\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"the path '%.*s' does not exist in the given tree\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"the path '%.*s' exists but is not a tree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_tree_entry_bypath(%struct.TYPE_14__** %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @subpath_len(i8* %12)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @GIT_ERROR_TREE, align 4
  %18 = call i32 (i32, i8*, ...) @git_error_set(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call %struct.TYPE_14__* @entry_fromname(%struct.TYPE_15__* %21, i8* %22, i64 %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = icmp eq %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @GIT_ERROR_TREE, align 4
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32, i8*, ...) @git_error_set(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %33, i32* %4, align 4
  br label %87

34:                                               ; preds = %20
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %65 [
    i32 47, label %40
    i32 0, label %61
  ]

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = call i32 @git_tree_entry__is_tree(%struct.TYPE_14__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @GIT_ERROR_TREE, align 4
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i32, i8*, ...) @git_error_set(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %48)
  %50 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %50, i32* %4, align 4
  br label %87

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %65

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %34, %60
  %62 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = call i32 @git_tree_entry_dup(%struct.TYPE_14__** %62, %struct.TYPE_14__* %63)
  store i32 %64, i32* %4, align 4
  br label %87

65:                                               ; preds = %34, %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @git_tree_lookup(%struct.TYPE_15__** %9, i32 %69, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %87

76:                                               ; preds = %65
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i32 @git_tree_entry_bypath(%struct.TYPE_14__** %77, %struct.TYPE_15__* %78, i8* %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = call i32 @git_tree_free(%struct.TYPE_15__* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %76, %75, %61, %44, %27, %16
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @subpath_len(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @entry_fromname(%struct.TYPE_15__*, i8*, i64) #1

declare dso_local i32 @git_tree_entry__is_tree(%struct.TYPE_14__*) #1

declare dso_local i32 @git_tree_entry_dup(%struct.TYPE_14__**, %struct.TYPE_14__*) #1

declare dso_local i64 @git_tree_lookup(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @git_tree_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
