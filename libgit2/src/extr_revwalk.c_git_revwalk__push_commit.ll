; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk__push_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk__push_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }

@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@GIT_EPEEL = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"object is not a committish\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revwalk__push_commit(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %19 = call i32 @git_object_lookup(i32** %11, i32 %16, i32* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %111

23:                                               ; preds = %3
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %26 = call i32 @git_object_peel(i32** %10, i32* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @git_object_free(i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GIT_ENOTFOUND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GIT_EPEEL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %32, %23
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %111

46:                                               ; preds = %40
  %47 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %48 = call i32 @git_error_set(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %111

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %111

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @git_object_id(i32* %55)
  %57 = call i32 @git_oid_cpy(i32* %8, i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @git_object_free(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = call %struct.TYPE_12__* @git_revwalk__commit_lookup(%struct.TYPE_11__* %60, i32* %8)
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %12, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = icmp eq %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %111

65:                                               ; preds = %54
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %111

71:                                               ; preds = %65
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %84

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %13, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %99 = call i32* @git_commit_list_insert_by_date(%struct.TYPE_12__* %98, i32** %13)
  %100 = icmp eq i32* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97, %84
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %103 = call i32* @git_commit_list_insert(%struct.TYPE_12__* %102, i32** %13)
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97
  %106 = call i32 (...) @git_error_set_oom()
  store i32 -1, i32* %4, align 4
  br label %111

107:                                              ; preds = %101
  %108 = load i32*, i32** %13, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32* %108, i32** %110, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %105, %70, %64, %52, %46, %45, %21
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local %struct.TYPE_12__* @git_revwalk__commit_lookup(%struct.TYPE_11__*, i32*) #1

declare dso_local i32* @git_commit_list_insert_by_date(%struct.TYPE_12__*, i32**) #1

declare dso_local i32* @git_commit_list_insert(%struct.TYPE_12__*, i32**) #1

declare dso_local i32 @git_error_set_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
