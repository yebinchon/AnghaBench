; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__untracked_regression.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__untracked_regression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@__const.test_stash_save__untracked_regression.paths = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%sz\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@stash_tip_oid = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"refs/stash\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"WIP on master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_save__untracked_regression() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca [4 x i8*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i8*, align 8
  %7 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  %8 = bitcast [4 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.test_stash_save__untracked_regression.paths to i8*), i64 32, i1 false)
  %9 = load i32, i32* @repo, align 4
  %10 = call i8* @git_repository_workdir(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = call i32 @git_buf_init(%struct.TYPE_11__* %5, i32 0)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @git_buf_printf(%struct.TYPE_11__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @p_mkdir(i32 %15, i32 511)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = call i32 @git_repository_head(i32** %3, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %26 = call i32 @git_reference_peel(i32** %4, i32* %24, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i8** %30, i8*** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 4, i32* %34, align 8
  %35 = load i32, i32* @repo, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @git_checkout_tree(i32 %35, i32* %36, %struct.TYPE_10__* %1)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @repo, align 4
  %40 = load i32, i32* @signature, align 4
  %41 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %42 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %39, i32 %40, i32* null, i32 %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @assert_commit_message_contains(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_commit_free(i32* %47)
  %49 = call i32 @git_buf_dispose(%struct.TYPE_11__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_repository_workdir(i32) #2

declare dso_local i32 @git_buf_init(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @p_mkdir(i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @assert_commit_message_contains(i8*, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
