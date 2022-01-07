; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_lookup.c_test_object_lookup__lookup_object_with_wrong_hash_returns_error.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_lookup.c_test_object_lookup__lookup_object_with_wrong_hash_returns_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"objects/8e/73b769e97678d684b809b163bebdae2911720f\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"objects/8e/73b769e97678d684b809b163bebdae2911720e\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"8e73b769e97678d684b809b163bebdae2911720e\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_EMISMATCH = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_lookup__lookup_object_with_wrong_hash_returns_error() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %8 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @git_oid_fromstr(i32* %7, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_path(i32 %13)
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %4, i32 %14, i8* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_repository_path(i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %5, i32 %19, i8* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_futils_cp(i32 %24, i32 %26, i32 420)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @GIT_EMISMATCH, align 4
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %32 = call i32 @git_object_lookup(i32** %6, i32 %30, i32* %7, i32 %31)
  %33 = call i32 @cl_git_fail_with(i32 %29, i32 %32)
  %34 = load i32, i32* @GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, align 4
  %35 = call i32 @git_libgit2_opts(i32 %34, i32 0)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %39 = call i32 @git_object_lookup(i32** %6, i32 %37, i32* %7, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32, i32* @GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, align 4
  %42 = call i32 @git_libgit2_opts(i32 %41, i32 1)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @git_object_free(i32* %44)
  %46 = call i32 @git_buf_dispose(%struct.TYPE_5__* %4)
  %47 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_futils_cp(i32, i32, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_libgit2_opts(i32, i32) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
