; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add_from_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [84 x i8] c"could not initialize index entry. Index is not backed up by an existing repository.\00", align 1
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid filemode\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"buffer is too large\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_add_from_buffer(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi i1 [ false, %4 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = call i32* @INDEX_OWNER(%struct.TYPE_14__* %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @create_index_error(i32 -1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  br label %96

29:                                               ; preds = %20
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @is_file_or_link(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %37 = call i32 @git_error_set(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %96

38:                                               ; preds = %29
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @UINT32_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %44 = call i32 @git_error_set(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %96

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = call i64 @index_entry_dup(%struct.TYPE_13__** %10, %struct.TYPE_14__* %46, %struct.TYPE_13__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %96

51:                                               ; preds = %45
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = call i32* @INDEX_OWNER(%struct.TYPE_14__* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @git_blob_create_from_buffer(i32* %12, i32* %53, i8* %54, i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = call i32 @index_entry_free(%struct.TYPE_13__* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %96

63:                                               ; preds = %51
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = call i32 @git_oid_cpy(i32* %65, i32* %12)
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = call i32 @index_insert(%struct.TYPE_14__* %70, %struct.TYPE_13__** %10, i32 1, i32 1, i32 1, i32 1)
  store i32 %71, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %96

75:                                               ; preds = %63
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @index_conflict_to_reuc(%struct.TYPE_14__* %76, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @GIT_ENOTFOUND, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %96

88:                                               ; preds = %82, %75
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @git_tree_cache_invalidate_path(i32 %91, i64 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %88, %86, %73, %59, %50, %42, %35, %27
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @INDEX_OWNER(%struct.TYPE_14__*) #1

declare dso_local i32 @create_index_error(i32, i8*) #1

declare dso_local i32 @is_file_or_link(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @index_entry_dup(%struct.TYPE_13__**, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @git_blob_create_from_buffer(i32*, i32*, i8*, i64) #1

declare dso_local i32 @index_entry_free(%struct.TYPE_13__*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @index_insert(%struct.TYPE_14__*, %struct.TYPE_13__**, i32, i32, i32, i32) #1

declare dso_local i32 @index_conflict_to_reuc(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @git_tree_cache_invalidate_path(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
