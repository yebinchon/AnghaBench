; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__filtering.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@blob_oid = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@_entries = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"aardvark\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@treebuilder_filter_prefixed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_write__filtering() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @blob_oid, align 4
  %7 = call i32 @git_oid_fromstr(i32* %3, i32 %6)
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_treebuilder_new(i32** %1, i32 %8, i32* null)
  %10 = call i32 @cl_git_pass(i32 %9)
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %35, %0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_entries, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load i32*, i32** %1, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_entries, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_entries, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @git_treebuilder_insert(i32* null, i32* %20, i64 %26, i32* %3, i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i32*, i32** %1, align 8
  %40 = call i64 @git_treebuilder_entrycount(i32* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @cl_assert_equal_i(i32 6, i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* @git_treebuilder_get(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32* @git_treebuilder_get(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32* @git_treebuilder_get(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @cl_assert(i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i32, i32* @treebuilder_filter_prefixed, align 4
  %60 = call i32 @git_treebuilder_filter(i32* %58, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %61 = load i32*, i32** %1, align 8
  %62 = call i64 @git_treebuilder_entrycount(i32* %61)
  %63 = trunc i64 %62 to i32
  %64 = call i32 @cl_assert_equal_i(i32 4, i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32* @git_treebuilder_get(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %67 = icmp eq i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32* @git_treebuilder_get(i32* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @cl_assert(i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32* @git_treebuilder_get(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @cl_assert(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* @treebuilder_filter_prefixed, align 4
  %82 = call i32 @git_treebuilder_filter(i32* %80, i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32*, i32** %1, align 8
  %84 = call i64 @git_treebuilder_entrycount(i32* %83)
  %85 = trunc i64 %84 to i32
  %86 = call i32 @cl_assert_equal_i(i32 2, i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32* @git_treebuilder_get(i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp eq i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @cl_assert(i32 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32* @git_treebuilder_get(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @cl_assert(i32 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @git_treebuilder_write(i32* %4, i32* %97)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @git_treebuilder_free(i32* %100)
  %102 = load i32, i32* @g_repo, align 4
  %103 = call i32 @git_tree_lookup(i32** %5, i32 %102, i32* %4)
  %104 = call i32 @cl_git_pass(i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i64 @git_tree_entrycount(i32* %105)
  %107 = trunc i64 %106 to i32
  %108 = call i32 @cl_assert_equal_i(i32 2, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @git_tree_free(i32* %109)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_treebuilder_entrycount(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_treebuilder_get(i32*, i8*) #1

declare dso_local i32 @git_treebuilder_filter(i32*, i32, i8*) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
