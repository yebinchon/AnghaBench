; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodules_from_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodules_from_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @submodules_from_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodules_from_head(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @git_tree_owner(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @load_submodule_names(i32** %10, i32 %14, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %102

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_iterator_for_tree(i32** %8, i32* %20, i32* null)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %102

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %95, %24
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @git_iterator_advance(%struct.TYPE_8__** %9, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %96

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @git_strmap_get(i32* %31, i8* %34)
  %36 = bitcast i8* %35 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %11, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISGITLINK(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = call i32 @submodule_update_from_head_data(%struct.TYPE_7__* %45, i32 %48, i32* %50)
  br label %58

52:                                               ; preds = %38
  %53 = load i32, i32* @GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %44
  br label %95

59:                                               ; preds = %30
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISGITLINK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %59
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @git_strmap_get(i32* %66, i8* %69)
  store i8* %70, i8** %12, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %12, align 8
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @git_tree_owner(i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @submodule_get_or_create(%struct.TYPE_7__** %11, i32 %78, i32* %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @submodule_update_from_head_data(%struct.TYPE_7__* %84, i32 %87, i32* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = call i32 @git_submodule_free(%struct.TYPE_7__* %91)
  br label %93

93:                                               ; preds = %83, %76
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94, %58
  br label %25

96:                                               ; preds = %25
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @GIT_ITEROVER, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %96
  br label %102

102:                                              ; preds = %101, %23, %18
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @git_iterator_free(i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @free_submodule_names(i32* %105)
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @load_submodule_names(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_owner(i32*) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #1

declare dso_local i32 @git_iterator_advance(%struct.TYPE_8__**, i32*) #1

declare dso_local i8* @git_strmap_get(i32*, i8*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @submodule_update_from_head_data(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @submodule_get_or_create(%struct.TYPE_7__**, i32, i32*, i8*) #1

declare dso_local i32 @git_submodule_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @free_submodule_names(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
