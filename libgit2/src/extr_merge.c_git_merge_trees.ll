; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_trees.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_MERGE_SKIP_REUC = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_trees(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %21 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %22 = load i32**, i32*** %8, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %24, %6
  %28 = phi i1 [ false, %6 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %83

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GIT_MERGE_SKIP_REUC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %36
  store i32* null, i32** %19, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @git_tree_id(i32* %44)
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %20, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32* @git_tree_id(i32* %50)
  %52 = call i32 @git_oid_cmp(i32* %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %19, align 8
  br label %68

56:                                               ; preds = %48, %43
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32*, i32** %20, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32* @git_tree_id(i32* %61)
  %63 = call i32 @git_oid_cmp(i32* %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32*, i32** %11, align 8
  store i32* %66, i32** %19, align 8
  br label %67

67:                                               ; preds = %65, %59, %56
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i32*, i32** %19, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32**, i32*** %8, align 8
  %73 = call i32 @git_index_new(i32** %72)
  store i32 %73, i32* %18, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = call i32 @git_index_read_tree(i32* %77, i32* %78)
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %7, align 4
  br label %114

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %36, %33, %27
  %84 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @git_iterator_for_tree(i32** %14, i32* %86, %struct.TYPE_8__* %17)
  store i32 %87, i32* %18, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @git_iterator_for_tree(i32** %15, i32* %90, %struct.TYPE_8__* %17)
  store i32 %91, i32* %18, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @git_iterator_for_tree(i32** %16, i32* %94, %struct.TYPE_8__* %17)
  store i32 %95, i32* %18, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89, %83
  br label %106

98:                                               ; preds = %93
  %99 = load i32**, i32*** %8, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = call i32 @git_merge__iterators(i32** %99, i32* %100, i32* %101, i32* %102, i32* %103, %struct.TYPE_7__* %104)
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %98, %97
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @git_iterator_free(i32* %107)
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @git_iterator_free(i32* %109)
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @git_iterator_free(i32* %111)
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106, %80
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @git_tree_id(i32*) #2

declare dso_local i32 @git_oid_cmp(i32*, i32*) #2

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_index_read_tree(i32*, i32*) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_merge__iterators(i32**, i32*, i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
