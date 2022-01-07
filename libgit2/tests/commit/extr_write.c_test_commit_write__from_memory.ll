; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__from_memory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__from_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@tree_id_str = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@parent_id_str = common dso_local global i32 0, align 4
@committer_name = common dso_local global i32 0, align 4
@committer_email = common dso_local global i32 0, align 4
@commit_message = common dso_local global i32 0, align 4
@commit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__from_memory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = load i32, i32* @tree_id_str, align 4
  %11 = call i32 @git_oid_fromstr(i32* %1, i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_tree_lookup(i32** %9, i32 %12, i32* %1)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @parent_id_str, align 4
  %16 = call i32 @git_oid_fromstr(i32* %2, i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_commit_lookup(i32** %8, i32 %17, i32* %2)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @committer_name, align 4
  %21 = load i32, i32* @committer_email, align 4
  %22 = call i32 @git_signature_new(%struct.TYPE_10__** %5, i32 %20, i32 %21, i32 123456789, i32 60)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @committer_name, align 4
  %25 = load i32, i32* @committer_email, align 4
  %26 = call i32 @git_signature_new(%struct.TYPE_10__** %4, i32 %24, i32 %25, i32 987654321, i32 90)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = load i32, i32* @commit_message, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @git_commit_create_v(i32* %3, i32 %28, i32* null, %struct.TYPE_10__* %29, %struct.TYPE_10__* %30, i32* null, i32 %31, i32* %32, i32 1, i32* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @git_object_free(i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @git_object_free(i32* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @git_signature_free(%struct.TYPE_10__* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = call i32 @git_signature_free(%struct.TYPE_10__* %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @git_commit_lookup(i32** @commit, i32 %44, i32* %3)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** @commit, align 8
  %48 = call %struct.TYPE_10__* @git_commit_author(i32* %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load i32, i32* @committer_name, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_s(i32 %53, i32 %56)
  %58 = load i32, i32* @committer_email, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cl_assert_equal_s(i32 %58, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 987654321
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 90
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = load i32*, i32** @commit, align 8
  %78 = call %struct.TYPE_10__* @git_commit_committer(i32* %77)
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %7, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = load i32, i32* @committer_name, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cl_assert_equal_s(i32 %83, i32 %86)
  %88 = load i32, i32* @committer_email, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @cl_assert_equal_s(i32 %88, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 123456789
  %98 = zext i1 %97 to i32
  %99 = call i32 @cl_assert(i32 %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 60
  %105 = zext i1 %104 to i32
  %106 = call i32 @cl_assert(i32 %105)
  %107 = load i32, i32* @commit_message, align 4
  %108 = load i32*, i32** @commit, align 8
  %109 = call i32 @git_commit_message(i32* %108)
  %110 = call i32 @cl_assert_equal_s(i32 %107, i32 %109)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_signature_new(%struct.TYPE_10__**, i32, i32, i32, i32) #1

declare dso_local i32 @git_commit_create_v(i32*, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_signature_free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @git_commit_author(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local %struct.TYPE_10__* @git_commit_committer(i32*) #1

declare dso_local i32 @git_commit_message(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
