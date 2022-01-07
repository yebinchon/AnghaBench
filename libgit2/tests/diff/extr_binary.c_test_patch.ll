; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@git_diff_print_callback__to_buf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_patch(i8* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %19 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @git_oid_fromstr(i32* %9, i8* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_commit_lookup(i32** %12, i32 %23, i32* %9)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @git_commit_tree(i32** %14, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @git_oid_fromstr(i32* %10, i8* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @repo, align 4
  %36 = call i32 @git_commit_lookup(i32** %13, i32 %35, i32* %10)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @git_commit_tree(i32** %15, i32* %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  br label %51

41:                                               ; preds = %4
  %42 = load i32, i32* @repo, align 4
  %43 = call i32 @git_repository_index(i32** %11, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @git_index_write_tree(i32* %10, i32* %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = call i32 @git_tree_lookup(i32** %15, i32 %48, i32* %10)
  %50 = call i32 @cl_git_pass(i32 %49)
  br label %51

51:                                               ; preds = %41, %31
  %52 = load i32, i32* @repo, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @git_diff_tree_to_tree(i32** %16, i32 %52, i32* %53, i32* %54, i32* %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @git_patch_from_diff(i32** %17, i32* %58, i32 0)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @git_patch_to_buf(%struct.TYPE_7__* %18, i32* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_s(i8* %64, i32 %66)
  %68 = call i32 @git_buf_clear(%struct.TYPE_7__* %18)
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %71 = load i32, i32* @git_diff_print_callback__to_buf, align 4
  %72 = call i32 @git_diff_print(i32* %69, i32 %70, i32 %71, %struct.TYPE_7__* %18)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cl_assert_equal_s(i8* %74, i32 %76)
  %78 = call i32 @git_buf_dispose(%struct.TYPE_7__* %18)
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @git_patch_free(i32* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @git_diff_free(i32* %81)
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @git_tree_free(i32* %83)
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @git_tree_free(i32* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @git_commit_free(i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @git_commit_free(i32* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @git_index_free(i32* %91)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_write_tree(i32*, i32*) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_7__*) #2

declare dso_local i32 @git_diff_print(i32*, i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
