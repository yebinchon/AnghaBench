; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__root.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"refs/heads/root-commit-branch\00", align 1
@tree_id_str = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@committer_name = common dso_local global i32 0, align 4
@committer_email = common dso_local global i32 0, align 4
@head = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@head_old = common dso_local global i32* null, align 8
@root_commit_message = common dso_local global i32 0, align 4
@commit = common dso_local global i32 0, align 4
@branch = common dso_local global i32 0, align 4
@root_reflog_message = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__root() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %10 = load i32, i32* @tree_id_str, align 4
  %11 = call i32 @git_oid_fromstr(i32* %1, i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_tree_lookup(i32** %7, i32 %12, i32* %1)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @committer_name, align 4
  %16 = load i32, i32* @committer_email, align 4
  %17 = call i32 @git_signature_new(%struct.TYPE_7__** %5, i32 %15, i32 %16, i32 123456789, i32 60)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @committer_name, align 4
  %20 = load i32, i32* @committer_email, align 4
  %21 = call i32 @git_signature_new(%struct.TYPE_7__** %4, i32 %19, i32 %20, i32 987654321, i32 90)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_reference_lookup(i32* @head, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @head, align 4
  %27 = call i64 @git_reference_type(i32 %26)
  %28 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32, i32* @head, align 4
  %33 = call i32 @git_reference_symbolic_target(i32 %32)
  %34 = call i32* @git__strdup(i32 %33)
  store i32* %34, i32** @head_old, align 8
  %35 = load i32*, i32** @head_old, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32, i32* @head, align 4
  %40 = call i32 @git_reference_free(i32 %39)
  %41 = load i32, i32* @g_repo, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @git_reference_symbolic_create(i32* @head, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 1, i32* null)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* @g_repo, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i32, i32* @root_commit_message, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @git_commit_create_v(i32* %2, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %46, %struct.TYPE_7__* %47, i32* null, i32 %48, i32* %49, i32 0)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @git_object_free(i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i32 @git_signature_free(%struct.TYPE_7__* %54)
  %56 = load i32, i32* @g_repo, align 4
  %57 = call i32 @git_commit_lookup(i32* @commit, i32 %56, i32* %2)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32, i32* @commit, align 4
  %60 = call i64 @git_commit_parentcount(i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = load i32, i32* @g_repo, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @git_reference_lookup(i32* @branch, i32 %64, i8* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i32, i32* @branch, align 4
  %69 = call i32* @git_reference_target(i32 %68)
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @cl_assert_equal_oid(i32* %70, i32* %2)
  %72 = load i32, i32* @root_commit_message, align 4
  %73 = load i32, i32* @commit, align 4
  %74 = call i32 @git_commit_message(i32 %73)
  %75 = call i32 @cl_assert_equal_s(i32 %72, i32 %74)
  %76 = load i32, i32* @g_repo, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @git_reflog_read(i32** %8, i32 %76, i8* %77)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @git_reflog_entrycount(i32* %80)
  %82 = call i32 @cl_assert_equal_i(i32 1, i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i32* @git_reflog_entry_byindex(i32* %83, i32 0)
  store i32* %84, i32** %9, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call %struct.TYPE_8__* @git_reflog_entry_committer(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @cl_assert_equal_s(i32 %87, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call %struct.TYPE_8__* @git_reflog_entry_committer(i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cl_assert_equal_s(i32 %95, i32 %99)
  %101 = load i32, i32* @root_reflog_message, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @git_reflog_entry_message(i32* %102)
  %104 = call i32 @cl_assert_equal_s(i32 %101, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = call i32 @git_signature_free(%struct.TYPE_7__* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @git_reflog_free(i32* %107)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_signature_new(%struct.TYPE_7__**, i32, i32, i32, i32) #1

declare dso_local i32 @git_reference_lookup(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_reference_type(i32) #1

declare dso_local i32* @git__strdup(i32) #1

declare dso_local i32 @git_reference_symbolic_target(i32) #1

declare dso_local i32 @git_reference_free(i32) #1

declare dso_local i32 @git_reference_symbolic_create(i32*, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @git_commit_create_v(i32*, i32, i8*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_signature_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git_commit_lookup(i32*, i32, i32*) #1

declare dso_local i64 @git_commit_parentcount(i32) #1

declare dso_local i32* @git_reference_target(i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_commit_message(i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @git_reflog_entry_committer(i32*) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
