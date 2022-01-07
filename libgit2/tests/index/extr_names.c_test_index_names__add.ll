; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_names.c_test_index_names__add.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_names.c_test_index_names__add.c"
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
define dso_local void @test_index_names__add() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call i32 (...) @index_add_conflicts()
  %3 = load i32, i32* @repo_index, align 4
  %4 = call i32 @git_index_name_add(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @repo_index, align 4
  %7 = call i32 @git_index_name_add(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @repo_index, align 4
  %10 = call i32 @git_index_name_add(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo_index, align 4
  %13 = call i32 @git_index_name_entrycount(i32 %12)
  %14 = icmp eq i32 %13, 3
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @repo_index, align 4
  %18 = call %struct.TYPE_3__* @git_index_name_get_byindex(i32 %17, i32 0)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %1, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @strcmp(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @strcmp(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @strcmp(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = load i32, i32* @repo_index, align 4
  %41 = call %struct.TYPE_3__* @git_index_name_get_byindex(i32 %40, i32 1)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %1, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @strcmp(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @strcmp(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load i32, i32* @repo_index, align 4
  %63 = call %struct.TYPE_3__* @git_index_name_get_byindex(i32 %62, i32 2)
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %1, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @strcmp(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @cl_assert(i32 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @strcmp(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @cl_assert(i32 %82)
  %84 = load i32, i32* @repo_index, align 4
  %85 = call i32 @git_index_write(i32 %84)
  %86 = call i32 @cl_git_pass(i32 %85)
  ret void
}

declare dso_local i32 @index_add_conflicts(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_name_add(i32, i8*, i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_name_entrycount(i32) #1

declare dso_local %struct.TYPE_3__* @git_index_name_get_byindex(i32, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
