; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__from_git_new_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__from_git_new_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@test_repo_open__from_git_new_workdir.links = internal global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"logs/refs\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hooks\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"packed-refs\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"remotes\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rr-cache\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"svn\00", align 1
@test_repo_open__from_git_new_workdir.copies = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"alternate/.git\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"empty_standard_repo/.git\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"../../empty_standard_repo/.git\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"alternate/.git/\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"alternate/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__from_git_new_workdir() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %8 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %11 = call i32 @p_mkdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 511)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_git_pass(i32 %13)
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @test_repo_open__from_git_new_workdir.links, i64 0, i64 0), i8*** %5, align 8
  br label %15

15:                                               ; preds = %54, %0
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @git_path_exists(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strchr(i8* %35, i8 signext 47)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_futils_mkpath2file(i32 %40, i32 511)
  br label %42

42:                                               ; preds = %38, %27
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @symlink(i32 %44, i32 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @errno, align 4
  %51 = call i32* @strerror(i32 %50)
  %52 = call i32 @cl_assert_(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %42, %19
  br label %54

54:                                               ; preds = %53
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %5, align 8
  br label %15

57:                                               ; preds = %15
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_repo_open__from_git_new_workdir.copies, i64 0, i64 0), i8*** %5, align 8
  br label %58

58:                                               ; preds = %94, %57
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @git_path_exists(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %62
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @git_futils_readbuffer(%struct.TYPE_6__* %4, i32 %75)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @git_futils_creat_withpath(i32 %79, i32 511, i32 438)
  store i32 %80, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @cl_assert(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @p_write(i32 %84, i32 %86, i32 %88)
  %90 = call i32 @cl_must_pass(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @p_close(i32 %91)
  br label %93

93:                                               ; preds = %70, %62
  br label %94

94:                                               ; preds = %93
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %5, align 8
  br label %58

97:                                               ; preds = %58
  %98 = call i32 @git_buf_dispose(%struct.TYPE_6__* %2)
  %99 = call i32 @git_buf_dispose(%struct.TYPE_6__* %3)
  %100 = call i32 @git_buf_dispose(%struct.TYPE_6__* %4)
  %101 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32* @git_repository_path(i32* %103)
  %105 = icmp ne i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @cl_assert(i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32* @git_repository_path(i32* %108)
  %110 = call i64 @git__suffixcmp(i32* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %1, align 8
  %114 = call i32* @git_repository_path(i32* %113)
  %115 = call i32 @cl_assert_(i32 %112, i32* %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32* @git_repository_workdir(i32* %116)
  %118 = icmp ne i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @cl_assert(i32 %119)
  %121 = load i32*, i32** %1, align 8
  %122 = call i32* @git_repository_workdir(i32* %121)
  %123 = call i64 @git__suffixcmp(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %1, align 8
  %127 = call i32* @git_repository_workdir(i32* %126)
  %128 = call i32 @cl_assert_(i32 %125, i32* %127)
  %129 = load i32*, i32** %1, align 8
  %130 = call i32 @git_repository_free(i32* %129)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i64 @git_path_exists(i32) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @git_futils_mkpath2file(i32, i32) #2

declare dso_local i32 @cl_assert_(i32, i32*) #2

declare dso_local i64 @symlink(i32, i32) #2

declare dso_local i32* @strerror(i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_futils_creat_withpath(i32, i32, i32) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_write(i32, i32, i32) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32* @git_repository_path(i32*) #2

declare dso_local i64 @git__suffixcmp(i32*, i8*) #2

declare dso_local i32* @git_repository_workdir(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
