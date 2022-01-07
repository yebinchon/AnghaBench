; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@cleanup_myrepo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"myrepo/test.txt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a8233120f6ad708f843d861ce2b7228ec4e3dec6\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__add() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %6, i32* %2, align 4
  %7 = call i32 @cl_set_cleanup(i32* @cleanup_myrepo, i32* null)
  %8 = call i32 @git_repository_init(i32** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_repository_index(i32** %1, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_index_entrycount(i32* %13)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = call i32 @git_futils_mkpath2file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_filebuf_open(i32* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 438)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @git_filebuf_write(i32* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @git_filebuf_commit(i32* %2)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_index_add_bypath(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_index_entrycount(i32* %31)
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call %struct.TYPE_4__* @git_index_get_byindex(i32* %36, i32 0)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @cl_assert_equal_oid(i32* %5, i32* %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call %struct.TYPE_4__* @git_index_get_bypath(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %4, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @cl_assert_equal_oid(i32* %5, i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_index_free(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @git_repository_free(i32* %51)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32*) #1

declare dso_local i32 @git_futils_mkpath2file(i8*, i32) #1

declare dso_local i32 @git_filebuf_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #1

declare dso_local i32 @git_filebuf_commit(i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
