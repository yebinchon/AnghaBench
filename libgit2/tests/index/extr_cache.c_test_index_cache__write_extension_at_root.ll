; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__write_extension_at_root.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__write_extension_at_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"45dd856fdd4d89b884c340ba0e047752d9b085d6\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"index-tree\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_cache__write_extension_at_root() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @git_index_open(%struct.TYPE_9__** %1, i8* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  %16 = call i32 @cl_assert(%struct.TYPE_10__* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @git_oid_fromstr(i32* %3, i8* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_tree_lookup(i32** %2, i32 %20, i32* %3)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_index_read_tree(%struct.TYPE_9__* %23, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_tree_free(i32* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = call i32 @cl_assert(%struct.TYPE_10__* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %34 = call i32 @git_index_write(%struct.TYPE_9__* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %37 = call i32 @git_index_free(%struct.TYPE_9__* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @git_index_open(%struct.TYPE_9__** %1, i8* %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = call i32 @cl_assert(%struct.TYPE_10__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %46 = call i32 @git_index_entrycount(%struct.TYPE_9__* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_i(i32 %46, i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_i(i32 0, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call %struct.TYPE_10__* @git_oid_equal(i32* %3, i32* %62)
  %64 = call i32 @cl_assert(%struct.TYPE_10__* %63)
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @p_unlink(i8* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %69 = call i32 @git_index_free(%struct.TYPE_9__* %68)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(%struct.TYPE_9__**, i8*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_10__*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_read_tree(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_write(%struct.TYPE_9__*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_9__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_entrycount(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @git_oid_equal(i32*, i32*) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
