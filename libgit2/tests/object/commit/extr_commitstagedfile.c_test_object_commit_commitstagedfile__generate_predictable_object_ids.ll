; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/commit/extr_commitstagedfile.c_test_object_commit_commitstagedfile__generate_predictable_object_ids.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/commit/extr_commitstagedfile.c_test_object_commit_commitstagedfile__generate_predictable_object_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.stat = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"1fe3126578fc4eca68c193e4a3a0a14a0704624d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"2b297e643c551e76cfa1f93810c50811382f9117\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"9daeafb9864cf43055ae93beb0afd6c7d144bfa4\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"treebuilder/test.txt\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"test\0A\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"nulltoken\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"emeric.fermas@gmail.com\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Initial commit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_commit_commitstagedfile__generate_predictable_object_ids() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.stat, align 8
  %12 = call i32 @git_oid_fromstr(i32* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_repository_index(i32** %1, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_index_add_bypath(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call %struct.TYPE_7__* @git_index_get_byindex(i32* %25, i32 0)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %2, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = call i64 @git_oid_cmp(i32* %3, i32* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = call i32 @p_lstat(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %11)
  %34 = call i32 @cl_must_pass(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_index_write_tree(i32* %4, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = call i64 @git_oid_cmp(i32* %5, i32* %4)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  %66 = call i32 @git_signature_new(i32** %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 1323847743, i32 60)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i32, i32* @repo, align 4
  %69 = call i32 @git_tree_lookup(i32** %9, i32 %68, i32* %4)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = call i32 @memset(%struct.TYPE_8__* %10, i32 0, i32 4)
  %72 = call i32 @git_message_prettify(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 0, i8 signext 35)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32, i32* @repo, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @git_commit_create_v(i32* %6, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %75, i32* %76, i32* null, i32 %78, i32* %79, i32 0)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = call i64 @git_oid_cmp(i32* %7, i32* %6)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @cl_assert(i32 %84)
  %86 = call i32 @git_buf_dispose(%struct.TYPE_8__* %10)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @git_signature_free(i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @git_tree_free(i32* %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @git_index_free(i32* %91)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @git_index_get_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_signature_new(i32**, i8*, i8*, i32, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @git_message_prettify(%struct.TYPE_8__*, i8*, i32, i8 signext) #1

declare dso_local i32 @git_commit_create_v(i32*, i32, i8*, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
