; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__commit_with_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__commit_with_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"b146bd7608eac53d9bf9e1a6963543588b555c64\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\00", align 1
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"4461379789c777d2a6c1f2ee0e9d6c86731b9992\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Modification 1 to beef\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Edward Thomson\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ethomson@edwardthomson.com\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"rebase: Modification 1 to beef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__commit_with_id() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_annotated_commit_lookup(i32** %4, i32 %18, i32* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = call i32 @git_annotated_commit_lookup(i32** %5, i32 %21, i32* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_rebase_init(i32** %1, i32 %24, i32* %25, i32* %26, i32* null, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_rebase_next(i32** %6, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32*, i32** @signature, align 8
  %34 = call i32 @git_rebase_commit(i32* %7, i32* %32, i32* null, i32* %33, i32* null, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @repo, align 4
  %37 = call i32 @git_commit_lookup(i32** %11, i32 %36, i32* %7)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @git_oid_fromstr(i32* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @git_commit_parentcount(i32* %40)
  %42 = call i32 @cl_assert_equal_i(i32 1, i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @git_commit_parent_id(i32* %43, i32 0)
  %45 = call i32 @cl_assert_equal_oid(i32* %9, i32 %44)
  %46 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @git_commit_tree_id(i32* %47)
  %49 = call i32 @cl_assert_equal_oid(i32* %8, i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @git_commit_message_encoding(i32* %50)
  %52 = call i32 @cl_assert_equal_s(i8* null, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @git_commit_message(i32* %53)
  %55 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = call i32 @git_signature_new(i32** %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 1405621769, i64 -240)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @git_commit_author(i32* %59)
  %61 = call i32* @git_signature__equal(i32* %58, i32 %60)
  %62 = call i32 @cl_assert(i32* %61)
  %63 = load i32*, i32** @signature, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @git_commit_committer(i32* %64)
  %66 = call i32* @git_signature__equal(i32* %63, i32 %65)
  %67 = call i32 @cl_assert(i32* %66)
  %68 = load i32, i32* @repo, align 4
  %69 = call i32 @git_reflog_read(i32** %12, i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @git_reflog_entry_byindex(i32* %71, i32 0)
  store i32* %72, i32** %13, align 8
  %73 = call i32 @cl_assert(i32* %72)
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @git_reflog_entry_id_old(i32* %74)
  %76 = call i32 @cl_assert_equal_oid(i32* %9, i32 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @git_reflog_entry_id_new(i32* %77)
  %79 = call i32 @cl_assert_equal_oid(i32* %7, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @git_reflog_entry_message(i32* %80)
  %82 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @git_reflog_free(i32* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @git_signature_free(i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @git_commit_free(i32* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @git_annotated_commit_free(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @git_annotated_commit_free(i32* %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @git_rebase_free(i32* %93)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_annotated_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(i32**, i32*) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_commit_parent_id(i32*, i32) #1

declare dso_local i32 @git_commit_tree_id(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_commit_message_encoding(i32*) #1

declare dso_local i32 @git_commit_message(i32*) #1

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i64) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32* @git_signature__equal(i32*, i32) #1

declare dso_local i32 @git_commit_author(i32*) #1

declare dso_local i32 @git_commit_committer(i32*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @git_reflog_entry_id_old(i32*) #1

declare dso_local i32 @git_reflog_entry_id_new(i32*) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
