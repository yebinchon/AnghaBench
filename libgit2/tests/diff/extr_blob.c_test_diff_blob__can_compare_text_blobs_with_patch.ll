; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_text_blobs_with_patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__can_compare_text_blobs_with_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"45141a79\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"4d713dc4\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"c96bbb2c2557a832\00", align 1
@opts = common dso_local global i32 0, align 4
@d = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_blob__can_compare_text_blobs_with_patch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = call i32 @git_oid_fromstrn(i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_blob_lookup_prefix(i32** %1, i32 %10, i32* %4, i32 8)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_oid_fromstrn(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_blob_lookup_prefix(i32** %2, i32 %15, i32* %5, i32 8)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_oid_fromstrn(i32* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_blob_lookup_prefix(i32** %3, i32 %20, i32* %6, i32 16)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_patch_from_blobs(i32** %7, i32* %23, i32* null, i32* %24, i32* null, i32* @opts)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @assert_patch_matches_blobs(i32* %27, i32* %28, i32* %29, i32 1, i32 6, i32 0, i32 1, i32 5, i32 0)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_patch_free(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_patch_from_blobs(i32** %7, i32* %33, i32* null, i32* %34, i32* null, i32* @opts)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @assert_patch_matches_blobs(i32* %37, i32* %38, i32* %39, i32 1, i32 15, i32 0, i32 3, i32 9, i32 3)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @git_patch_free(i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_patch_from_blobs(i32** %7, i32* %43, i32* null, i32* %44, i32* null, i32* @opts)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @assert_patch_matches_blobs(i32* %47, i32* %48, i32* %49, i32 1, i32 13, i32 0, i32 0, i32 12, i32 1)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @git_patch_free(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** @d, align 8
  %55 = call i32 @git_patch_from_blobs(i32** %7, i32* %53, i32* null, i32* %54, i32* null, i32* @opts)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** @d, align 8
  %60 = call i32 @assert_patch_matches_blobs(i32* %57, i32* %58, i32* %59, i32 2, i32 5, i32 9, i32 4, i32 6, i32 4)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @git_patch_free(i32* %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_blob_free(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_blob_free(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @git_blob_free(i32* %67)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstrn(i32*, i8*, i32) #1

declare dso_local i32 @git_blob_lookup_prefix(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_patch_from_blobs(i32**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert_patch_matches_blobs(i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
