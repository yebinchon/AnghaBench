; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_lookup.c_test_object_lookup__lookup_corrupt_object_returns_error.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_lookup.c_test_object_lookup__lookup_corrupt_object_returns_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64 }

@.str = private unnamed_addr constant [41 x i8] c"8e73b769e97678d684b809b163bebdae2911720f\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"objects/8e/73b769e97678d684b809b163bebdae2911720f\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_lookup__lookup_corrupt_object_returns_error() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %8 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %9 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @git_oid_fromstr(i32* %5, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_path(i32 %13)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %3, i32 %14, i8* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @git_futils_readbuffer(%struct.TYPE_7__* %4, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %49, %0
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = call i32 @git_futils_writebuffer(%struct.TYPE_7__* %4, i32* %35, i32 %36, i32 420)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %41 = call i32 @git_object_lookup(i32** %6, i32 %39, i32* %5, i32 %40)
  %42 = call i32 @cl_git_fail(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %27
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %22

52:                                               ; preds = %22
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @O_RDWR, align 4
  %56 = call i32 @git_futils_writebuffer(%struct.TYPE_7__* %4, i32* %54, i32 %55, i32 420)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32, i32* @g_repo, align 4
  %59 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %60 = call i32 @git_object_lookup(i32** %6, i32 %58, i32* %5, i32 %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @git_object_free(i32* %62)
  %64 = call i32 @git_buf_dispose(%struct.TYPE_7__* %3)
  %65 = call i32 @git_buf_dispose(%struct.TYPE_7__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @git_futils_writebuffer(%struct.TYPE_7__*, i32*, i32, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
