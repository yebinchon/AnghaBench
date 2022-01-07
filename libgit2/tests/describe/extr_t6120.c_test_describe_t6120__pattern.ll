; ModuleID = '/home/carl/AnghaBench/libgit2/tests/describe/extr_t6120.c_test_describe_t6120__pattern.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/describe/extr_t6120.c_test_describe_t6120__pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_DESCRIBE_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GIT_DESCRIBE_FORMAT_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tagger\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tagger@libgit2.org\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"test-annotated\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"one more\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"refs/tags/test1-lightweight\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"yet another\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"refs/tags/test2-lightweight\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"even more\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"test-*\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"test-annotated-*\00", align 1
@GIT_DESCRIBE_TAGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"test1-*\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"test1-lightweight-*\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"test2-*\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"test2-lightweight-*\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"HEAD^\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_describe_t6120__pattern() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_DESCRIBE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %8 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DESCRIBE_FORMAT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_revparse_single(i32** %4, i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  store i32 1380553019, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @git_signature_new(i32** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @git_tag_create(i32* %3, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %16, i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_signature_free(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_object_free(i32* %22)
  %24 = call i32 @commit_and_tag(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @commit_and_tag(i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %26 = call i32 @commit_and_tag(i32* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* null)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @repo, align 4
  %29 = call i32 @assert_describe(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2)
  %30 = load i32, i32* @GIT_DESCRIBE_TAGS, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @repo, align 4
  %34 = call i32 @assert_describe(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @repo, align 4
  %37 = call i32 @assert_describe(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @repo, align 4
  %40 = call i32 @assert_describe(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %39, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #2

declare dso_local i32 @git_tag_create(i32*, i32, i8*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @git_signature_free(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @commit_and_tag(i32*, i8*, i8*) #2

declare dso_local i32 @assert_describe(i8*, i8*, i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
