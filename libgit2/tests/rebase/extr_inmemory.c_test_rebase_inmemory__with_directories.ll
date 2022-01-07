; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_inmemory.c_test_rebase_inmemory__with_directories.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_inmemory.c_test_rebase_inmemory__with_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"a4d6d9c3d57308fd8e320cf2525bae8f1adafa57\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"refs/heads/deep_gravy\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/heads/veal\00", align 1
@signature = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_inmemory__with_directories() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_reference_lookup(i32** %2, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_reference_lookup(i32** %3, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %20, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %24, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @git_rebase_init(i32** %1, i32 %28, i32* %29, i32* %30, i32* null, %struct.TYPE_4__* %10)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_rebase_next(i32** %6, i32* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @signature, align 4
  %38 = call i32 @git_rebase_commit(i32* %7, i32* %36, i32* null, i32 %37, i32* null, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_rebase_next(i32** %6, i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @signature, align 4
  %45 = call i32 @git_rebase_commit(i32* %7, i32* %43, i32* null, i32 %44, i32* null, i32* null)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @GIT_ITEROVER, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_rebase_next(i32** %6, i32* %48)
  %50 = call i32 @cl_git_fail_with(i32 %47, i32 %49)
  %51 = load i32, i32* @repo, align 4
  %52 = call i32 @git_commit_lookup(i32** %9, i32 %51, i32* %7)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @git_commit_tree_id(i32* %54)
  %56 = call i32 @cl_assert_equal_oid(i32* %8, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @git_commit_free(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @git_annotated_commit_free(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @git_annotated_commit_free(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @git_reference_free(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @git_reference_free(i32* %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @git_rebase_free(i32* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_rebase_next(i32**, i32*) #2

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #2

declare dso_local i32 @git_commit_tree_id(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

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
