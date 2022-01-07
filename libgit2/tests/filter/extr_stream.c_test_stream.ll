; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_test_stream.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_stream.c_test_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.stat = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"empty_standard_repo/.gitattributes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"* compress\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"streamed_file\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"empty_standard_repo/streamed_file\00", align 1
@CHUNKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stream(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  store i64 %0, i64* %2, align 8
  %8 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @writefile(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_repository_index(i32** %3, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_index_add_bypath(i32* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_index_write(i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @cl_assert(%struct.TYPE_7__* %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 @git_blob_lookup(i32** %5, i32 %26, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i64, i64* %2, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @git_blob_rawsize(i32* %32)
  %34 = call i32 @cl_assert_equal_i(i64 %31, i32 %33)
  %35 = call i32 @p_unlink(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @cl_must_pass(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @git_checkout_index(i32 %37, i32* %38, %struct.TYPE_8__* %7)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @p_stat(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %6)
  %42 = call i32 @cl_must_pass(i32 %41)
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @CHUNKSIZE, align 8
  %45 = mul i64 %43, %44
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_sz(i64 %45, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_index_free(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @git_blob_free(i32* %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @writefile(i8*, i64) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @cl_assert(%struct.TYPE_7__*) #2

declare dso_local %struct.TYPE_7__* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i64, i32) #2

declare dso_local i32 @git_blob_rawsize(i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_blob_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
