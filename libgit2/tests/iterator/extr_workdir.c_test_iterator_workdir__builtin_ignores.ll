; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__builtin_ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__builtin_ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.anon = type { i8*, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@test_iterator_workdir__builtin_ignores.expected = internal global [20 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 0 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ign\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"macro_bad\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"macro_test\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"root_test1\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"root_test2\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"root_test3\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"root_test4.txt\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sub/\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"sub/.gitattributes\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sub/abc\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"sub/dir/\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"sub/file\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"sub/ign/\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sub/sub/\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"sub/sub/.gitattributes\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"sub/sub/dir\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"sub/sub/file\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"attr/sub/sub/.git\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"attr/sub/.git\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"whatever\00", align 1
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i64 0, align 8
@GIT_FILEMODE_COMMIT = common dso_local global i64 0, align 8
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__builtin_ignores() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i32 %8, i32* @g_repo, align 4
  %9 = call i32 @p_mkdir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 511)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %12 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_iterator_for_workdir(i32** %1, i32 %16, i32* null, i32* null, %struct.TYPE_8__* %2)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_iterator_current(%struct.TYPE_9__** %3, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %83, %0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_iterator_current_is_ignored(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @test_iterator_workdir__builtin_ignores.expected, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 16
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cl_assert_equal_s(i8* %32, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @test_iterator_workdir__builtin_ignores.expected, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %37, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @test_iterator_workdir__builtin_ignores.expected, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 16
  %50 = call i32 @cl_assert_(i32 %44, i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %25
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %53
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @git_iterator_advance_into(%struct.TYPE_9__** %3, i32* %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  br label %82

69:                                               ; preds = %59, %25
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @git_iterator_advance(%struct.TYPE_9__** %3, i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @GIT_ITEROVER, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i1 [ true, %69 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @cl_assert(i32 %80)
  br label %82

82:                                               ; preds = %78, %65
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %22

86:                                               ; preds = %22
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @test_iterator_workdir__builtin_ignores.expected, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 16
  %92 = icmp eq i8* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @cl_assert(i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_iterator_free(i32* %95)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_iterator_current(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @git_iterator_current_is_ignored(i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert_(i32, i8*) #2

declare dso_local i32 @git_iterator_advance_into(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
