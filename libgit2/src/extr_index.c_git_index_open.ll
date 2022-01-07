; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@git_index_entry_cmp = common dso_local global i32 0, align 4
@conflict_name_cmp = common dso_local global i32 0, align 4
@reuc_cmp = common dso_local global i32 0, align 4
@git__strcmp_cb = common dso_local global i32 0, align 4
@git_index_entry_srch = common dso_local global i32 0, align 4
@index_entry_srch_path = common dso_local global i32 0, align 4
@reuc_srch = common dso_local global i32 0, align 4
@INDEX_VERSION_NUMBER_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_open(%struct.TYPE_9__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_9__** %8)
  %10 = call %struct.TYPE_9__* @git__calloc(i32 1, i32 52)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = call i32 @git_pool_init(i32* %14, i32 1)
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @git__strdup(i8* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %96

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @git_path_exists(i32 %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 11
  %41 = load i32, i32* @git_index_entry_cmp, align 4
  %42 = call i64 @git_vector_init(i32* %40, i32 32, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 10
  %47 = call i64 @git_idxmap_new(i32* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 9
  %52 = load i32, i32* @conflict_name_cmp, align 4
  %53 = call i64 @git_vector_init(i32* %51, i32 8, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 8
  %58 = load i32, i32* @reuc_cmp, align 4
  %59 = call i64 @git_vector_init(i32* %57, i32 8, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 7
  %64 = load i32, i32* @git_index_entry_cmp, align 4
  %65 = call i64 @git_vector_init(i32* %63, i32 8, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55, %49, %44, %38
  br label %96

68:                                               ; preds = %61
  %69 = load i32, i32* @git__strcmp_cb, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @git_index_entry_srch, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @index_entry_srch_path, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @reuc_srch, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @INDEX_VERSION_NUMBER_DEFAULT, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %68
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = call i32 @git_index_read(%struct.TYPE_9__* %87, i32 1)
  store i32 %88, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %96

91:                                               ; preds = %86, %68
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_9__* %94)
  store i32 0, i32* %3, align 4
  br label %103

96:                                               ; preds = %90, %67, %27
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = call i32 @git_pool_clear(i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = call i32 @git_index_free(%struct.TYPE_9__* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @assert(%struct.TYPE_9__**) #1

declare dso_local %struct.TYPE_9__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__*) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i32 @git__strdup(i8*) #1

declare dso_local i32 @git_path_exists(i32) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i64 @git_idxmap_new(i32*) #1

declare dso_local i32 @git_index_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_9__*) #1

declare dso_local i32 @git_pool_clear(i32*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
