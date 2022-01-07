; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_assert_conflict.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_assert_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@g_object = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"potential_conflict\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@g_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"./testrepo\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_ECONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_conflict(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_repository_index(i32** %9, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @git_revparse_single(i32** @g_object, i32 %18, i8* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32*, i32** @g_object, align 8
  %24 = call i32 @git_branch_create(i32** %11, i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %23, i32 0)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @git_reference_name(i32* %27)
  %29 = call i32 @git_reference_symbolic_create(i32** %12, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 1, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @git_reference_free(i32* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @git_reference_free(i32* %33)
  %35 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_opts, i32 0, i32 0), align 4
  %36 = load i32, i32* @g_repo, align 4
  %37 = load i32*, i32** @g_object, align 8
  %38 = call i32 @git_checkout_tree(i32 %36, i32* %37, %struct.TYPE_3__* @g_opts)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** @g_object, align 8
  %41 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %42 = call i32 @git_object_peel(i32** %10, i32* %40, i32 %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @git_index_read_tree(i32* %44, i32* %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @git_index_write(i32* %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @git_object_free(i32* %51)
  %53 = load i32*, i32** @g_object, align 8
  %54 = call i32 @git_object_free(i32* %53)
  store i32* null, i32** @g_object, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @git_buf_joinpath(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = call i32 @git_buf_cstr(i32* %13)
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @cl_git_mkfile(i32 %58, i8* %59)
  %61 = call i32 @git_buf_dispose(i32* %13)
  %62 = load i32, i32* @g_repo, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @git_revparse_single(i32** @g_object, i32 %62, i8* %63)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_opts, i32 0, i32 0), align 4
  %67 = load i32, i32* @GIT_ECONFLICT, align 4
  %68 = load i32, i32* @g_repo, align 4
  %69 = load i32*, i32** @g_object, align 8
  %70 = call i32 @git_checkout_tree(i32 %68, i32* %69, %struct.TYPE_3__* @g_opts)
  %71 = call i32 @cl_assert_equal_i(i32 %67, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @git_index_add_bypath(i32* %72, i8* %73)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @git_index_write(i32* %76)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @git_index_free(i32* %79)
  %81 = load i32, i32* @GIT_ECONFLICT, align 4
  %82 = load i32, i32* @g_repo, align 4
  %83 = load i32*, i32** @g_object, align 8
  %84 = call i32 @git_checkout_tree(i32 %82, i32* %83, %struct.TYPE_3__* @g_opts)
  %85 = call i32 @cl_assert_equal_i(i32 %81, i32 %84)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @git_branch_create(i32**, i32, i8*, i32*, i32) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_buf_joinpath(i32*, i8*, i8*) #1

declare dso_local i32 @cl_git_mkfile(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
