; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__larger_hunks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_test_diff_tree__larger_hunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"d70d245ed97ed2aa596dd1af6536e4bfdb047b69\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"7a9e0b02e63179929fed24f0a3e0f19168114d10\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@g_repo = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@diff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_tree__larger_hunks() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %12 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %12, i32* @g_repo, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i8* @resolve_commit_oid_to_tree(i32 %13, i8* %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** @a, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @cl_assert(i32* %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @resolve_commit_oid_to_tree(i32 %22, i8* %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** @b, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @cl_assert(i32* %29)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 1), align 8
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32*, i32** @a, align 8
  %33 = load i32*, i32** @b, align 8
  %34 = call i32 @git_diff_tree_to_tree(i32* @diff, i32 %31, i32* %32, i32* %33, %struct.TYPE_3__* @opts)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @diff, align 4
  %37 = call i64 @git_diff_num_deltas(i32 %36)
  store i64 %37, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %91, %0
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %38
  %43 = load i32, i32* @diff, align 4
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @git_patch_from_diff(i32** %9, i32 %43, i64 %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @cl_assert(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @git_patch_num_hunks(i32* %49)
  store i64 %50, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %81, %42
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @git_patch_get_hunk(i32** %10, i64* %8, i32* %56, i64 %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %72, %55
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @git_patch_get_line_in_hunk(i32** %11, i32* %65, i64 %66, i64 %67)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @cl_assert(i32* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %60

75:                                               ; preds = %60
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @git_patch_get_line_in_hunk(i32** %11, i32* %76, i64 %77, i64 %78)
  %80 = call i32 @cl_git_fail(i32 %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %51

84:                                               ; preds = %51
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @git_patch_get_hunk(i32** %10, i64* %8, i32* %85, i64 %86)
  %88 = call i32 @cl_git_fail(i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @git_patch_free(i32* %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %3, align 8
  br label %38

94:                                               ; preds = %38
  %95 = load i32, i32* @diff, align 4
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @git_patch_from_diff(i32** %9, i32 %95, i64 %96)
  %98 = call i32 @cl_git_fail(i32 %97)
  %99 = load i64, i64* %4, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @cl_assert_equal_i(i32 2, i32 %100)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i8* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_tree(i32*, i32, i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @git_diff_num_deltas(i32) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32, i64) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_get_hunk(i32**, i64*, i32*, i64) #1

declare dso_local i32 @git_patch_get_line_in_hunk(i32**, i32*, i64, i64) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
