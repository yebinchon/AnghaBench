; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_blob_to_buffer_with_patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_blob_to_buffer_with_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Hello from the root\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Hello from the root\0A\0ASome additional lines\0A\0ADown here below\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"45141a79\00", align 1
@g_repo = common dso_local global i32 0, align 4
@opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_blob__can_compare_blob_to_buffer_with_patch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %9 = call i32 @git_oid_fromstrn(i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_blob_lookup_prefix(i32** %2, i32 %11, i32* %3, i32 8)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @git_patch_from_blob_and_buffer(i32** %1, i32* %14, i32* null, i8* %15, i32 %17, i32* null, %struct.TYPE_4__* @opts)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call %struct.TYPE_5__* @git_patch_get_delta(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %24, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @git_patch_num_hunks(i32* %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 @cl_assert_equal_i(i32 1, i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_patch_num_lines_in_hunk(i32* %34, i32 0)
  %36 = call i32 @cl_assert_equal_i(i32 6, i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_patch_line_stats(i64* %6, i64* %7, i64* %8, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @cl_assert_equal_i(i32 1, i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @cl_assert_equal_i(i32 5, i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @cl_assert_equal_i(i32 0, i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_patch_free(i32* %49)
  %51 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opts, i32 0, i32 0), align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opts, i32 0, i32 0), align 4
  %54 = load i32*, i32** %2, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @git_patch_from_blob_and_buffer(i32** %1, i32* %54, i32* null, i8* %55, i32 %57, i32* null, %struct.TYPE_4__* @opts)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  %65 = load i32*, i32** %1, align 8
  %66 = call %struct.TYPE_5__* @git_patch_get_delta(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_i(i32 %64, i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i64 @git_patch_num_hunks(i32* %70)
  %72 = trunc i64 %71 to i32
  %73 = call i32 @cl_assert_equal_i(i32 0, i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @git_patch_free(i32* %74)
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @git_patch_from_blob_and_buffer(i32** %1, i32* null, i32* null, i8* %76, i32 %78, i32* null, %struct.TYPE_4__* @opts)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = icmp ne i32* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 @cl_assert(i32 %83)
  %85 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %86 = load i32*, i32** %1, align 8
  %87 = call %struct.TYPE_5__* @git_patch_get_delta(i32* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cl_assert_equal_i(i32 %85, i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i64 @git_patch_num_hunks(i32* %91)
  %93 = trunc i64 %92 to i32
  %94 = call i32 @cl_assert_equal_i(i32 1, i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_patch_num_lines_in_hunk(i32* %95, i32 0)
  %97 = call i32 @cl_assert_equal_i(i32 1, i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @git_patch_free(i32* %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @git_patch_from_blob_and_buffer(i32** %1, i32* %100, i32* null, i8* null, i32 0, i32* null, %struct.TYPE_4__* @opts)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = icmp ne i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @cl_assert(i32 %105)
  %107 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %108 = load i32*, i32** %1, align 8
  %109 = call %struct.TYPE_5__* @git_patch_get_delta(i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cl_assert_equal_i(i32 %107, i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i64 @git_patch_num_hunks(i32* %113)
  %115 = trunc i64 %114 to i32
  %116 = call i32 @cl_assert_equal_i(i32 1, i32 %115)
  %117 = load i32*, i32** %1, align 8
  %118 = call i32 @git_patch_num_lines_in_hunk(i32* %117, i32 0)
  %119 = call i32 @cl_assert_equal_i(i32 1, i32 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @git_patch_free(i32* %120)
  %122 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opts, i32 0, i32 0), align 4
  %124 = xor i32 %123, %122
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opts, i32 0, i32 0), align 4
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @git_patch_from_blob_and_buffer(i32** %1, i32* %125, i32* null, i8* null, i32 0, i32* null, %struct.TYPE_4__* @opts)
  %127 = call i32 @cl_git_pass(i32 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = icmp ne i32* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @cl_assert(i32 %130)
  %132 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %133 = load i32*, i32** %1, align 8
  %134 = call %struct.TYPE_5__* @git_patch_get_delta(i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cl_assert_equal_i(i32 %132, i32 %136)
  %138 = load i32*, i32** %1, align 8
  %139 = call i64 @git_patch_num_hunks(i32* %138)
  %140 = trunc i64 %139 to i32
  %141 = call i32 @cl_assert_equal_i(i32 1, i32 %140)
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @git_patch_num_lines_in_hunk(i32* %142, i32 0)
  %144 = call i32 @cl_assert_equal_i(i32 1, i32 %143)
  %145 = load i32*, i32** %1, align 8
  %146 = call i32 @git_patch_free(i32* %145)
  %147 = load i32*, i32** %2, align 8
  %148 = call i32 @git_blob_free(i32* %147)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstrn(i32*, i8*, i32) #1

declare dso_local i32 @git_blob_lookup_prefix(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_patch_from_blob_and_buffer(i32**, i32*, i32*, i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_5__* @git_patch_get_delta(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_num_lines_in_hunk(i32*, i32) #1

declare dso_local i32 @git_patch_line_stats(i64*, i64*, i64*, i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
