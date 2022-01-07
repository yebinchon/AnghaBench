; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_validate_tree_and_parents.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_validate_tree_and_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed to create commit: current tip is not the first parent\00", align 1
@GIT_EMODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32* (i64, i8*)*, i8*, i32*, i32)* @validate_tree_and_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tree_and_parents(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* (i64, i8*)* %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32* (i64, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* (i64, i8*)* %3, i32* (i64, i8*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %26 = call i32 @git_object__is_valid(i32* %23, i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 -1, i32* %8, align 4
  br label %85

29:                                               ; preds = %22, %7
  store i64 0, i64* %16, align 8
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32* (i64, i8*)*, i32* (i64, i8*)** %12, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32* %31(i64 %32, i8* %33)
  store i32* %34, i32** %19, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %43 = call i32 @git_object__is_valid(i32* %40, i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 -1, i32* %17, align 4
  br label %79

46:                                               ; preds = %39, %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32* @git_array_alloc(i64 %49)
  store i32* %50, i32** %18, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %51)
  %53 = load i32*, i32** %18, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = call i32 @git_oid_cpy(i32* %53, i32* %54)
  %56 = load i64, i64* %16, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %16, align 8
  br label %30

58:                                               ; preds = %30
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %14, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @git_array_get(i64 %70, i32 0)
  %72 = call i64 @git_oid_cmp(i32* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66, %61
  %75 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %76 = call i32 @git_error_set(i32 %75, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @GIT_EMODIFIED, align 4
  store i32 %77, i32* %17, align 4
  br label %79

78:                                               ; preds = %66, %58
  store i32 0, i32* %8, align 4
  br label %85

79:                                               ; preds = %74, %45
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @git_array_clear(i64 %82)
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %79, %78, %28
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @git_object__is_valid(i32*, i32*, i32) #1

declare dso_local i32* @git_array_alloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i64 @git_oid_cmp(i32*, i32) #1

declare dso_local i32 @git_array_get(i64, i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_array_clear(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
