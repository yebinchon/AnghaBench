; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__removes_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__removes_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"executable.txt\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"testrepo/executable.txt\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"This is the conflict file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"other.txt\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"testrepo/other.txt\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"This is another conflict file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__removes_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_commit_lookup(i32** %2, i32 %8, i32* %1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_checkout_tree(i32 %13, i32* %14, %struct.TYPE_4__* %3)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_repository_index(i32** %4, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_index_remove(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @create_conflict(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @create_conflict(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @git_index_write(i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @git_checkout_tree(i32 %30, i32* %31, %struct.TYPE_4__* %3)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_index_get_bypath(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %36 = call i32 @cl_assert_equal_p(i32* null, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_index_get_bypath(i32* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %39 = call i32 @cl_assert_equal_p(i32* null, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @git_index_get_bypath(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %42 = call i32 @cl_assert_equal_p(i32* null, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_index_get_bypath(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %45 = call i32 @cl_assert_equal_p(i32* null, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_index_get_bypath(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %48 = call i32 @cl_assert_equal_p(i32* null, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @git_index_get_bypath(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %51 = call i32 @cl_assert_equal_p(i32* null, i32 %50)
  %52 = call i32 @git_path_exists(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_commit_free(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @git_index_free(i32* %59)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #2

declare dso_local i32 @create_conflict(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @cl_assert_equal_p(i32*, i32) #2

declare dso_local i32 @git_index_get_bypath(i32*, i8*, i32) #2

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
