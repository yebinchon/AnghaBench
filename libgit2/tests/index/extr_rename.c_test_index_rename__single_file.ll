; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_rename.c_test_index_rename__single_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_rename.c_test_index_rename__single_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"./rename\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"./rename/lame.name.txt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"new_file\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lame.name.txt\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"d4fa8600b4f37d7516bef4816ae2c64dbf029e3a\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"./rename/fancy.name.txt\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fancy.name.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_rename__single_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = call i32 @p_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 448)
  %7 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_repository_index(i32** %2, i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @git_index_entrycount(i32* %12)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_index_add_bypath(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_index_entrycount(i32* %21)
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_index_find(i64* %3, i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %34, i64 %35)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @cl_assert_equal_oid(i32* %4, i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_index_remove(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_index_entrycount(i32* %43)
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = call i32 @p_rename(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_index_add_bypath(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @git_index_entrycount(i32* %52)
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_index_find(i64* %3, i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %63, i64 %64)
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @cl_assert_equal_oid(i32* %4, i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @git_index_free(i32* %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @git_repository_free(i32* %71)
  %73 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_find(i64*, i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @git_index_get_byindex(i32*, i64) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
