; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_names.c_test_index_names__roundtrip.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_names.c_test_index_names__roundtrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ancestor\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ancestor2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ours2\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ancestor3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"theirs3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_names__roundtrip() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @repo_index, align 4
  %3 = call i32 @git_index_name_add(i32 %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @repo_index, align 4
  %6 = call i32 @git_index_name_add(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @repo_index, align 4
  %9 = call i32 @git_index_name_add(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @repo_index, align 4
  %12 = call i32 @git_index_write(i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo_index, align 4
  %15 = call i32 @git_index_clear(i32 %14)
  %16 = load i32, i32* @repo_index, align 4
  %17 = call i32 @git_index_name_entrycount(i32 %16)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @repo_index, align 4
  %22 = call i32 @git_index_read(i32 %21, i32 1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo_index, align 4
  %25 = call i32 @git_index_name_entrycount(i32 %24)
  %26 = icmp eq i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32, i32* @repo_index, align 4
  %30 = call %struct.TYPE_3__* @git_index_name_get_byindex(i32 %29, i32 0)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %1, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @strcmp(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @strcmp(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @strcmp(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load i32, i32* @repo_index, align 4
  %53 = call %struct.TYPE_3__* @git_index_name_get_byindex(i32 %52, i32 1)
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %1, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @strcmp(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @strcmp(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @cl_assert(i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @cl_assert(i32 %72)
  %74 = load i32, i32* @repo_index, align 4
  %75 = call %struct.TYPE_3__* @git_index_name_get_byindex(i32 %74, i32 2)
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %1, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @strcmp(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @cl_assert(i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @strcmp(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @cl_assert(i32 %94)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_name_add(i32, i8*, i8*, i8*) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @git_index_clear(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_name_entrycount(i32) #1

declare dso_local i32 @git_index_read(i32, i32) #1

declare dso_local %struct.TYPE_3__* @git_index_name_get_byindex(i32, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
