; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add_bypath.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add_bypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GIT_EDIRECTORY = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_add_bypath(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @index_entry_init(%struct.TYPE_12__** %6, %struct.TYPE_13__* %19, i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = call i32 @index_insert(%struct.TYPE_13__* %24, %struct.TYPE_12__** %6, i32 1, i32 0, i32 0, i32 1)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GIT_EDIRECTORY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %101

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @GIT_EDIRECTORY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @git_error_state_capture(i32* %9, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call i32 @INDEX_OWNER(%struct.TYPE_13__* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @git_submodule_lookup(i32** %8, i32 %43, i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GIT_ENOTFOUND, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 @git_error_state_restore(i32* %9)
  store i32 %50, i32* %3, align 4
  br label %101

51:                                               ; preds = %39
  %52 = call i32 @git_error_state_free(i32* %9)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GIT_EEXISTS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @add_repo_as_submodule(%struct.TYPE_12__** %6, %struct.TYPE_13__* %57, i8* %58)
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %101

63:                                               ; preds = %56
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32 @index_insert(%struct.TYPE_13__* %64, %struct.TYPE_12__** %6, i32 1, i32 0, i32 0, i32 1)
  store i32 %65, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %63
  br label %81

70:                                               ; preds = %51
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %101

75:                                               ; preds = %70
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @git_submodule_add_to_index(i32* %76, i32 0)
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @git_submodule_free(i32* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %101

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %35
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @index_conflict_to_reuc(%struct.TYPE_13__* %83, i8* %84)
  store i32 %85, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @GIT_ENOTFOUND, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %101

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @git_tree_cache_invalidate_path(i32 %96, i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %93, %91, %75, %73, %67, %61, %49, %33
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_entry_init(%struct.TYPE_12__**, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @index_insert(%struct.TYPE_13__*, %struct.TYPE_12__**, i32, i32, i32, i32) #1

declare dso_local i32 @git_error_state_capture(i32*, i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @INDEX_OWNER(%struct.TYPE_13__*) #1

declare dso_local i32 @git_error_state_restore(i32*) #1

declare dso_local i32 @git_error_state_free(i32*) #1

declare dso_local i32 @add_repo_as_submodule(%struct.TYPE_12__**, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @git_submodule_add_to_index(i32*, i32) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @index_conflict_to_reuc(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @git_tree_cache_invalidate_path(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
