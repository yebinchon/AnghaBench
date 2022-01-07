; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_assert_patch_matches_blobs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_assert_patch_matches_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32)* @assert_patch_matches_blobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_patch_matches_blobs(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %10, align 8
  %28 = call %struct.TYPE_7__* @git_patch_get_delta(i32* %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %19, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cl_assert_equal_i(i32 %33, i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @git_blob_id(i32* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = call i32 @cl_assert_equal_oid(i32 %39, i32* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @git_blob_rawsize(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_assert_equal_sz(i32 %45, i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @git_blob_id(i32* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = call i32 @cl_assert_equal_oid(i32 %52, i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @git_blob_rawsize(i32* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_sz(i32 %58, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @git_patch_num_hunks(i32* %65)
  %67 = trunc i64 %66 to i32
  %68 = call i32 @cl_assert_equal_i(i32 %64, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %9
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @git_patch_num_lines_in_hunk(i32* %73, i32 0)
  %75 = call i32 @cl_assert_equal_i(i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %71, %9
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @git_patch_num_lines_in_hunk(i32* %81, i32 1)
  %83 = call i32 @cl_assert_equal_i(i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @git_patch_line_stats(i64* %20, i64* %21, i64* %22, i32* %85)
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = load i32, i32* %16, align 4
  %89 = load i64, i64* %20, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @cl_assert_equal_i(i32 %88, i32 %90)
  %92 = load i32, i32* %17, align 4
  %93 = load i64, i64* %21, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @cl_assert_equal_i(i32 %92, i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = load i64, i64* %22, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @cl_assert_equal_i(i32 %96, i32 %98)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_7__* @git_patch_get_delta(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32*) #1

declare dso_local i32 @git_blob_id(i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_blob_rawsize(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_num_lines_in_hunk(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_patch_line_stats(i64*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
