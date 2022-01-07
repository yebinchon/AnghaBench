; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rejected_match_can_match_others.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__rejected_match_can_match_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.rename_expected = type { i32, i32*, i8**, i8** }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GIT_DELTA_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Class1.cs\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Class2.cs\00", align 1
@__const.test_diff_rename__rejected_match_can_match_others.sources = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"ClassA.cs\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ClassB.cs\00", align 1
@__const.test_diff_rename__rejected_match_can_match_others.targets = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"refs/heads/renames_similar\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"renames/Class1.cs\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"renames/Class2.cs\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Class1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Class2\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"renames/ClassA.cs\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"renames/ClassB.cs\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"HEAD^{tree}\00", align 1
@test_names_expected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__rejected_match_can_match_others() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i8*], align 16
  %13 = alloca [2 x i8*], align 16
  %14 = alloca %struct.rename_expected, align 8
  %15 = alloca i8*, align 8
  %16 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %17 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %17, i32* %7, align 4
  %18 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %19 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.TYPE_14__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %22 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @GIT_DELTA_RENAMED, align 4
  store i32 %24, i32* %23, align 4
  %25 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_rename__rejected_match_can_match_others.sources to i8*), i64 16, i1 false)
  %26 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([2 x i8*]* @__const.test_diff_rename__rejected_match_can_match_others.targets to i8*), i64 16, i1 false)
  %27 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %14, i32 0, i32 0
  store i32 2, i32* %27, align 8
  %28 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %14, i32 0, i32 1
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %14, i32 0, i32 2
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8** %31, i8*** %30, align 8
  %32 = getelementptr inbounds %struct.rename_expected, %struct.rename_expected* %14, i32 0, i32 3
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  store i8** %33, i8*** %32, align 8
  %34 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @g_repo, align 4
  %39 = call i32 @git_reference_lookup(i32** %1, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_reference_symbolic_set_target(i32** %2, i32* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @git_checkout_head(i32 %44, %struct.TYPE_13__* %5)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = call i32 @git_repository_index(i32** %3, i32 %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = call i32 @git_futils_readbuffer(%struct.TYPE_14__* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = call i32 @git_futils_readbuffer(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = call i32 @p_unlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = call i32 @p_unlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @git_index_remove_bypath(i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @git_index_remove_bypath(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @strstr(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i8* %66, i8** %15, align 8
  %67 = call i32 @cl_assert(i8* %66)
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 5
  store i8 65, i8* %69, align 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @strstr(i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %72, i8** %15, align 8
  %73 = call i32 @cl_assert(i8* %72)
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 5
  store i8 66, i8* %75, align 1
  %76 = load i32, i32* @O_RDWR, align 4
  %77 = load i32, i32* @O_CREAT, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @git_futils_writebuffer(%struct.TYPE_14__* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %78, i32 511)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32, i32* @O_RDWR, align 4
  %82 = load i32, i32* @O_CREAT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @git_futils_writebuffer(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %83, i32 511)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @git_index_add_bypath(i32* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @git_index_add_bypath(i32* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @git_index_write(i32* %92)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i32, i32* @g_repo, align 4
  %96 = call i32 @git_revparse_single(i32** %4, i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %97 = call i32 @cl_git_pass(i32 %96)
  %98 = load i32, i32* @g_repo, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @git_diff_tree_to_index(i32** %6, i32 %98, i32* %99, i32* %100, i32* %7)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @git_diff_find_similar(i32* %103, %struct.TYPE_12__* %8)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @test_names_expected, align 4
  %108 = call i32 @git_diff_foreach(i32* %106, i32 %107, i32* null, i32* null, i32* null, %struct.rename_expected* %14)
  %109 = call i32 @cl_git_pass(i32 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @git_diff_free(i32* %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @git_tree_free(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @git_index_free(i32* %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @git_reference_free(i32* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @git_reference_free(i32* %118)
  %120 = call i32 @git_buf_dispose(%struct.TYPE_14__* %9)
  %121 = call i32 @git_buf_dispose(%struct.TYPE_14__* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_symbolic_set_target(i32**, i32*, i8*, i32*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @cl_assert(i8*) #2

declare dso_local i8* @strstr(i32, i8*) #2

declare dso_local i32 @git_futils_writebuffer(%struct.TYPE_14__*, i8*, i32, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.rename_expected*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
