; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__order_dependency.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__order_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"empty_standard_repo/.gitattributes\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"hero.*.rev-ident text ident prereverse eol=lf\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"empty_standard_repo/hero.1.rev-ident\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"This is a test\0A$Id$\0AHave fun!\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"empty_standard_repo/hero.2.rev-ident\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Another test\0A$dI$\0ACrazy!\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"hero.1.rev-ident\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hero.2.rev-ident\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Filter chains\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\0A!nuf evaH\0A$dI$\0Atset a si sihT\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\0A!yzarC\0A$Id$\0Atset rehtonA\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"Another test\0A$ 59001fe193103b1016b27027c0c827d036fd0ac8 :dI$\0ACrazy!\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"8ca0df630d728c0c72072b6101b301391ef10095\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_custom__order_dependency() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_index(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_index_add_bypath(i32* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_index_add_bypath(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @cl_repo_commit_from_index(i32* null, i32 %17, i32* null, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_index_free(i32* %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call %struct.TYPE_6__* @git_index_get_bypath(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @git_blob_lookup(i32** %2, i32 %21, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_blob_rawcontent(i32* %27)
  %29 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_blob_filter(%struct.TYPE_5__* %3, i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_blob_free(i32* %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32*, i32** %1, align 8
  %40 = call %struct.TYPE_6__* @git_index_get_bypath(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @git_blob_lookup(i32** %2, i32 %38, i32* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_blob_rawcontent(i32* %44)
  %46 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_blob_filter(%struct.TYPE_5__* %3, i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_blob_id(i32* %53)
  %55 = call i32 @git_oid_strcmp(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %56 = call i32 @cl_assert_equal_i(i32 0, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_blob_free(i32* %57)
  %59 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32*, i32, i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #2

declare dso_local %struct.TYPE_6__* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_blob_rawcontent(i32*) #2

declare dso_local i32 @git_blob_filter(%struct.TYPE_5__*, i32*, i8*, i32*) #2

declare dso_local i32 @git_blob_free(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_oid_strcmp(i32, i8*) #2

declare dso_local i32 @git_blob_id(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
