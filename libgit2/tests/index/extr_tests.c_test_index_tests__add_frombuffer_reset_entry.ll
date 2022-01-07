; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add_frombuffer_reset_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add_frombuffer_reset_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, i32 }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"here\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@cleanup_myrepo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"myrepo/test.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"a8233120f6ad708f843d861ce2b7228ec4e3dec6\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__add_frombuffer_reset_entry() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %10, i32* %5, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %11 = call i32 @cl_set_cleanup(i32* @cleanup_myrepo, i32* null)
  %12 = call i32 @git_repository_init(i32** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_repository_index(i32** %1, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_futils_mkpath2file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_filebuf_open(i32* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 438)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @git_filebuf_write(i32* %5, i8* %21, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_filebuf_commit(i32* %5)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_index_add_bypath(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 40)
  %34 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %36, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @git_index_add_from_buffer(i32* %37, %struct.TYPE_6__* %3, i8* %38, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_index_entrycount(i32* %43)
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call %struct.TYPE_6__* @git_index_get_byindex(i32* %48, i32 0)
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = call i32 @cl_assert_equal_oid(i32* %6, i32* %51)
  %53 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cl_assert_equal_i(i32 %53, i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call %struct.TYPE_6__* @git_index_get_bypath(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %4, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  %65 = call i32 @cl_assert_equal_oid(i32* %6, i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @cl_assert_equal_i(i32 0, i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_i(i32 0, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cl_assert_equal_i(i32 0, i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cl_assert_equal_i(i32 0, i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cl_assert_equal_i(i32 10, i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @git_blob_lookup(i32** %7, i32* %86, i32* %6)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i8*, i8** %9, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @git_blob_rawcontent(i32* %90)
  %92 = call i32 @cl_assert_equal_s(i8* %89, i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @git_blob_free(i32* %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_index_free(i32* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @git_repository_free(i32* %97)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_futils_mkpath2file(i8*, i32) #1

declare dso_local i32 @git_filebuf_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_filebuf_commit(i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32*) #1

declare dso_local %struct.TYPE_6__* @git_index_get_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_6__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @git_blob_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_blob_rawcontent(i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
