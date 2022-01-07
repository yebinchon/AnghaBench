; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodules_from_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodules_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_SUBMODULE_STATUS__INDEX_NOT_SUBMODULE = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @submodules_from_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodules_from_index(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @git_index_owner(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @load_submodule_names(i32** %10, i32 %14, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %96

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_index_owner(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @git_iterator_for_index(i32** %8, i32 %21, i32* %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %96

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %89, %26
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @git_iterator_advance(%struct.TYPE_9__** %9, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %90

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @git_strmap_get(i32* %33, i8* %36)
  %38 = bitcast i8* %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %11, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @S_ISGITLINK(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = call i32 @submodule_update_from_index_entry(%struct.TYPE_8__* %47, %struct.TYPE_9__* %48)
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @GIT_SUBMODULE_STATUS__INDEX_NOT_SUBMODULE, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %46
  br label %89

57:                                               ; preds = %32
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @S_ISGITLINK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @git_strmap_get(i32* %64, i8* %67)
  store i8* %68, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @git_index_owner(i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @submodule_get_or_create(%struct.TYPE_8__** %11, i32 %76, i32* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = call i32 @submodule_update_from_index_entry(%struct.TYPE_8__* %82, %struct.TYPE_9__* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = call i32 @git_submodule_free(%struct.TYPE_8__* %85)
  br label %87

87:                                               ; preds = %81, %74
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88, %56
  br label %27

90:                                               ; preds = %27
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @GIT_ITEROVER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %90
  br label %96

96:                                               ; preds = %95, %25, %18
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @git_iterator_free(i32* %97)
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @free_submodule_names(i32* %99)
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @load_submodule_names(i32**, i32, i32*) #1

declare dso_local i32 @git_index_owner(i32*) #1

declare dso_local i32 @git_iterator_for_index(i32**, i32, i32*, i32*) #1

declare dso_local i32 @git_iterator_advance(%struct.TYPE_9__**, i32*) #1

declare dso_local i8* @git_strmap_get(i32*, i8*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @submodule_update_from_index_entry(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @submodule_get_or_create(%struct.TYPE_8__**, i32, i32*, i8*) #1

declare dso_local i32 @git_submodule_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @free_submodule_names(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
