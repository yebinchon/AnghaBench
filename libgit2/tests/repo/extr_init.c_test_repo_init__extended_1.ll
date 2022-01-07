; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__extended_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__extended_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.stat = type { i32 }

@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_REPOSITORY_INIT_MKPATH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_SHARED_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"../c_wd\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Awesomest test repository evah\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"development\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"https://github.com/libgit2/libgit2.git\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"root/b/c.git\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"/c_wd/\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/c.git/\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"root/b/c_wd/.git\00", align 1
@S_ISGID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"refs/heads/development\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__extended_1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_REPOSITORY_INIT_OPTIONS_INIT to i8*), i64 48, i1 false)
  %6 = load i32, i32* @GIT_REPOSITORY_INIT_MKPATH, align 4
  %7 = load i32, i32* @GIT_REPOSITORY_INIT_NO_DOTGIT_DIR, align 4
  %8 = or i32 %6, %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @GIT_REPOSITORY_INIT_SHARED_GROUP, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %16 = call i32 @git_repository_init_ext(i32* @_repo, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %4)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = call i32 @git_repository_workdir(i32 %18)
  %20 = call i32 @git__suffixcmp(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32, i32* @_repo, align 4
  %26 = call i32 @git_repository_path(i32 %25)
  %27 = call i32 @git__suffixcmp(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @_repo, align 4
  %35 = call i32 @git_repository_is_bare(i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = load i32, i32* @_repo, align 4
  %41 = call i32 @git_repository_is_empty(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = load i32, i32* @_repo, align 4
  %47 = call i32 @git_repository_path(i32 %46)
  %48 = call i32 @git_path_lstat(i32 %47, %struct.stat* %3)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @S_ISDIR(i32 %51)
  %53 = call i32 @cl_assert(i32 %52)
  %54 = call i64 (...) @cl_is_chmod_supported()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %0
  %57 = load i32, i32* @S_ISGID, align 4
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %57, %59
  %61 = load i32, i32* @S_ISGID, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @cl_assert(i32 %63)
  br label %73

65:                                               ; preds = %0
  %66 = load i32, i32* @S_ISGID, align 4
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %66, %68
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  br label %73

73:                                               ; preds = %65, %56
  %74 = load i32, i32* @_repo, align 4
  %75 = call i32 @git_reference_lookup(i32** %1, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i64 @git_reference_type(i32* %77)
  %79 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @git_reference_symbolic_target(i32* %83)
  %85 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @git_reference_free(i32* %86)
  %88 = load i32, i32* @_repo, align 4
  %89 = call i32 @git_remote_lookup(i32** %2, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @git_remote_name(i32* %91)
  %93 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @git_remote_url(i32* %96)
  %98 = call i32 @cl_assert_equal_s(i8* %95, i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @git_remote_free(i32* %99)
  %101 = load i32, i32* @_repo, align 4
  %102 = call i32 @git_repository_free(i32 %101)
  %103 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init_ext(i32*, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git__suffixcmp(i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_repository_is_bare(i32) #2

declare dso_local i32 @git_repository_is_empty(i32) #2

declare dso_local i32 @git_path_lstat(i32, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i64 @cl_is_chmod_supported(...) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i64 @git_reference_type(i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_reference_symbolic_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_remote_name(i32*) #2

declare dso_local i32 @git_remote_url(i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_repository_free(i32) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
