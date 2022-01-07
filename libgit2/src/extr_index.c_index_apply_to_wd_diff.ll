; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_apply_to_wd_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_apply_to_wd_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.foreach_diff_data = type { i32, i8*, i32*, i32, i32*, i32* }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@INDEX_ACTION_UPDATE = common dso_local global i32 0, align 4
@INDEX_ACTION_ADDALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cannot run update; the index is not backed up by a repository.\00", align 1
@GIT_DIFF_INCLUDE_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_INDEX_ADD_FORCE = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@apply_each_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i8*)* @index_apply_to_wd_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_apply_to_wd_diff(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca %struct.foreach_diff_data, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %20 = bitcast %struct.TYPE_4__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %21 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 0
  %22 = load i32*, i32** %8, align 8
  %23 = ptrtoint i32* %22 to i32
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 1
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 2
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 3
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 4
  %32 = load i8*, i8** %13, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %31, align 8
  %34 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @INDEX_ACTION_UPDATE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %6
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @INDEX_ACTION_ADDALL, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %6
  %46 = phi i1 [ true, %6 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @INDEX_OWNER(i32* %49)
  store i32* %50, i32** %17, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = call i32 @create_index_error(i32 -1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %7, align 4
  br label %105

55:                                               ; preds = %45
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @git_pathspec__init(i32* %16, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %7, align 4
  br label %105

61:                                               ; preds = %55
  %62 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @INDEX_ACTION_ADDALL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %69 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @GIT_INDEX_ADD_FORCE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %67
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32*, i32** %17, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @git_diff_index_to_workdir(i32** %15, i32* %84, i32* %85, %struct.TYPE_4__* %18)
  store i32 %86, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %102

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.foreach_diff_data, %struct.foreach_diff_data* %19, i32 0, i32 2
  store i32* %16, i32** %90, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* @apply_each_file, align 4
  %93 = call i32 @git_diff_foreach(i32* %91, i32 %92, i32* null, i32* null, i32* null, %struct.foreach_diff_data* %19)
  store i32 %93, i32* %14, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @git_diff_free(i32* %94)
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @git_error_set_after_callback(i32 %99)
  br label %101

101:                                              ; preds = %98, %89
  br label %102

102:                                              ; preds = %101, %88
  %103 = call i32 @git_pathspec__clear(i32* %16)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %59, %53
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @INDEX_OWNER(i32*) #2

declare dso_local i32 @create_index_error(i32, i8*) #2

declare dso_local i32 @git_pathspec__init(i32*, i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.foreach_diff_data*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_error_set_after_callback(i32) #2

declare dso_local i32 @git_pathspec__clear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
