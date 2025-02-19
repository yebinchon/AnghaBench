; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__can_overcome_name_clashes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__can_overcome_name_clashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"./testrepo/path0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"content\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"./testrepo/path1\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"./testrepo/path1/file1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"path0\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"path1/file1\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"./testrepo/path0/file0\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@GIT_CHECKOUT_ALLOW_CONFLICTS = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__can_overcome_name_clashes() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_repository_index(i32** %2, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @git_index_clear(i32* %7)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @p_mkdir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_index_add_bypath(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_index_add_bypath(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @p_unlink(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %22 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @p_mkdir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 511)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %33 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @GIT_CHECKOUT_ALLOW_CONFLICTS, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_checkout_index(i32 %38, i32* %39, %struct.TYPE_4__* %1)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 @cl_assert(i32 %44)
  %46 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @g_repo, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_checkout_index(i32 %48, i32* %49, %struct.TYPE_4__* %1)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @cl_assert(i32 %52)
  %54 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @cl_assert(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @git_index_free(i32* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_clear(i32*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
