; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_bare.c_test_filter_bare__sanitizes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_bare.c_test_filter_bare__sanitizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"e69de29\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"file.bin\00", align 1
@filter_opts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"file.crlf\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"file.lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_bare__sanitizes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_revparse_single(i32** %1, i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_blob_rawsize(i32* %7)
  %9 = call i32 @cl_assert_equal_i(i32 0, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_blob_rawcontent(i32* %10)
  %12 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_blob_filter(%struct.TYPE_5__* %2, i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* @filter_opts)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_sz(i32 0, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @git_buf_dispose(%struct.TYPE_5__* %2)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_blob_filter(%struct.TYPE_5__* %2, i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* @filter_opts)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cl_assert_equal_sz(i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @git_buf_dispose(%struct.TYPE_5__* %2)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_blob_filter(%struct.TYPE_5__* %2, i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* @filter_opts)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_sz(i32 0, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 @git_buf_dispose(%struct.TYPE_5__* %2)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_blob_free(i32* %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_blob_rawsize(i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_blob_rawcontent(i32*) #2

declare dso_local i32 @git_blob_filter(%struct.TYPE_5__*, i32*, i8*, i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_blob_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
