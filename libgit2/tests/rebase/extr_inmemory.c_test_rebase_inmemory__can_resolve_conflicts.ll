; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_inmemory.c_test_rebase_inmemory__can_resolve_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_inmemory.c_test_rebase_inmemory__can_resolve_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"refs/heads/asparagus\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"33f915f9e4dbd9f4b24430e48731a59b45b15500\00", align 1
@GIT_REBASE_OPERATION_PICK = common dso_local global i32 0, align 4
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"414dfc71ead79c07acd4ea47fecf91f289afc4b9\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"db7af47222181e548810da2ab5fec0e9357c5637\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_inmemory__can_resolve_conflicts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_reference_lookup(i32** %2, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = call i32 @git_reference_lookup(i32** %3, i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %24, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %28, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @repo, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @git_rebase_init(i32** %1, i32 %32, i32* %33, i32* %34, i32* null, %struct.TYPE_10__* %14)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_rebase_next(%struct.TYPE_11__** %6, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @GIT_REBASE_OPERATION_PICK, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i32 %41, i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = call i32 @cl_assert_equal_oid(i32* %8, i32* %47)
  %49 = load i32, i32* @repo, align 4
  %50 = call i32 @git_repository_index(i32** %12, i32 %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @git_index_has_conflicts(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @cl_assert(i32 %56)
  %58 = load i32, i32* @repo, align 4
  %59 = call i32 @git_status_list_new(i32** %7, i32 %58, i32* null)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @git_status_list_entrycount(i32* %61)
  %63 = call i32 @cl_assert_equal_i(i32 0, i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_rebase_inmemory_index(i32** %11, i32* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @git_index_has_conflicts(i32* %67)
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load i32, i32* @GIT_EUNMERGED, align 4
  %71 = load i32*, i32** %1, align 8
  %72 = load i32, i32* @signature, align 4
  %73 = call i32 @git_rebase_commit(i32* %9, i32* %71, i32* null, i32 %72, i32* null, i32* null)
  %74 = call i32 @cl_git_fail_with(i32 %70, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %75, align 8
  %76 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %79 = call i32 @git_oid_fromstr(i32* %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @git_index_conflict_remove(i32* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @git_index_add(i32* %83, %struct.TYPE_12__* %13)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = load i32, i32* @signature, align 4
  %88 = call i32 @git_rebase_commit(i32* %9, i32* %86, i32* null, i32 %87, i32* null, i32* null)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = call i32 @git_oid_fromstr(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = call i32 @cl_assert_equal_oid(i32* %9, i32* %10)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @git_status_list_free(i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @git_annotated_commit_free(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @git_annotated_commit_free(i32* %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @git_reference_free(i32* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @git_reference_free(i32* %101)
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @git_index_free(i32* %103)
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @git_index_free(i32* %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @git_rebase_free(i32* %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_rebase_next(%struct.TYPE_11__**, i32*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_index_has_conflicts(i32*) #2

declare dso_local i32 @git_status_list_new(i32**, i32, i32*) #2

declare dso_local i32 @git_status_list_entrycount(i32*) #2

declare dso_local i32 @git_rebase_inmemory_index(i32**, i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @git_index_conflict_remove(i32*, i8*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_status_list_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_rebase_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
