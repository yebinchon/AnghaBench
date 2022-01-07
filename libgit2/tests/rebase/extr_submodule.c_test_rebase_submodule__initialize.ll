; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_submodule.c_test_rebase_submodule__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_submodule.c_test_rebase_submodule__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rebase-submodule\00", align 1
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Rebaser\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"rebaser@rebaser.rb\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"my-submodule\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Fixup .gitmodules\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_submodule__initialize() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %10 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @repo, align 4
  %13 = call i32 @git_signature_new(i32* @signature, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 1405694510, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_repository_workdir(i32 %15)
  %17 = call i32 @rewrite_gitmodules(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_repository_path(i32 %19)
  %21 = call i32 @git_submodule_set_url(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_repository_index(i32** %1, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_index_add_bypath(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_index_write(i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_index_write_tree(i32* %2, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo, align 4
  %36 = call i32 @git_tree_lookup(i32** %4, i32 %35, i32* %2)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* @repo, align 4
  %39 = call i32 @git_repository_head(i32** %7, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32, i32* @repo, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @git_reference_target(i32* %42)
  %44 = call i32 @git_commit_lookup(i32** %5, i32 %41, i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @repo, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @git_reference_name(i32* %47)
  %49 = load i32, i32* @signature, align 4
  %50 = load i32, i32* @signature, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @git_commit_create_v(i32* %3, i32 %46, i32 %48, i32 %49, i32 %50, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %51, i32 1, i32* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @repo, align 4
  %56 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %57 = call i32 @git_object_lookup(i32** %6, i32 %55, i32* %3, i32 %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32, i32* @repo, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @GIT_RESET_HARD, align 4
  %62 = call i32 @git_reset(i32 %59, i32* %60, i32 %61, %struct.TYPE_4__* %8)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_index_free(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @git_object_free(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @git_commit_free(i32* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @git_reference_free(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @git_tree_free(i32* %72)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_signature_new(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @rewrite_gitmodules(i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_submodule_set_url(i32, i8*, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_write_tree(i32*, i32*) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_commit_create_v(i32*, i32, i32, i32, i32, i32*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @git_reference_name(i32*) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_reset(i32, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
