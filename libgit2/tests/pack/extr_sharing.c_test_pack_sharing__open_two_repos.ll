; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_sharing.c_test_pack_sharing__open_two_repos.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_sharing.c_test_pack_sharing__open_two_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@git__pack_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_sharing__open_two_repos() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.git_pack_file*, align 8
  %10 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @git_repository_open(i32** %1, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @git_repository_open(i32** %2, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %19 = call i32 @git_object_lookup(i32** %3, i32* %17, i32* %5, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %23 = call i32 @git_object_lookup(i32** %4, i32* %21, i32* %5, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %29, %0
  %26 = load i32, i32* @git__pack_cache, align 4
  %27 = call i32 @git_strmap_iterate(i8** %7, i32 %26, i64* %6, i32* null)
  store i32 %27, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.git_pack_file*
  store %struct.git_pack_file* %31, %struct.git_pack_file** %9, align 8
  %32 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %33 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_i(i32 2, i32 %35)
  br label %25

37:                                               ; preds = %25
  %38 = load i32, i32* @git__pack_cache, align 4
  %39 = call i32 @git_strmap_size(i32 %38)
  %40 = call i32 @cl_assert_equal_i(i32 3, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_object_free(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_object_free(i32* %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_repository_free(i32* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_repository_free(i32* %47)
  %49 = load i32, i32* @git__pack_cache, align 4
  %50 = call i32 @git_strmap_size(i32 %49)
  %51 = call i32 @cl_assert_equal_i(i32 0, i32 %50)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_object_lookup(i32**, i32*, i32*, i32) #1

declare dso_local i32 @git_strmap_iterate(i8**, i32, i64*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_strmap_size(i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
