; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__details0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__details0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@test_commit_parse__details0.commit_ids = internal global [7 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [41 x i8] c"a4a7dce85cf63874e984719f4fdd239f5145052f\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"9fd738e8f7967c078dceed8190330fc8648ee56a\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"c47800c7266a2be04c571c04d5a6614691ea99bd\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"8496071c1b46c854b31185ea97743be6a8774479\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"5b5b025afb0b4c913b4c338a42934a3863bf3644\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"Scott Chacon\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"schacon@gmail.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parse__details0() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i64 7, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %103, %0
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %15, 7
  br i1 %16, label %17, label %106

17:                                               ; preds = %13
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_commit_parse__details0.commit_ids, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @git_oid_fromstr(i32* %3, i8* %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_commit_lookup(i32** %4, i32 %23, i32* %3)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @git_commit_message(i32* %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.TYPE_4__* @git_commit_author(i32* %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_4__* @git_commit_committer(i32* %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %6, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @git_commit_time(i32* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_commit_parentcount(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = icmp sgt i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ule i32 %60, 2
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %89, %17
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @git_commit_free(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %11, align 8
  store i32* %75, i32** %12, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @git_commit_parent(i32** %11, i32* %76, i32 %77)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @cl_assert(i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call %struct.TYPE_4__* @git_commit_author(i32* %84)
  %86 = icmp ne %struct.TYPE_4__* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @cl_assert(i32 %87)
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @git_commit_free(i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @git_commit_free(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @git_commit_parent(i32** %11, i32* %97, i32 %98)
  %100 = call i32 @cl_git_fail(i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @git_commit_free(i32* %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %2, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %2, align 4
  br label %13

106:                                              ; preds = %13
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i8* @git_commit_message(i32*) #1

declare dso_local %struct.TYPE_4__* @git_commit_author(i32*) #1

declare dso_local %struct.TYPE_4__* @git_commit_committer(i32*) #1

declare dso_local i64 @git_commit_time(i32*) #1

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
