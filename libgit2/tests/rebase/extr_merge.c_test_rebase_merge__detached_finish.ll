; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__detached_finish.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__detached_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"refs/heads/gravy\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/veal\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__detached_finish() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_reference_lookup(i32** %2, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_reference_lookup(i32** %3, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %20, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_annotated_commit_from_ref(i32** %6, i32 %24, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_repository_set_head_detached_from_annotated(i32 %28, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @repo, align 4
  %35 = call i32 @git_checkout_head(i32 %34, %struct.TYPE_4__* %11)
  %36 = load i32, i32* @repo, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @git_rebase_init(i32** %1, i32 %36, i32* null, i32* %37, i32* null, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_rebase_next(i32** %7, i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @signature, align 4
  %45 = call i32 @git_rebase_commit(i32* %8, i32* %43, i32* null, i32 %44, i32* null, i32* null)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_rebase_next(i32** %7, i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = call i32 @cl_git_fail(i32 %48)
  %50 = load i32, i32* @GIT_ITEROVER, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @cl_assert_equal_i(i32 %50, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @signature, align 4
  %55 = call i32 @git_rebase_finish(i32* %53, i32 %54)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %58 = load i32, i32* @repo, align 4
  %59 = call i32 @git_repository_state(i32 %58)
  %60 = call i32 @cl_assert_equal_i(i32 %57, i32 %59)
  %61 = load i32, i32* @repo, align 4
  %62 = call i32 @git_reference_lookup(i32** %4, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @git_reference_type(i32* %65)
  %67 = call i32 @cl_assert_equal_i(i32 %64, i32 %66)
  %68 = load i32, i32* @repo, align 4
  %69 = call i32 @git_reflog_read(i32** %9, i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i32* @git_reflog_entry_byindex(i32* %71, i32 0)
  store i32* %72, i32** %10, align 8
  %73 = call i32 @cl_assert(i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32* @git_annotated_commit_id(i32* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @git_reflog_entry_id_old(i32* %76)
  %78 = call i32 @cl_assert_equal_oid(i32* %75, i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @git_reflog_entry_id_new(i32* %79)
  %81 = call i32 @cl_assert_equal_oid(i32* %8, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @git_reflog_free(i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @git_annotated_commit_free(i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @git_annotated_commit_free(i32* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @git_reference_free(i32* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @git_reference_free(i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @git_reference_free(i32* %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @git_rebase_free(i32* %94)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_repository_set_head_detached_from_annotated(i32, i32*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_rebase_next(i32**, i32*) #2

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_rebase_finish(i32*, i32) #2

declare dso_local i32 @git_repository_state(i32) #2

declare dso_local i32 @git_reference_type(i32*) #2

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert(i32*) #2

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #2

declare dso_local i32* @git_annotated_commit_id(i32*) #2

declare dso_local i32 @git_reflog_entry_id_old(i32*) #2

declare dso_local i32 @git_reflog_entry_id_new(i32*) #2

declare dso_local i32 @git_reflog_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_rebase_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
