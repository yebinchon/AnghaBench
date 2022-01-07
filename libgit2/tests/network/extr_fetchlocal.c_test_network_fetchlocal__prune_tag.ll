; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__prune_tag.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__prune_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@transfer_cb = common dso_local global i32 0, align 4
@cleanup_local_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"origin/master\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"refs/remotes/origin/fake-remote\00", align 1
@tagger_name = common dso_local global i32 0, align 4
@tagger_email = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"some-tag\00", align 1
@tagger_message = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"remote.origin.prune\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"refs/tags/some-tag\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__prune_tag() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  store i32 0, i32* %3, align 4
  %12 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @git_repository_path(i32* %13)
  %15 = call i8* @cl_git_path_url(i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 16, i1 false)
  %17 = load i32, i32* @transfer_cb, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* %3, i32** %21, align 8
  %22 = call i32 @cl_set_cleanup(i32* @cleanup_local_repo, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @git_remote_create(i32** %2, i32* %25, i32 %26, i8* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_remote_fetch(i32* %30, i32* null, %struct.TYPE_6__* %11, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_remote_free(i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_revparse_single(i32** %8, i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @git_object_id(i32* %39)
  %41 = call i32 @git_reference_create(i32** %4, i32* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 1, i32* null)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  %45 = load i32, i32* @tagger_name, align 4
  %46 = load i32, i32* @tagger_email, align 4
  %47 = call i32 @git_signature_new(i32** %7, i32 %45, i32 %46, i32 123456789, i32 60)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @tagger_message, align 4
  %53 = call i32 @git_tag_create(i32* %6, i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %50, i32* %51, i32 %52, i32 0)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @git_signature_free(i32* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_repository_config(i32** %5, i32* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @git_config_set_bool(i32* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @git_config_free(i32* %63)
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %67 = call i32 @git_remote_lookup(i32** %2, i32* %65, i32 %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @git_remote_prune_refs(i32* %69)
  %71 = call i32 @cl_assert_equal_i(i32 1, i32 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @git_remote_fetch(i32* %72, i32* null, %struct.TYPE_6__* %11, i32* null)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @assert_ref_exists(i32* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32, i32* @GIT_ENOTFOUND, align 4
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @git_reference_lookup(i32** %4, i32* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @cl_git_fail_with(i32 %77, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @git_object_free(i32* %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @git_remote_free(i32* %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_repository_free(i32* %85)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i8* @cl_git_path_url(i32) #1

declare dso_local i32 @git_repository_path(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_remote_create(i32**, i32*, i32, i8*) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_signature_new(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @git_tag_create(i32*, i32*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_repository_config(i32**, i32*) #1

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_remote_prune_refs(i32*) #1

declare dso_local i32 @assert_ref_exists(i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
