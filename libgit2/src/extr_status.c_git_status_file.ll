; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_status.c_git_status_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_status.c_git_status_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i8** }
%struct.status_file_info = type { i8*, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@WM_CASEFOLD = common dso_local global i32 0, align 4
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@get_one_status = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ambiguous path '%s' given to git_status_file\00", align 1
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"attempt to get status of nonexistent file '%s'\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_status_file(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.status_file_info, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 32, i1 false)
  %13 = bitcast %struct.status_file_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @git_repository_index__weakptr(%struct.TYPE_9__** %11, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %100

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @git__strdup(i8* %32)
  %34 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = icmp eq i8* %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %100

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @WM_CASEFOLD, align 4
  %44 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %49 = load i32, i32* @GIT_STATUS_OPT_RECURSE_IGNORED_DIRS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNMODIFIED, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i8** %62, i8*** %64, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @get_one_status, align 4
  %67 = call i32 @git_status_foreach_ext(i32* %65, %struct.TYPE_8__* %9, i32 %66, %struct.status_file_info* %10)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %45
  %71 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %76 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @git_error_set(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %74, %70, %45
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @git_error_set(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %87, %83, %80
  %93 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %10, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @git__free(i8* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %92, %36, %29
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_repository_index__weakptr(%struct.TYPE_9__**, i32*) #2

declare dso_local i8* @git__strdup(i8*) #2

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_8__*, i32, %struct.status_file_info*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git__free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
