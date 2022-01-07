; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_inmemory.c_test_rebase_inmemory__not_in_rebase_state.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_inmemory.c_test_rebase_inmemory__not_in_rebase_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/heads/beef\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@GIT_REPOSITORY_STATE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_inmemory__not_in_rebase_state() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_reference_lookup(i32** %2, i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_reference_lookup(i32** %3, i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %15, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %19, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @git_rebase_init(i32** %1, i32 %23, i32* %24, i32* %25, i32* null, %struct.TYPE_4__* %6)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @GIT_REPOSITORY_STATE_NONE, align 4
  %29 = load i32, i32* @repo, align 4
  %30 = call i32 @git_repository_state(i32 %29)
  %31 = call i32 @cl_assert_equal_i(i32 %28, i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_rebase_free(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_annotated_commit_free(i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @git_annotated_commit_free(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_reference_free(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @git_reference_free(i32* %40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_repository_state(i32) #2

declare dso_local i32 @git_rebase_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
