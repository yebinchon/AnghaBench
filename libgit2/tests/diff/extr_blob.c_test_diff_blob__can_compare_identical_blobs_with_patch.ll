; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_identical_blobs_with_patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_identical_blobs_with_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@d = common dso_local global i32* null, align 8
@opts = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@alien = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_blob__can_compare_identical_blobs_with_patch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = load i32*, i32** @d, align 8
  %4 = load i32*, i32** @d, align 8
  %5 = call i32 @git_patch_from_blobs(i32** %1, i32* %3, i32* null, i32* %4, i32* null, i32* @opts)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call %struct.TYPE_7__* @git_patch_get_delta(i32* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %2, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_i(i32 %17, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @d, align 8
  %27 = call i32 @git_blob_rawsize(i32* %26)
  %28 = call i32 @cl_assert_equal_sz(i32 %25, i32 %27)
  %29 = load i32*, i32** @d, align 8
  %30 = call i32 @git_blob_id(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @cl_assert_equal_oid(i32 %30, i32* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @d, align 8
  %40 = call i32 @git_blob_rawsize(i32* %39)
  %41 = call i32 @cl_assert_equal_sz(i32 %38, i32 %40)
  %42 = load i32*, i32** @d, align 8
  %43 = call i32 @git_blob_id(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @cl_assert_equal_oid(i32 %43, i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @git_patch_num_hunks(i32* %48)
  %50 = trunc i64 %49 to i32
  %51 = call i32 @cl_assert_equal_i(i32 0, i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_patch_free(i32* %52)
  %54 = call i32 @git_patch_from_blobs(i32** %1, i32* null, i32* null, i32* null, i32* null, i32* @opts)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call %struct.TYPE_7__* @git_patch_get_delta(i32* %60)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %2, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  %66 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cl_assert_equal_i(i32 %66, i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_sz(i32 0, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @git_oid_is_zero(i32* %78)
  %80 = call i32 @cl_assert(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cl_assert_equal_sz(i32 0, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @git_oid_is_zero(i32* %88)
  %90 = call i32 @cl_assert(i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i64 @git_patch_num_hunks(i32* %91)
  %93 = trunc i64 %92 to i32
  %94 = call i32 @cl_assert_equal_i(i32 0, i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_patch_free(i32* %95)
  %97 = load i32*, i32** @alien, align 8
  %98 = load i32*, i32** @alien, align 8
  %99 = call i32 @git_patch_from_blobs(i32** %1, i32* %97, i32* null, i32* %98, i32* null, i32* @opts)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = icmp ne i32* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i32 @cl_assert(i32 %103)
  %105 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  %106 = load i32*, i32** %1, align 8
  %107 = call %struct.TYPE_7__* @git_patch_get_delta(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cl_assert_equal_i(i32 %105, i32 %109)
  %111 = load i32*, i32** %1, align 8
  %112 = call i64 @git_patch_num_hunks(i32* %111)
  %113 = trunc i64 %112 to i32
  %114 = call i32 @cl_assert_equal_i(i32 0, i32 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @git_patch_free(i32* %115)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_patch_from_blobs(i32**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_7__* @git_patch_get_delta(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_blob_rawsize(i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32*) #1

declare dso_local i32 @git_blob_id(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_oid_is_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
