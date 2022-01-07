; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_tree__write_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_git_tree__write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cannot create a tree from a not fully merged index.\00", align 1
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_tree__write_index(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ false, %15 ], [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call i64 @git_index_has_conflicts(%struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %30 = call i32 @git_error_set(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @GIT_EUNMERGED, align 4
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = call i32 @git_oid_cpy(i32* %45, i32* %49)
  store i32 0, i32* %4, align 4
  br label %97

51:                                               ; preds = %37, %32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = call i32 @git_index__set_ignore_case(%struct.TYPE_7__* %57, i32 0)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = call i32 @write_tree(i32* %60, i32* %61, %struct.TYPE_7__* %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %10)
  store i32 %63, i32* %8, align 4
  %64 = call i32 @git_buf_dispose(i32* %10)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = call i32 @git_index__set_ignore_case(%struct.TYPE_7__* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %97

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i32 @git_pool_clear(i32* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @git_tree_lookup(i32** %9, i32* %81, i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %97

87:                                               ; preds = %77
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @git_tree_cache_read_tree(%struct.TYPE_8__** %89, i32* %90, i32* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @git_tree_free(i32* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %87, %85, %75, %44, %28
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_index_has_conflicts(%struct.TYPE_7__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_index__set_ignore_case(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @write_tree(i32*, i32*, %struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_pool_clear(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_tree_cache_read_tree(%struct.TYPE_8__**, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
