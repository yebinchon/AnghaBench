; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_git_checkout_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_git_checkout_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"must provide either repository or tree to checkout\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"object to checkout does not match repository\00", align 1
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"provided object cannot be peeled to a tree\00", align 1
@GIT_EUNBORNBRANCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"HEAD could not be peeled to a tree and no treeish given\00", align 1
@GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_checkout_tree(i32* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 8, i1 false)
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %21 = call i32 @git_error_set(i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %114

22:                                               ; preds = %16, %3
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @git_object_owner(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %35 = call i32 @git_error_set(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %114

36:                                               ; preds = %28, %25, %22
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @git_object_owner(i32* %40)
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %48 = call i64 @git_object_peel(i32** %10, i32* %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %52 = call i32 @git_error_set(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %114

53:                                               ; preds = %45
  br label %68

54:                                               ; preds = %42
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @checkout_lookup_head_tree(i32** %10, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @GIT_EUNBORNBRANCH, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %64 = call i32 @git_error_set(i32 %63, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %114

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @git_repository_index(i32** %9, i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %114

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %84, %77, %74
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @git_iterator_for_tree(i32** %11, i32* %98, %struct.TYPE_11__* %12)
  store i32 %99, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = call i32 @git_checkout_iterator(i32* %102, i32* %103, %struct.TYPE_12__* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @git_iterator_free(i32* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @git_index_free(i32* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @git_tree_free(i32* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %106, %72, %65, %50, %33, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32* @git_object_owner(i32*) #2

declare dso_local i64 @git_object_peel(i32**, i32*, i32) #2

declare dso_local i32 @checkout_lookup_head_tree(i32**, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_checkout_iterator(i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
