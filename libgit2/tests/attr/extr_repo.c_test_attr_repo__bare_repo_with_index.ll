; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__bare_repo_with_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__bare_repo_with_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"test4\00", align 1
@__const.test_attr_repo__bare_repo_with_index.names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@g_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"attr/.gitattributes\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"*.txt test1 test2=foobar -test3\0Atrial.txt -test1 test2=barfoo !test3 test4\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c".gitattributes\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"trial.txt\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"barfoo\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"sub/sub/subdir.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_repo__bare_repo_with_index() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca [4 x i8*], align 16
  %3 = alloca i32*, align 8
  %4 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i8*]* @__const.test_attr_repo__bare_repo_with_index.names to i8*), i64 32, i1 false)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_index(i32** %3, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @git_index_add_bypath(i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @git_index_free(i32* %12)
  %14 = call i32 @p_unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_must_pass(i32 %14)
  %16 = call i32 @git_path_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_repository_set_bare(i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %25 = load i32, i32* @g_repo, align 4
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %27 = call i32 @git_attr_get_many(i8** %24, i32 %25, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 4, i8** %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %30 = load i8*, i8** %29, align 16
  %31 = call i32 @GIT_ATTR_IS_TRUE(i8* %30)
  %32 = call i32 @cl_assert(i32 %31)
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 2
  %37 = load i8*, i8** %36, align 16
  %38 = call i32 @GIT_ATTR_IS_FALSE(i8* %37)
  %39 = call i32 @cl_assert(i32 %38)
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %41)
  %43 = call i32 @cl_assert(i32 %42)
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %45 = load i32, i32* @g_repo, align 4
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %47 = call i32 @git_attr_get_many(i8** %44, i32 %45, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 4, i8** %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %50 = load i8*, i8** %49, align 16
  %51 = call i32 @GIT_ATTR_IS_FALSE(i8* %50)
  %52 = call i32 @cl_assert(i32 %51)
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 2
  %57 = load i8*, i8** %56, align 16
  %58 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %57)
  %59 = call i32 @cl_assert(i32 %58)
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @GIT_ATTR_IS_TRUE(i8* %61)
  %63 = call i32 @cl_assert(i32 %62)
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %65 = load i32, i32* @g_repo, align 4
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %67 = call i32 @git_attr_get_many(i8** %64, i32 %65, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 4, i8** %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = call i32 @GIT_ATTR_IS_TRUE(i8* %70)
  %72 = call i32 @cl_assert(i32 %71)
  %73 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %74)
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 2
  %77 = load i8*, i8** %76, align 16
  %78 = call i32 @GIT_ATTR_IS_FALSE(i8* %77)
  %79 = call i32 @cl_assert(i32 %78)
  %80 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %81)
  %83 = call i32 @cl_assert(i32 %82)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @git_repository_set_bare(i32) #2

declare dso_local i32 @git_attr_get_many(i8**, i32, i32, i8*, i32, i8**) #2

declare dso_local i32 @GIT_ATTR_IS_TRUE(i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @GIT_ATTR_IS_FALSE(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_UNSPECIFIED(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
