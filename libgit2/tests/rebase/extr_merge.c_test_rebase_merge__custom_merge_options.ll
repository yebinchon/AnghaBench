; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__custom_merge_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__custom_merge_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GIT_MERGE_FAIL_ON_CONFLICT = common dso_local global i32 0, align 4
@GIT_MERGE_SKIP_REUC = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"refs/heads/asparagus\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@GIT_EMERGECONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__custom_merge_options() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32*, align 8
  %8 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @GIT_MERGE_FAIL_ON_CONFLICT, align 4
  %10 = load i32, i32* @GIT_MERGE_SKIP_REUC, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_reference_lookup(i32** %2, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_reference_lookup(i32** %3, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %22, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %26, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @repo, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @git_rebase_init(i32** %1, i32 %30, i32* %31, i32* %32, i32* null, %struct.TYPE_6__* %6)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @GIT_EMERGECONFLICT, align 4
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_rebase_next(i32** %7, i32* %36)
  %38 = call i32 @cl_git_fail_with(i32 %35, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @git_annotated_commit_free(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @git_annotated_commit_free(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_rebase_free(i32* %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_rebase_next(i32**, i32*) #2

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
