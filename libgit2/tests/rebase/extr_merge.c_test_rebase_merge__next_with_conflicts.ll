; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__next_with_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__next_with_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [1020 x i8] c"ASPARAGUS SOUP.\0A\0A<<<<<<< master\0ATAKE FOUR LARGE BUNCHES of asparagus, scrape it nicely, cut off one inch\0AOF THE TOPS, and lay them in water, chop the stalks and put them on the\0AFIRE WITH A PIECE OF BACON, a large onion cut up, and pepper and salt;\0AADD TWO QUARTS OF WATER, boil them till the stalks are quite soft, then\0APULP THEM THROUGH A SIEVE, and strain the water to it, which must be put\0A=======\0ATake four large bunches of asparagus, scrape it nicely, CUT OFF ONE INCH\0Aof the tops, and lay them in water, chop the stalks and PUT THEM ON THE\0Afire with a piece of bacon, a large onion cut up, and pepper and salt;\0Aadd two quarts of water, boil them till the stalks are quite soft, then\0Apulp them through a sieve, and strain the water to it, which must be put\0A>>>>>>> Conflicting modification 1 to asparagus\0Aback in the pot; put into it a chicken cut up, with the tops of\0Aasparagus which had been laid by, boil it until these last articles are\0Asufficiently done, thicken with flour, butter and milk, and serve it up.\0A\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"refs/heads/asparagus\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"33f915f9e4dbd9f4b24430e48731a59b45b15500\00", align 1
@GIT_REBASE_OPERATION_PICK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"33f915f9e4dbd9f4b24430e48731a59b45b15500\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"rebase/.git/rebase-merge/current\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"rebase/.git/rebase-merge/msgnum\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"rebase/asparagus.txt\00", align 1
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__next_with_conflicts() #0 {
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
  %11 = alloca i8*, align 8
  store i8* getelementptr inbounds ([1020 x i8], [1020 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_reference_lookup(i32** %2, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_lookup(i32** %3, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %18, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @git_rebase_init(i32** %1, i32 %26, i32* %27, i32* %28, i32* null, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_rebase_next(%struct.TYPE_11__** %6, i32* %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_oid_fromstr(i32* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @GIT_REBASE_OPERATION_PICK, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i32 %35, i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = call i32 @cl_assert_equal_oid(i32* %9, i32* %41)
  %43 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @cl_assert_equal_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %45 = load i32, i32* @repo, align 4
  %46 = call i32 @git_status_list_new(i32** %7, i32 %45, i32* null)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @git_status_list_entrycount(i32* %48)
  %50 = call i32 @cl_assert_equal_i(i32 1, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call %struct.TYPE_10__* @git_status_byindex(i32* %51, i32 0)
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %8, align 8
  %53 = call i32 @cl_assert(%struct.TYPE_10__* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @cl_assert_equal_file(i8* %61, i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %65 = load i32, i32* @GIT_EUNMERGED, align 4
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @signature, align 4
  %68 = call i32 @git_rebase_commit(i32* %10, i32* %66, i32* null, i32 %67, i32* null, i32* null)
  %69 = call i32 @cl_git_fail_with(i32 %65, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @git_status_list_free(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @git_annotated_commit_free(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @git_annotated_commit_free(i32* %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @git_reference_free(i32* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @git_reference_free(i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_rebase_free(i32* %80)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #1

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_rebase_next(%struct.TYPE_11__**, i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_file(i8*, i32, i8*) #1

declare dso_local i32 @git_status_list_new(i32**, i32, i32*) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @git_status_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #1

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
