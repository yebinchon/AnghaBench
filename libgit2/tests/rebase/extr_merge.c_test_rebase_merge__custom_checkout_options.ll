; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__custom_checkout_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__custom_checkout_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@rebase_checkout_progress_cb = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__custom_checkout_options() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @rebase_checkout_progress_cb, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32* %9, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %16 = call i32 @memcpy(i32* %15, %struct.TYPE_8__* %7, i32 16)
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_reference_lookup(i32** %2, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = call i32 @git_reference_lookup(i32** %3, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %23, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @repo, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %27, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* @repo, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @git_rebase_init(i32** %1, i32 %31, i32* %32, i32* %33, i32* null, %struct.TYPE_7__* %6)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @cl_assert_equal_i(i32 1, i32 %36)
  store i32 0, i32* %9, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_rebase_next(i32** %8, i32* %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @cl_assert_equal_i(i32 1, i32 %41)
  store i32 0, i32* %9, align 4
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_rebase_abort(i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @cl_assert_equal_i(i32 1, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @git_annotated_commit_free(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @git_annotated_commit_free(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @git_reference_free(i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_reference_free(i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_rebase_free(i32* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_rebase_next(i32**, i32*) #2

declare dso_local i32 @git_rebase_abort(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_rebase_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
