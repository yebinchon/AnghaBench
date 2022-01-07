; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_push.c_test_online_push__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_push.c_test_online_push__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i8**, i64 }

@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GIT_PUSH_OPTIONS_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"push_src\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Random J. Hacker\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"push_src/submodule/.gitted\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"push_src/submodule/.git\00", align 1
@_oid_b6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"951bbbb90e2259a4c8950db78946784fb53fcbce\00", align 1
@_oid_b5 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"fa38b91f199934685819bea316186d8b008c52a2\00", align 1
@_oid_b4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"27b7ce66243eb1403862d05f958c002312df173d\00", align 1
@_oid_b3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"d9b63a88223d8367516f50bd131a5f7349b7f3e4\00", align 1
@_oid_b2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"a78705c3b2725f931d3ee05348d83cc26700f247\00", align 1
@_oid_b1 = common dso_local global i32 0, align 4
@_tag_commit = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"805c54522e614f29f70d2413a0470247d8b424ac\00", align 1
@_tag_tree = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"ff83aa4c5e5d28e3bcba2f5c6e2adc61286a4e5e\00", align 1
@_tag_blob = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"b483ae7ba66decee9aee971f501221dea84b1498\00", align 1
@_tag_lightweight = common dso_local global i32 0, align 4
@_tag_tag = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"eea4f2705eeec2db3813f2430829afce99cd00b5\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"GITTEST_REMOTE_URL\00", align 1
@_remote_url = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"GITTEST_REMOTE_USER\00", align 1
@_remote_user = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"GITTEST_REMOTE_PASS\00", align 1
@_remote_pass = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"GITTEST_REMOTE_SSH_KEY\00", align 1
@_remote_ssh_key = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"GITTEST_REMOTE_SSH_PUBKEY\00", align 1
@_remote_ssh_pubkey = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [30 x i8] c"GITTEST_REMOTE_SSH_PASSPHRASE\00", align 1
@_remote_ssh_passphrase = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [23 x i8] c"GITTEST_REMOTE_DEFAULT\00", align 1
@_remote_default = common dso_local global i8* null, align 8
@_remote = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@_record_cbs_data = common dso_local global i32 0, align 4
@GIT_DIRECTION_PUSH = common dso_local global i32 0, align 4
@_record_cbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_push__initialize() #0 {
  %1 = alloca %struct.TYPE_13__, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = bitcast %struct.TYPE_13__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %8 = bitcast %struct.TYPE_15__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_PUSH_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 4, i1 false)
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* @_repo, align 4
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_repository_set_ident(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_rename(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @_repo, align 4
  %17 = call i32 @git_repository_workdir(i32 %16)
  %18 = call i32 @rewrite_gitmodules(i32 %17)
  %19 = call i32 @git_oid_fromstr(i32* @_oid_b6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 @git_oid_fromstr(i32* @_oid_b5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @git_oid_fromstr(i32* @_oid_b4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 @git_oid_fromstr(i32* @_oid_b3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 @git_oid_fromstr(i32* @_oid_b2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 @git_oid_fromstr(i32* @_oid_b1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %25 = call i32 @git_oid_fromstr(i32* @_tag_commit, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %26 = call i32 @git_oid_fromstr(i32* @_tag_tree, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %27 = call i32 @git_oid_fromstr(i32* @_tag_blob, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %28 = call i32 @git_oid_fromstr(i32* @_tag_lightweight, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 @git_oid_fromstr(i32* @_tag_tag, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %30 = call i8* @cl_getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  store i8* %30, i8** @_remote_url, align 8
  %31 = call i8* @cl_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  store i8* %31, i8** @_remote_user, align 8
  %32 = call i8* @cl_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store i8* %32, i8** @_remote_pass, align 8
  %33 = call i8* @cl_getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  store i8* %33, i8** @_remote_ssh_key, align 8
  %34 = call i8* @cl_getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  store i8* %34, i8** @_remote_ssh_pubkey, align 8
  %35 = call i8* @cl_getenv(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  store i8* %35, i8** @_remote_ssh_passphrase, align 8
  %36 = call i8* @cl_getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  store i8* %36, i8** @_remote_default, align 8
  store i32* null, i32** @_remote, align 8
  %37 = load i8*, i8** @_remote_url, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %0
  %40 = call i32 (...) @cl_skip()
  br label %41

41:                                               ; preds = %39, %0
  %42 = load i32, i32* @_repo, align 4
  %43 = load i8*, i8** @_remote_url, align 8
  %44 = call i32 @git_remote_create(i32** @_remote, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = call i32 @record_callbacks_data_clear(i32* @_record_cbs_data)
  %47 = load i32*, i32** @_remote, align 8
  %48 = load i32, i32* @GIT_DIRECTION_PUSH, align 4
  %49 = call i32 @git_remote_connect(i32* %47, i32 %48, i32* @_record_cbs, i32* null, i32* null)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** @_remote, align 8
  %52 = call i32 @git_remote_ls(i32*** %2, i64* %3, i32* %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32**, i32*** %2, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @create_deletion_refspecs(%struct.TYPE_13__* %1, i32** %54, i64 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8**
  store i8** %65, i8*** %62, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %70 = call i32 @memcpy(i32* %69, i32* @_record_cbs, i32 4)
  %71 = load i32*, i32** @_remote, align 8
  %72 = call i32 @git_remote_upload(i32* %71, %struct.TYPE_14__* %6, %struct.TYPE_15__* %4)
  %73 = call i32 @cl_git_pass(i32 %72)
  br label %74

74:                                               ; preds = %61, %41
  %75 = load i32*, i32** @_remote, align 8
  %76 = call i32 @git_remote_disconnect(i32* %75)
  %77 = call i32 @git_vector_free_deep(%struct.TYPE_13__* %1)
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %79 = call i32 @memcpy(i32* %78, i32* @_record_cbs, i32 4)
  %80 = load i32*, i32** @_remote, align 8
  %81 = call i32 @git_remote_fetch(i32* %80, i32* null, %struct.TYPE_16__* %5, i32* null)
  %82 = call i32 @cl_git_pass(i32 %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_set_ident(i32, i8*, i8*) #2

declare dso_local i32 @cl_fixture_sandbox(i8*) #2

declare dso_local i32 @cl_rename(i8*, i8*) #2

declare dso_local i32 @rewrite_gitmodules(i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i8* @cl_getenv(i8*) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @git_remote_create(i32**, i32, i8*, i8*) #2

declare dso_local i32 @record_callbacks_data_clear(i32*) #2

declare dso_local i32 @git_remote_connect(i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_ls(i32***, i64*, i32*) #2

declare dso_local i32 @create_deletion_refspecs(%struct.TYPE_13__*, i32**, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @git_remote_upload(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #2

declare dso_local i32 @git_remote_disconnect(i32*) #2

declare dso_local i32 @git_vector_free_deep(%struct.TYPE_13__*) #2

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_16__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
