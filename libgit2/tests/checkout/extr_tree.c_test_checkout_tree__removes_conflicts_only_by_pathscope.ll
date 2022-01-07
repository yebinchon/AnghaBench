; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__removes_conflicts_only_by_pathscope.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__removes_conflicts_only_by_pathscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8** }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"executable.txt\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"testrepo/executable.txt\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"This is the conflict file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"other.txt\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"testrepo/other.txt\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"This is another conflict file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__removes_conflicts_only_by_pathscope() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_commit_lookup(i32** %2, i32 %9, i32* %1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i8** %5, i8*** %17, align 8
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_checkout_tree(i32 %18, i32* %19, %struct.TYPE_6__* %3)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_repository_index(i32** %4, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_index_remove(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @create_conflict(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @create_conflict(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_index_write(i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_checkout_tree(i32 %35, i32* %36, %struct.TYPE_6__* %3)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @git_index_get_bypath(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  %41 = call i32 @cl_assert_equal_p(i32* null, i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @git_index_get_bypath(i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 2)
  %44 = call i32 @cl_assert_equal_p(i32* null, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @git_index_get_bypath(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 3)
  %47 = call i32 @cl_assert_equal_p(i32* null, i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @git_index_get_bypath(i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @git_index_get_bypath(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @cl_assert(i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @git_index_get_bypath(i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = call i32 @git_path_exists(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 @cl_assert(i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_commit_free(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @git_index_free(i32* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #2

declare dso_local i32 @create_conflict(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @cl_assert_equal_p(i32*, i32*) #2

declare dso_local i32* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
