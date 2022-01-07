; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__next.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"b146bd7608eac53d9bf9e1a6963543588b555c64\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"da9c51a23d02d931a486f45ad18cda05cf5d2b94\00", align 1
@GIT_REBASE_OPERATION_PICK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"da9c51a23d02d931a486f45ad18cda05cf5d2b94\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"rebase/.git/rebase-merge/current\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"rebase/.git/rebase-merge/msgnum\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"8d95ea62e621f1d38d230d9e7d206e41096d76af\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__next() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @git_oid_fromstr(i32* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_lookup(i32** %2, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_reference_lookup(i32** %3, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %21, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @repo, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %25, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @repo, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_rebase_init(i32** %1, i32 %29, i32* %30, i32* %31, i32* null, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_rebase_orig_head_name(i32* %34)
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32* @git_rebase_orig_head_id(i32* %37)
  %39 = call i32 @cl_assert_equal_oid(i32* %12, i32* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_rebase_onto_name(i32* %40)
  %42 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* @git_rebase_onto_id(i32* %43)
  %45 = call i32 @cl_assert_equal_oid(i32* %11, i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_rebase_next(%struct.TYPE_11__** %6, i32* %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = call i32 @git_oid_fromstr(i32* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @GIT_REBASE_OPERATION_PICK, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_i(i32 %50, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @cl_assert_equal_oid(i32* %9, i32* %56)
  %58 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %59 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %60 = load i32, i32* @repo, align 4
  %61 = call i32 @git_status_list_new(i32** %7, i32 %60, i32* null)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @git_status_list_entrycount(i32* %63)
  %65 = call i32 @cl_assert_equal_i(i32 1, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call %struct.TYPE_10__* @git_status_byindex(i32* %66, i32 0)
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %8, align 8
  %68 = call i32 @cl_assert(%struct.TYPE_10__* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  %76 = call i32 @git_oid_fromstr(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @cl_assert_equal_oid(i32* %10, i32* %81)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @git_status_list_free(i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @git_annotated_commit_free(i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @git_annotated_commit_free(i32* %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @git_reference_free(i32* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @git_reference_free(i32* %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @git_rebase_free(i32* %93)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_rebase_orig_head_name(i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32* @git_rebase_orig_head_id(i32*) #1

declare dso_local i32 @git_rebase_onto_name(i32*) #1

declare dso_local i32* @git_rebase_onto_id(i32*) #1

declare dso_local i32 @git_rebase_next(%struct.TYPE_11__**, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_file(i8*, i32, i8*) #1

declare dso_local i32 @git_status_list_new(i32**, i32, i32*) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @git_status_byindex(i32*, i32) #1

declare dso_local i32 @git_status_list_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_rebase_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
