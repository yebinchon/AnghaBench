; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_loose_lock.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_loose_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_PATH_REJECT_FILESYSTEM_DEFAULTS = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid reference name '%s'\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@GIT_RMDIR_SKIP_NONEMPTY = common dso_local global i32 0, align 4
@GIT_FILEBUF_CREATE_LEADING_DIRS = common dso_local global i32 0, align 4
@GIT_FILEBUF_FSYNC = common dso_local global i32 0, align 4
@GIT_REFS_FILE_MODE = common dso_local global i32 0, align 4
@GIT_EDIRECTORY = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"cannot lock ref '%s', there are refs beneath that folder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i8*)* @loose_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_lock(i32* %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ false, %15 ], [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @GIT_PATH_REJECT_FILESYSTEM_DEFAULTS, align 4
  %30 = call i32 @git_path_isvalid(i32 %27, i8* %28, i32 0, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @git_error_set(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @is_per_worktree_ref(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @GIT_RMDIR_SKIP_NONEMPTY, align 4
  %53 = call i32 @git_futils_rmdir_r(i8* %50, i8* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %90

57:                                               ; preds = %49
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @git_buf_joinpath(%struct.TYPE_8__* %10, i8* %58, i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %90

63:                                               ; preds = %57
  %64 = load i32, i32* @GIT_FILEBUF_CREATE_LEADING_DIRS, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @GIT_FILEBUF_FSYNC, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @GIT_REFS_FILE_MODE, align 4
  %79 = call i32 @git_filebuf_open(i32* %74, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @GIT_EDIRECTORY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @git_error_set(i32 %84, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %83, %73
  %88 = call i32 @git_buf_dispose(%struct.TYPE_8__* %10)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %62, %55, %32
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_path_isvalid(i32, i8*, i32, i32) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i64 @is_per_worktree_ref(i8*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i8*, i32) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_8__*, i8*, i8*) #2

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
