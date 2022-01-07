; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add_frombuffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add_frombuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@cleanup_myrepo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a8233120f6ad708f843d861ce2b7228ec4e3dec6\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__add_frombuffer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = call i32 @cl_set_cleanup(i32* @cleanup_myrepo, i32* null)
  %9 = call i32 @git_repository_init(i32** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_repository_index(i32** %1, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_index_entrycount(i32* %14)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 16)
  %22 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @git_index_add_from_buffer(i32* %25, %struct.TYPE_6__* %3, i8* %26, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_index_entrycount(i32* %31)
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call %struct.TYPE_6__* @git_index_get_byindex(i32* %36, i32 0)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i32 @cl_assert_equal_oid(i32* %5, i32* %39)
  %41 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i32 %41, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call %struct.TYPE_6__* @git_index_get_bypath(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %4, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @cl_assert_equal_oid(i32* %5, i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_blob_lookup(i32** %6, i32* %54, i32* %5)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @git_blob_rawcontent(i32* %58)
  %60 = call i32 @cl_assert_equal_s(i8* %57, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @git_blob_free(i32* %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_index_free(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_repository_free(i32* %65)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

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
