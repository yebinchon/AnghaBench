; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_treebuilder_insert.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_treebuilder_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@GIT_ERROR_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to insert %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_treebuilder_insert(%struct.TYPE_11__** %0, %struct.TYPE_10__* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %5
  %23 = phi i1 [ false, %16 ], [ false, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @check_entry(i32 %28, i8* %29, i32* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %84

36:                                               ; preds = %22
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call %struct.TYPE_11__* @git_strmap_get(i32 %39, i8* %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %12, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @git_oid_cpy(i32* %47, i32* %48)
  br label %74

50:                                               ; preds = %36
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = call %struct.TYPE_11__* @alloc_entry(i8* %51, i32 %53, i32* %54)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %12, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = call i32 @git_strmap_set(i32 %60, i32 %63, %struct.TYPE_11__* %64)
  store i32 %65, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %50
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = call i32 @git_tree_entry_free(%struct.TYPE_11__* %68)
  %70 = load i32, i32* @GIT_ERROR_TREE, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @git_error_set(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %71)
  store i32 -1, i32* %6, align 4
  br label %84

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %79 = icmp ne %struct.TYPE_11__** %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %67, %34
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_entry(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @git_strmap_get(i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @alloc_entry(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__*) #1

declare dso_local i32 @git_strmap_set(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @git_tree_entry_free(%struct.TYPE_11__*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
