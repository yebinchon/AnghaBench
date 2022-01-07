; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__just_added.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__just_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sm_just_added\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"sm_just_added_2\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"sm_just_added_idx\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"sm_just_added_head\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mismatch_name\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mismatch_path\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"submod2/.gitmodules\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"https://github.com/libgit2/libgit2.git\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"commit new sm to head\00", align 1
@.str.9 = private unnamed_addr constant [92 x i8] c"\0A[submodule \22mismatch_name\22]\0A\09path = mismatch_path\0A\09url = https://example.com/example.git\0A\0A\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"move head back\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_lookup__just_added() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %4, align 8
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i32, i32* @GIT_ENOTFOUND, align 4
  %10 = call i32 @refute_submodule_exists(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32, i32* @GIT_ENOTFOUND, align 4
  %13 = call i32 @refute_submodule_exists(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* @GIT_ENOTFOUND, align 4
  %16 = call i32 @refute_submodule_exists(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i32, i32* @GIT_ENOTFOUND, align 4
  %19 = call i32 @refute_submodule_exists(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32, i32* @GIT_ENOTFOUND, align 4
  %22 = call i32 @refute_submodule_exists(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @GIT_ENOTFOUND, align 4
  %25 = call i32 @refute_submodule_exists(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %24)
  %26 = call i32 (...) @baseline_tests()
  %27 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = call i32 @git_repository_head(i32** %4, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @g_repo, align 4
  %33 = call i32 @git_submodule_add_setup(i32** %1, i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_submodule_free(i32* %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @assert_submodule_exists(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @git_submodule_add_setup(i32** %1, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = call i32 @assert_submodule_exists(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @git_submodule_add_finalize(i32* %44)
  %46 = call i32 @cl_git_fail(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_submodule_free(i32* %47)
  %49 = call i32 @add_submodule_with_commit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @g_repo, align 4
  %51 = call i32 @cl_repo_commit_from_index(i32* null, i32 %50, i32* null, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @assert_submodule_exists(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 @add_submodule_with_commit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @g_repo, align 4
  %56 = call i32 @assert_submodule_exists(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.9, i64 0, i64 0))
  %60 = load i32, i32* @g_repo, align 4
  %61 = call i32 @assert_submodule_exists(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @g_repo, align 4
  %63 = call i32 @assert_submodule_exists(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @g_repo, align 4
  %65 = call i32 @assert_submodule_exists(i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @g_repo, align 4
  %67 = call i32 @assert_submodule_exists(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @g_repo, align 4
  %69 = call i32 @assert_submodule_exists(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @g_repo, align 4
  %71 = call i32 @assert_submodule_exists(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 (...) @baseline_tests()
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  %77 = load i32, i32* @g_repo, align 4
  %78 = load i32, i32* @GIT_ENOTFOUND, align 4
  %79 = call i32 @refute_submodule_exists(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @g_repo, align 4
  %81 = load i32, i32* @GIT_ENOTFOUND, align 4
  %82 = call i32 @refute_submodule_exists(i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @g_repo, align 4
  %84 = call i32 @assert_submodule_exists(i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @g_repo, align 4
  %86 = call i32 @assert_submodule_exists(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @g_repo, align 4
  %88 = call i32 @assert_submodule_exists(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @g_repo, align 4
  %90 = call i32 @assert_submodule_exists(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 (...) @baseline_tests()
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = call i32 @git_buf_dispose(%struct.TYPE_5__* %2)
  %96 = load i32, i32* @g_repo, align 4
  %97 = load i32, i32* @GIT_ENOTFOUND, align 4
  %98 = call i32 @refute_submodule_exists(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @g_repo, align 4
  %100 = load i32, i32* @GIT_ENOTFOUND, align 4
  %101 = call i32 @refute_submodule_exists(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @g_repo, align 4
  %103 = load i32, i32* @GIT_EEXISTS, align 4
  %104 = call i32 @refute_submodule_exists(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @g_repo, align 4
  %106 = load i32, i32* @GIT_EEXISTS, align 4
  %107 = call i32 @refute_submodule_exists(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @g_repo, align 4
  %109 = call i32 @assert_submodule_exists(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @g_repo, align 4
  %111 = call i32 @assert_submodule_exists(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 (...) @baseline_tests()
  %113 = load i32, i32* @g_repo, align 4
  %114 = call i32 @git_repository_index(i32** %5, i32 %113)
  %115 = call i32 @cl_git_pass(i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @git_index_remove_bypath(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %118 = call i32 @cl_git_pass(i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @git_index_remove_bypath(i32* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %121 = call i32 @cl_git_pass(i32 %120)
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @git_index_write(i32* %122)
  %124 = call i32 @cl_git_pass(i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @git_index_free(i32* %125)
  %127 = load i32, i32* @g_repo, align 4
  %128 = load i32, i32* @GIT_EEXISTS, align 4
  %129 = call i32 @refute_submodule_exists(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @g_repo, align 4
  %131 = call i32 @assert_submodule_exists(i32 %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* @g_repo, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @git_reference_target(i32* %133)
  %135 = call i32 @git_reference_create(i32* null, i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %134, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %136 = call i32 @cl_git_pass(i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @git_reference_free(i32* %137)
  %139 = load i32, i32* @g_repo, align 4
  %140 = load i32, i32* @GIT_EEXISTS, align 4
  %141 = call i32 @refute_submodule_exists(i32 %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @refute_submodule_exists(i32, i8*, i32) #2

declare dso_local i32 @baseline_tests(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_submodule_add_setup(i32**, i32, i8*, i8*, i32) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @assert_submodule_exists(i32, i8*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_submodule_add_finalize(i32*) #2

declare dso_local i32 @add_submodule_with_commit(i8*) #2

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32*, i32, i8*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_reference_create(i32*, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
