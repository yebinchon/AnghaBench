; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_find_origin.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_find_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__, i32, i64 }
%struct.TYPE_23__ = type { i8**, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_29__ = type { i32, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@GIT_DIFF_SKIP_BINARY_CHECK = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@paths_on_dup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_30__*, i32*, %struct.TYPE_29__*)* @find_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @find_origin(%struct.TYPE_30__* %0, i32* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_27__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = bitcast %struct.TYPE_26__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_26__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @git_commit_tree(i32** %10, i32* %18)
  %20 = icmp ne i64 0, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @git_commit_tree(i32** %11, i32* %22)
  %24 = icmp ne i64 0, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  br label %125

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @GIT_DIFF_SKIP_BINARY_CHECK, align 4
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8**
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  store i8** %40, i8*** %42, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @git_diff_tree_to_tree(i32** %8, i32 %45, i32* %46, i32* %47, %struct.TYPE_26__* %9)
  %49 = icmp ne i64 0, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  br label %125

51:                                               ; preds = %26
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @git_diff_num_deltas(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @git_blame__get_origin(%struct.TYPE_29__** %7, %struct.TYPE_30__* %56, i32* %57, i32 %60)
  br label %124

62:                                               ; preds = %51
  %63 = bitcast %struct.TYPE_27__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 bitcast (%struct.TYPE_27__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @git_diff_free(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @git_diff_tree_to_tree(i32** %8, i32 %70, i32* %71, i32* %72, %struct.TYPE_26__* %9)
  %74 = icmp ne i64 0, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %125

76:                                               ; preds = %62
  %77 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @git_diff_find_similar(i32* %79, %struct.TYPE_27__* %12)
  %81 = icmp ne i64 0, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %125

83:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %120, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @git_diff_num_deltas(i32* %86)
  %88 = trunc i64 %87 to i32
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call %struct.TYPE_28__* @git_diff_get_delta(i32* %91, i32 %92)
  store %struct.TYPE_28__* %93, %struct.TYPE_28__** %14, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @git_vector_bsearch(i32* null, %struct.TYPE_22__* %95, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %119, label %102

102:                                              ; preds = %90
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @git__strdup(i32 %108)
  %110 = inttoptr i64 %109 to i8*
  %111 = load i32, i32* @paths_on_dup, align 4
  %112 = call i32 @git_vector_insert_sorted(%struct.TYPE_22__* %104, i8* %110, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @make_origin(%struct.TYPE_29__** %7, i32* %113, i32 %117)
  br label %119

119:                                              ; preds = %102, %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %84

123:                                              ; preds = %84
  br label %124

124:                                              ; preds = %123, %55
  br label %125

125:                                              ; preds = %124, %82, %75, %50, %25
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @git_diff_free(i32* %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @git_tree_free(i32* %128)
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @git_tree_free(i32* %130)
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  ret %struct.TYPE_29__* %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_commit_tree(i32**, i32*) #2

declare dso_local i64 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_26__*) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_blame__get_origin(%struct.TYPE_29__**, %struct.TYPE_30__*, i32*, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i64 @git_diff_find_similar(i32*, %struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_28__* @git_diff_get_delta(i32*, i32) #2

declare dso_local i32 @git_vector_bsearch(i32*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @git_vector_insert_sorted(%struct.TYPE_22__*, i8*, i32) #2

declare dso_local i64 @git__strdup(i32) #2

declare dso_local i32 @make_origin(%struct.TYPE_29__**, i32*, i32) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
