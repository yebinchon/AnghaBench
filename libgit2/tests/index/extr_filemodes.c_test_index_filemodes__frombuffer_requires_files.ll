; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_test_index_filemodes__frombuffer_requires_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_test_index_filemodes__frombuffer_requires_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"dummy-file.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i8* null, align 8
@GIT_FILEMODE_BLOB_EXECUTABLE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"dummy-link.txt\00", align 1
@GIT_FILEMODE_LINK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid_mode.txt\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i8* null, align 8
@GIT_FILEMODE_COMMIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_filemodes__frombuffer_requires_files() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 16)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_index(i32** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @git_index_add_from_buffer(i32* %12, %struct.TYPE_7__* %2, i8* %13, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @cl_assert(%struct.TYPE_7__* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @cl_assert_equal_i(i8* %25, i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i8*, i8** @GIT_FILEMODE_BLOB_EXECUTABLE, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @git_index_add_from_buffer(i32* %33, %struct.TYPE_7__* %2, i8* %34, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %3, align 8
  %41 = call i32 @cl_assert(%struct.TYPE_7__* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** @GIT_FILEMODE_BLOB_EXECUTABLE, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @cl_assert_equal_i(i8* %46, i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %51, align 8
  %52 = load i8*, i8** @GIT_FILEMODE_LINK, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %1, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @git_index_add_from_buffer(i32* %54, %struct.TYPE_7__* %2, i8* %55, i32 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %3, align 8
  %62 = call i32 @cl_assert(%struct.TYPE_7__* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i8*, i8** @GIT_FILEMODE_LINK, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @cl_assert_equal_i(i8* %67, i8* %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %72, align 8
  %73 = load i8*, i8** @GIT_FILEMODE_TREE, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @git_index_add_from_buffer(i32* %75, %struct.TYPE_7__* %2, i8* %76, i32 %78)
  %80 = call i32 @cl_git_fail(i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %83 = call i32 @cl_assert_equal_p(i32* null, %struct.TYPE_7__* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %84, align 8
  %85 = load i8*, i8** @GIT_FILEMODE_COMMIT, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load i32*, i32** %1, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i32 @git_index_add_from_buffer(i32* %87, %struct.TYPE_7__* %2, i8* %88, i32 %90)
  %92 = call i32 @cl_git_fail(i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %95 = call i32 @cl_assert_equal_p(i32* null, %struct.TYPE_7__* %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @git_index_free(i32* %96)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i8*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @cl_assert_equal_p(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
